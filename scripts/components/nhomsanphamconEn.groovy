import org.craftercms.blueprints.headless.GroupProductEnSearchHelper

def searchHelper = new GroupProductEnSearchHelper(elasticsearch, urlTransformationService)
def products = searchHelper.searchProducts(null,0)

templateModel.products = products