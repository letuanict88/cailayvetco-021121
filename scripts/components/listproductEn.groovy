import org.craftercms.blueprints.headless.GroupProductEnSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

def productGroup = contentModel.productgrouplevel1_s
def productChildGroup = contentModel.productgrouplevel2_s


def searchHelper = new GroupProductEnSearchHelper(elasticsearch, urlTransformationService)
def products = searchHelper.searchProducts(productGroup, productChildGroup, 0)

def categories = new TaxonomySearchHelper("groupproduct", elasticsearch, siteItemService)
						.getItems()
def childCategories = new TaxonomySearchHelper("groupchildproduct", elasticsearch, siteItemService)
						.getItems()

print productGroup

print productChildGroup

print products

templateModel.products = products
templateModel.categories = categories
templateModel.childCategories = childCategories