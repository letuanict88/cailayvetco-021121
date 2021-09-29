import org.craftercms.blueprints.headless.SupportTechSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

def searchHelper = new SupportTechSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.technicalAssistance_o.item.key

def supportTech = searchHelper.searchSupportTech(category.text,0,3)


def categories = new TaxonomySearchHelper("list-of-diseases-type", elasticsearch, siteItemService)
						.getItems()
						
templateModel.categories = categories
templateModel.supportTech = supportTech