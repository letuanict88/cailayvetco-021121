package org.craftercms.blueprints.headless

import org.apache.commons.lang3.StringUtils
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder

class DocumentSearchHelper {
    static final String DOC_CONTENT_TYPE_QUERY = "content-type:\"/page/document\""
    static final int DEFAULT_START = 0
    static final int DEFAULT_ROWS = 10000
    
    def elasticsearch
    UrlTransformationService urlTransformationService
    
     DocumentSearchHelper(elasticsearch, UrlTransformationService urlTransformationService) {
        this.elasticsearch = elasticsearch
        this.urlTransformationService = urlTransformationService
    }
    
    def searchdocs(start = DEFAULT_START, rows = DEFAULT_ROWS, additionalCriteria = null) {
        def q = "${DOC_CONTENT_TYPE_QUERY}"
        
        if (additionalCriteria) {
          q = "${q} AND ${additionalCriteria}"
        }
        
        def builder = new SearchSourceBuilder()
            .query(QueryBuilders.queryStringQuery(q))
            .from(start)
            .size(rows)
            .sort(new FieldSortBuilder("createddate_dt").order(SortOrder.DESC))
        
        def result = elasticsearch.search(new SearchRequest().source(builder))
        
        if (result) {
            return processDocListingResults(result)
        } else {
            result [];
        }
    }
    
    private def processDocListingResults(result) {
        def docs = []
        
        def documents = result.hits.hits*.getSourceAsMap()
        
        if (documents) {
            documents.each {doc ->
                def item = [:]
                    item.title = doc.title_s
                    item.url = urlTransformationService.transform("storeUrlToRenderUrl", doc.localId)
                    item.avatar = doc.avatar_s
                docs << item
            }
        }
        
        return docs
    }
    
    private def getFieldQueryWithMultipleValues(field, values) {
        if (values.class.isArray()) {
          values = values as List
        }
    
        if (values instanceof Iterable) {
          values = "(" + StringUtils.join((Iterable)values, " OR ") + ")"
        } else {
          values = "\"${values}\""
        }
    
        return "${field}:${values}"
    }
}