import org.craftercms.blueprints.headless.DocumentSearchHelper
import org.craftercms.blueprints.headless.DocumentPDFSearchHelper
import org.craftercms.blueprints.headless.DocumentDOCXSearchHelper

def searchHelper = new DocumentSearchHelper(elasticsearch, urlTransformationService)
def searchPDFHelper = new DocumentPDFSearchHelper(elasticsearch, urlTransformationService)
def searchDOCXHelper = new DocumentDOCXSearchHelper(elasticsearch, urlTransformationService)

def docsRs = searchHelper.searchdocs(0)
def docsPDF = searchPDFHelper.searchdocs(true,0,100)
def docsDOCX = searchDOCXHelper.searchdocs(true,0)

def docs = docsRs.findAll { it.url.indexOf('/en') < 0 }

templateModel.docs = docs
templateModel.docsPDF = docsPDF
templateModel.docsDOCX = docsDOCX
