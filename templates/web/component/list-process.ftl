<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
	<div class="container pl-lg-0 pl-md-0">
	    <div id ="panigation-process">
            <#if (processes)??>
            	<#list processes as process>
                    <div class="process-item">
                        <a class="violet-color font-weight-bold font-title" style="font-size:20px;" href="${process.url}" class="d-block">${process.title}</a>
                        <p style="font-size: 20px; margin-top:5px; font-title" class="dim-grey-color">(${process.time?datetime?string("dd/MM/yyyy")})</p>
                    </div>
                </#list>
            </#if>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination pagi-process justify-content-center">
            <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>
<@studio.toolSupport />