import org.craftercms.blueprints.headless.NewsEnSearchHelper
def searchHelper = new NewsEnSearchHelper(elasticsearch, urlTransformationService)
def news = searchHelper.searchNewsEn(contentModel.newscategory_s, 0)

def firstNew = news[0]
def lastNew = news[news.size()-1]


templateModel.firstNew = firstNew
templateModel.lastNew = lastNew