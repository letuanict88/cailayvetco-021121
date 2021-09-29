import org.craftercms.blueprints.headless.GroupProductSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

def productGroup = contentModel.productgrouplevel1_s
def productChildGroup = contentModel.productgrouplevel2_s


def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def products = searchHelper.searchProducts(productGroup, productChildGroup, 0)

def categories = new TaxonomySearchHelper("nhom-san-pham", elasticsearch, siteItemService)
						.getItems()
def childCategories = new TaxonomySearchHelper("nhom-san-pham-con", elasticsearch, siteItemService)
						.getItems()

print productGroup

print productChildGroup

print products

templateModel.products = products
templateModel.categories = categories
templateModel.childCategories = childCategories