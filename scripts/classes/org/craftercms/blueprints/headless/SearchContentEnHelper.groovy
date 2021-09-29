package org.craftercms.blueprints.headless

import org.apache.commons.lang3.StringUtils
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder

class SearchContentHelper {
    static final String PRODUCT_CONTENT_TYPE_QUERY = "content-type:\"/page/enproductdetail\""
    static final String[] PRODUCTS_HIGHLIGHT_FIELDS = ["productName_s", "productDescription_html"]
    static final int DEFAULT_START = 0
    static final int DEFAULT_ROWS = 10000
    
    def elasticsearch
    UrlTransformationService urlTransformationService
    
    SearchContentHelper(elasticsearch, UrlTransformationService urlTransformationService) {
        this.elasticsearch = elasticsearch
        this.urlTransformationService = urlTransformationService
    }
    
    def searchProducts(String userTerm ,start = DEFAULT_START, rows = DEFAULT_ROWS, additionalCriteria = null) {
        def q = "${PRODUCT_CONTENT_TYPE_QUERY}"
        
        if (userTerm) {
            if(!userTerm.contains(" ")) {
                userTerm = "${userTerm}~1 OR *${userTerm}*"
            }
            
            def userTermQuery = "(productName_s:(${userTerm}) OR productDescription_html:(${userTerm}))"
            q = "${q} AND ${userTermQuery}"
        }
        
        def highlighter = SearchSourceBuilder.highlight()
        PRODUCTS_HIGHLIGHT_FIELDS.each{ field -> highlighter.field(field) }
        
        def builder = new SearchSourceBuilder()
          .query(QueryBuilders.queryStringQuery(q))
          .from(start)
          .size(rows)
          .highlighter(highlighter)
        
        def result = elasticsearch.search(new SearchRequest().source(builder))
        
        if (result) {
          return processUserSearchProductResults(result)
        } else {
          return []
        }
    }
    
    def processUserSearchProductResults(result) {
        def products = []
        def hits = result.hits.hits
        
        if (hits) {
            hits.each { hit -> 
                def doc = hit.getSourceAsMap()
                
                def product = [:]
                    product.title = doc.productName_s
                    product.summary = doc.productDescription_html
                    product.url = urlTransformationService.transform("storeUrlToRenderUrl", doc.localId)
                    product.avatar = doc.productImage_s
                    
                if (hit.highlightFields) {
                    def productHighlights = hit.highlightFields.values()*.getFragments().flatten()*.string()
                    
                    if (productHighlights) {
                        def highlightValues = []
                        
                        productHighlights.each { value -> 
                            highlightValues = value
                        }
                        
                        product.highlight = StringUtils.join(highlightValues, "... ")
                        product.highlight = StringUtils.strip(product.highlight)
                    }
                }
                
                products << product
            }
        }
      return products 
    }
}