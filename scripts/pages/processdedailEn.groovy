import org.craftercms.blueprints.headless.ProcessEnSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

def searchHelper = new ProcessEnSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.processType_o.item.key

def processes = searchHelper.searchProcess(category.text,0)
def categories = new TaxonomySearchHelper("process-en", elasticsearch, siteItemService)
						.getItems()

templateModel.processes = processes
templateModel.categories = categories