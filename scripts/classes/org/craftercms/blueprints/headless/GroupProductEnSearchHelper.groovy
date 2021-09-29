package org.craftercms.blueprints.headless

import org.apache.commons.lang3.StringUtils
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder

class GroupProductEnSearchHelper {
    static final String PRODUCT_CONTENT_TYPE_QUERY = "content-type:\"/page/enproductdetail\""
    static final int DEFAULT_START = 0
    static final int DEFAULT_ROWS = 10000
    
    def elasticsearch
    UrlTransformationService urlTransformationService
    
     GroupProductEnSearchHelper(elasticsearch, UrlTransformationService urlTransformationService) {
        this.elasticsearch = elasticsearch
        this.urlTransformationService = urlTransformationService
    }
    
    def searchProducts(groupProduct, childProduct ,start = DEFAULT_START, rows = DEFAULT_ROWS, additionalCriteria = null) {
        def q = "${PRODUCT_CONTENT_TYPE_QUERY}"
        
        if (groupProduct) {
            def productGroupQuery = getFieldQueryWithMultipleValues("productgrouplv1_o.item.key", groupProduct)
            q = "${q} AND ${productGroupQuery}"
        }
        
        if (childProduct) {
            def productGroupChildQuery = getFieldQueryWithMultipleValues("productgrouplv2_o.item.key", childProduct)
            q = "${q} AND ${productGroupChildQuery}"
        }
        
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
            return processProductListingResults(result)
        } else {
            result [];
        }
    }
    
    def searchHotProducts(featured, start = DEFAULT_START, rows = DEFAULT_ROWS, additionalCriteria = null) {
        def q = "${PRODUCT_CONTENT_TYPE_QUERY}"
        if (featured) {
          q = "${q} AND isHot_b:true"
        }
    
        def builder = new SearchSourceBuilder()
            .query(QueryBuilders.queryStringQuery(q))
            .from(start)
            .size(rows)
            .sort(new FieldSortBuilder("createddate_dt").order(SortOrder.DESC))
        
        def result = elasticsearch.search(new SearchRequest().source(builder))
        
        if (result) {
            return processProductListingResults(result)
        } else {
            result [];
        }
    }
    
    private def processProductListingResults(result) {
        def products = []
        
        def documents = result.hits.hits*.getSourceAsMap()
        
        if (documents) {
            documents.each {doc ->
                def product = [:]
                    product.title = doc.productName_s
                    product.summary = doc.productDescription_html
                    product.url = urlTransformationService.transform("storeUrlToRenderUrl", doc.localId)
                    product.avatar = doc.productImage_s
                products << product
            }
        }
        
        return products
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