import org.craftercms.blueprints.headless.GroupProductSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

def productGroup = contentModel.productgrouplv1_o.item.key
def productChildGroup = contentModel.productgrouplv2_o.item.key

def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def relatedProducts = searchHelper.searchProducts(productGroup.text,productChildGroup.text, 0)
def categories = new TaxonomySearchHelper("nhom-san-pham", elasticsearch, siteItemService)
						.getItems()
def childCategories = new TaxonomySearchHelper("nhom-san-pham-con", elasticsearch, siteItemService)
						.getItems()

templateModel.productOther = relatedProducts
templateModel.categories = categories
templateModel.childCategories = childCategories