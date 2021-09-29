<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section>
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
    <div class="container">
        <section class="introduce" style="max-width:1145px; width: 100%;">
            <div class="introduce__item">
                <a class="introduce__item-link" href="${contentModel.urlintro_s}"></a>
                <p class="introduce__item-text" style=" font-size:18px;"><a class="introduce__item-text--purple violet-color text--uppercase font-title font-bold" href="${contentModel.urlintro_s}">${contentModel.titleintro_s}</a></p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_yellow.png" alt="Introduce background">
                <img class="introduce__item-img full-size" src="${contentModel.introduction_s}" alt="Introduce image">
            </div>

            <div class="introduce__item">
                <a class="introduce__item-link" href="${contentModel.urlhistory_s}"></a>
                <p class="introduce__item-text" style=" font-size:18px;"><a class="introduce__item-text--yellow text--uppercase font-title font-bold" href="${contentModel.urlhistory_s}"  style="color:#ffcb07">${contentModel.titlehistory_s}</a></p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_purple.png" alt="Introduce background">
                <img class="introduce__item-img full-size" src="${contentModel.history_s}" alt="Introduce image">
            </div>

            <div class="introduce__item">
                <a class="introduce__item-link" href="${contentModel.urlvision_s}"></a>
                <p class="introduce__item-text" style=" font-size:18px;"><a class="introduce__item-text--purple violet-color text--uppercase font-title font-bold" href="${contentModel.urlvision_s}">${contentModel.titlevision_s}</a></p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_yellow.png" alt="Introduce background">
                <img class="introduce__item-img full-size" src="${contentModel.vision_s}" alt="Introduce image">
            </div>

            <div class="introduce__item">
                <a class="introduce__item-link" href="${contentModel.urlaward_s}"></a>
                <p class="introduce__item-text" style=" font-size:18px;"><a class="introduce__item-text--yellow text--uppercase font-title font-bold" href="${contentModel.urlaward_s}" style="color:#ffcb07">${contentModel.titleaward_s}</a></p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_purple.png" alt="Introduce background">
                <img class="introduce__item-img full-size" src="${contentModel.award_s}" alt="Introduce image">
            </div>
        </section>
    </div>
</div>
</section>

<@studio.toolSupport />