<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section class="news">
            <div class="news__title section-title" id="newsTitle">
                <div class="news__title-container section-title__content block">
                    <h1 class="news__title-text section-title__content-text text--uppercase font-title" id="tinNoiBoTitle"><a class="text-white font-title" href="/en/news">Company news</a></h1>
                    <h1 class="news__title-text section-title__content-text text--uppercase font-title" id="tinNganhTitle"><a class="text-white font-title" href="/en/document-library">Agriculture News</a></h1>
                </div>
            </div>

            <div class="news__container block">
                <section class="news__block" id="tinNoiBo">
                    <div class="news__block-title" id="tinNoiBoTitle">
                        <h1 class="text--uppercase">Company news</h1>
                    </div>

            <div class="news__block-content">
                <div class="news__block-img">
                    <img class="full-image" src="${firstNew.image}" alt="News image">
                </div>

                <div class="news__block-text">
                    <h3 class="font-title" style="font-size: 23px; font-weight: bold; line-height: 1.5; margin-bottom: 20px;">${firstNew.title}</h3>
                    <div class="truncate-multi-line text--justify limit-text" style="font-size: 18px; line-height: 1.5; margin-bottom: 16px; color: #636466 ">
                        ${firstNew.content}
                    </div>

                    <a class="view-more flex" href="${firstNew.url}">
                        <span style="color: #322372;">See more</span>
                        <img src="/static-assets/images/icon_arrow_yellow.png" alt="Arrow icon">
                    </a>
                </div>
            </div>
        </section>

            <section class="news__block" id="tinNganh">
                    <div class="news__block-title" id="tinNganhTitle">
                        <h1 class="font-title text--uppercase">Agriculture News</h1>
                    </div>

            <div class="news__block-content">
               <div class="news__block-img" style="position: relative;">
                   <figure style="width: 100%; height: 355px;">
                          <a data-fancybox="" data-small-btn="true" href="${contentModel.videoURL_s}">
                            <span class="play-icon"><i class="fa fa-play text-white"></i></span>
                          </a>
                          <a data-fancybox data-small-btn="true" href="${contentModel.videoURL_s}">
                            <img style="height: 100%;object-fit: cover;width: 100%;" src="${contentModel.videoBanner_s}">
                          </a>
                            </figure>
                        <a data-fancybox data-small-btn="true" href="${contentModel.videoURL_s}">
                            <h3 id="doc-0" style="margin-bottom: 0 !important;padding: 12px;font-size:20px;background-color: #322372;" class="video-name text-white text--uppercase font-title">${contentModel.titleBanner_s}</h3>
                        </a>
                </div>
                <div class="row" style="margin-top: 48px;">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <figure style="margin-bottom: 10px;">
                             <img  style="width:100%; height:140px; margin-bottom:16px;" src="${contentModel.photoAvatar_s}" alt="News image">
                             <a class="font-title text--uppercase font-bold" href="/thu-vien/thu-vien-anh" style="color: #322372;font-size: 16.8px;">image gallery</a>                 
                        </figure>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <figure style="margin-bottom: 10px;">
                             <img style="width:100%; height:140px;margin-bottom:16px;" src="${contentModel.documentAvatar_s}" alt="News image">
                             <a class="font-title text--uppercase font-bold" href="/thu-vien/thu-vien-tai-lieu" style="color: #322372;font-size: 16.8px;">document gallery</a>                 
                        </figure>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <figure style="margin-bottom: 10px;">
                             <img style="width:100%; height:140px;margin-bottom:16px;" src="${contentModel.videoAvatar_s}" alt="News image">
                             <a class="font-title text--uppercase font-bold" href="/thu-vien/thu-vien-video" style="color: #322372;font-size: 16.8px;">video gallery</a>                 
                        </figure>
                    </div>
                </div>
                <#--<ul class="news__block-links">
                    <li class="news__block-link" style="margin-right: 4%">
                        <img src="${contentModel.photoAvatar_s}" alt="News image">

                        <a class="font-title text--uppercase font-bold" href="/en/library/photo-library" style="color: #322372;font-size: 16.8px;">image category</a>
                    </li>

                    <li class="news__block-link" style="margin-right: 4%">
                        <img src="${contentModel.documentAvatar_s}" alt="News image">

                        <a class="font-title text--uppercase font-bold" href="/en/document-library" style="color: #322372;font-size: 16.8px;">document category</a>
                    </li>

                    <li class="news__block-link">
                        <img src="${contentModel.videoAvatar_s}" alt="News image">

                        <a class="font-title text--uppercase font-bold" href="/en/library/video-libary" style="color: #322372;font-size: 16.8px;">video category</a>
                    </li>
                </ul> -->
            </div>
        </section>
    </div>
</section>
<@studio.toolSupport />