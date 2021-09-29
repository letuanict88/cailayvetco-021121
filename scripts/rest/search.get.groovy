import org.craftercms.blueprints.headless.SearchContentHelper

println "This is param :"
println params.q
def searchHelper = new SearchContentHelper(elasticsearch, urlTransformationService)

def products = searchHelper.searchProducts(params.q)
println products
products.each{ product ->
 product.highlight = product.highlight.replaceAll("\\<.*?\\>", "");
 
 if (product.highlight.length() > 100) {
     product.highlight = product.highlight.substring(0,100)
     product.highlight += "..."
 }
}

return [products]