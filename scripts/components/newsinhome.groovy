import org.craftercms.blueprints.headless.NewsSearchHelper
def searchHelper = new NewsSearchHelper(elasticsearch, urlTransformationService)
def news = searchHelper.searchNews(contentModel.newscategory_s, 0)

def firstNew = news[0]
def lastNew = news[news.size()-1]


templateModel.firstNew = firstNew
templateModel.lastNew = lastNew