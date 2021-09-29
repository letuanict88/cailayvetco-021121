import org.craftercms.blueprints.headless.SupportTechEnSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

def searchHelper = new SupportTechEnSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.technicalAssistance_o.item.key

def supportTech = searchHelper.searchSupportTech(category.text,0,3)


def categories = new TaxonomySearchHelper("disease-treatment", elasticsearch, siteItemService)
						.getItems()
						
templateModel.categories = categories
templateModel.supportTech = supportTech