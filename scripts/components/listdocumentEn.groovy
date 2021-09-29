import org.craftercms.blueprints.headless.DocumentEnSearchHelper
import org.craftercms.blueprints.headless.DocumentEnPDFSearchHelper

def searchHelper = new DocumentEnSearchHelper(elasticsearch, urlTransformationService)
def searchPDFHelper = new DocumentEnPDFSearchHelper(elasticsearch, urlTransformationService)

def docs = searchHelper.searchdocs(0)
def docsPDF = searchPDFHelper.searchdocs(true,0)

templateModel.docs = docs
templateModel.docsPDF = docsPDF
