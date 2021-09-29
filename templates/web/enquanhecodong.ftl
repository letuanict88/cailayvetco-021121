<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">Investor Note</h1>
        </div>
    </div>
    <div class="container">
	    <div id ="panigation-relation3">
            <#if (posts)??>
            	<#list posts as aPost>
            	    <#if aPost.category = "announcement">
                    <div class="relation3">
                        <a class="violet-color font-weight-bold" style="font-size: 20px" href="${aPost.url}" class="d-block">${aPost.title}</a>
                        <p class="dim-grey-color" style="line-height: 1.5;  font-size: 16px;  font-weight: 400;">(${aPost.time?datetime?string("dd/MM/yyyy")})</p>
                    </div>
                    </#if>
                </#list>
            </#if>
        </div>
        <nav aria-label="Page navigation example" style="margin-bottom: 50px;">
          <ul class="pagination pagi3 justify-content-center">
            <li id="previous-page3" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>
    
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">Shareholder meeting</h1>
        </div>
    </div>
    <div class="container">
	    <div id ="panigation-relation4">
            <#if (posts)??>
            	<#list posts as aPost>
            	    <#if aPost.category = "shareholders">
                    <div class="relation4">
                        <a class="violet-color font-weight-bold" style="font-size: 22px" href="${aPost.url}" class="d-block">${aPost.title}</a>
                        <p class="dim-grey-color" style="line-height: 1.5;  font-size: 16px;  font-weight: 400;">(${aPost.time?datetime?string("dd/MM/yyyy")})</p>
                    </div>
                    </#if>
                </#list>
            </#if>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination pagi4 justify-content-center">
            <li id="previous-page4" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>
 

</div>
<@studio.toolSupport />