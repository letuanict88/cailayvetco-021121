<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="section-title">
        <div class="section-title__content block">
            <span class="d-inline">
                <span class="section-title__content-text text--uppercase document-title">Thư viện tài liệu</span>
            </span>
        </div>
    </div>
	<div class="container">
	    <div class="row mb-5" id="panigation-doc">
	        <#if (docs)??>
                <#list docs as doc>
                	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 doc-item mb-4" style="position: relative;">
                	   <figure style="width: 100%; height: 256.757px;">
                          <a href="${doc.url}">
                            <img style="height: 100%;object-fit: cover;width: 100%;" src="${doc.avatar}"/>
                          </a>
                        </figure>
                        <div class="cap-content" style="background: #322372;left: 4%;bottom:0;position: absolute;width: 92%;">
                            <a  href="${doc.url}">
                                <h3 id="doc-${doc?index}" style="margin-bottom: 0 !important; padding: 12px;font-size:20px;" class="font-title video-name text-white text--uppercase" style="fon">${doc.title}</h3>
                            </a>
                        </div>
                	</div>
                </#list>
                <#list docsPDF as docPdf>
                	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 doc-item mb-4" style="position: relative;">
                	   <figure style="width: 100%; height: 256.757px;">
                          <a href="${docPdf.url}">
                            <img style="height: 100%;object-fit: cover;width: 100%;" src="${docPdf.avatar}"/>
                          </a>
                        </figure>
                        <div class="cap-content" style="background: #322372;left: 4%;bottom:0;position: absolute;width: 92%;">
                            <a  href="${docPdf.url}">
                                <h3 id="doc-${docPdf?index}" style="margin-bottom: 0 !important; padding: 12px;font-size:20px;" class="video-name text-white text--uppercase font-title" style="fon">${docPdf.title}</h3>
                            </a>
                        </div>
                	</div>
                </#list>
                <#list docsDOCX as docsDOCX>
                	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 doc-item mb-4" style="position: relative;">
                	   <input type="hidden" value="${docsDOCX.urldown}" id="down-${docsDOCX?index}"/> 
                	   <figure style="width: 100%; height: 256.757px;">
                          <a href="${docsDOCX.url}" class="url_docx" id="docx-${docsDOCX?index}">
                            <img style="height: 100%;object-fit: cover;width: 100%;" src="${docsDOCX.avatar}"/>
                          </a>
                        </figure>
                        <div class="cap-content" style="background: #322372;left: 4%;bottom:0;position: absolute;width: 92%;">
                            <a  href="${docsDOCX.url}" class="url_docx" id="docxx-${docsDOCX?index}">
                                <h3 id="doc-${docsDOCX?index}" style="margin-bottom: 0 !important; padding: 12px;font-size:20px;" class="video-name text-white text--uppercase font-title" style="fon">${docsDOCX.title}</h3>
                            </a>
                        </div>
                	</div>
                </#list>
            </#if>
	    </div>
	    <nav aria-label="Page navigation example" style="margin-top: 50px;">
            <ul class="pagination pagi justify-content-center">
                <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
            </ul>
        </nav>
	</div>
<@studio.toolSupport />