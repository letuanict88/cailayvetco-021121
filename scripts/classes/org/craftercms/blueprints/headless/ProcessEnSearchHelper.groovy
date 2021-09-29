package org.craftercms.blueprints.headless

import org.apache.commons.lang3.StringUtils
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder

class ProcessEnSearchHelper {
    static final String TECHSUPPORT_CONTENT_TYPE_QUERY = "content-type:\"/page/processdedailEn\""
    static final int DEFAULT_START = 0
    static final int DEFAULT_ROWS = 10000
    
    def elasticsearch
    UrlTransformationService urlTransformationService
    
     ProcessEnSearchHelper(elasticsearch, UrlTransformationService urlTransformationService) {
        this.elasticsearch = elasticsearch
        this.urlTransformationService = urlTransformationService
    }
    
    def searchProcess(category, start = DEFAULT_START, rows = DEFAULT_ROWS, additionalCriteria = null) {
        def q = "${TECHSUPPORT_CONTENT_TYPE_QUERY}"
        
        if (category) {
            def supportTechGroupQuery = getFieldQueryWithMultipleValues("processType_o.item.key", category)
            q = "${q} AND ${supportTechGroupQuery}"
        }
        
        if (additionalCriteria) {
          q = "${q} AND ${additionalCriteria}"
        }
        
        def builder = new SearchSourceBuilder()
            .query(QueryBuilders.queryStringQuery(q))
            .from(start)
            .size(rows)
            .sort(new FieldSortBuilder("createdDate_dt").order(SortOrder.DESC))
        
        def result = elasticsearch.search(new SearchRequest().source(builder))
        
        if (result) {
            return processProcessListingResults(result)
        } else {
            result [];
        }
    }
    
    private def processProcessListingResults(result) {
        def supportTechs = []
        
        def documents = result.hits.hits*.getSourceAsMap()
        
        if (documents) {
            documents.each {doc ->
                def supportTech = [:]
                    supportTech.title = doc.processName_s
                    supportTech.desc = doc.processContent_html
                    supportTech.time = doc.createdDate_dt
                    supportTech.url = urlTransformationService.transform("storeUrlToRenderUrl", doc.localId)
                supportTechs << supportTech
            }
        }
        
        return supportTechs
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