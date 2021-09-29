<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="lst-sick mb-5">
	    <a href="${contentModel.listURL_s}"><img src="${contentModel.avatar_s}" class="img-full"/></a>
	    <a href="${contentModel.listURL_s}"><p class="violet-color font-weight-bold text-center mt-3 text-uppercase child-title__name" style="font-size: 32px;">${contentModel.title_s}</p></a>
	    <#--<div class="paginate" style="margin-bottom: 70px;">
	        <div class="list-tech-sp-vn" style="line-height: 1.5; margin-bottom:50px;">
        	    <#if (processes)??>
                    <#list processes as item>
                    	<div class="item-pr font-weight-bold"><a style="font-size: 18px;color: #636466;" class="d-block pn-pr-vn" href="${item.url}">${item.title}</a></div>
                    </#list>
                </#if>
            </div>
        </div>-->
	</div>
<@studio.toolSupport />