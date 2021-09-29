import org.craftercms.blueprints.headless.GroupProductEnSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

def productGroup = contentModel.productgrouplv1_o.item.key
def productChildGroup = contentModel.productgrouplv2_o.item.key

def searchHelper = new GroupProductEnSearchHelper(elasticsearch, urlTransformationService)
def relatedProducts = searchHelper.searchProducts(productGroup.text,productChildGroup.text, 0)
def categories = new TaxonomySearchHelper("groupproduct", elasticsearch, siteItemService)
						.getItems()
def childCategories = new TaxonomySearchHelper("groupchildproduct", elasticsearch, siteItemService)
						.getItems()

templateModel.productOther = relatedProducts
templateModel.categories = categories
templateModel.childCategories = childCategories