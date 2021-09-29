import org.craftercms.blueprints.headless.GroupProductEnSearchHelper

def searchHelper = new GroupProductEnSearchHelper(elasticsearch, urlTransformationService)
def products = searchHelper.searchHotProducts(true,0,10)
templateModel.products = products