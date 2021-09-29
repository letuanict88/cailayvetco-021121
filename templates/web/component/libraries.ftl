<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- products -->
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
    <section class="products">
        <div class="products__container block px-lg-0 px-md-0">
            <div class="products__content">
                <section class="products__list">
                    <div class="products__list-items">
                        <div class="col-lg col-md-1  ">
                            <h3 class="text--center violet-color text--uppercase font-weight-bold photo-title font-title" style="font-size: 25px;position: absolute;top: 42%">${contentModel.photoTitle_s}</h3>
                        </div>
                        <div class="col-lg-4 col-md-4  ">
                            <img class="products__img" style="width:100%; height: 100%;" src="${contentModel.photoAvatar1_s}" alt="Product image"/>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <img class="products__img" style="width:100%; height: 100%;" src="${contentModel.photoAvatar2_s}" alt="Product image"/>
                        </div>
                        <div class="col-lg col-md-1  ">
                            <a style="position: absolute;top: 42%;left:50%;font-size: 30px;" href="${contentModel.photoURL_s}"><i class="fa fa-play text-white" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        
        <div class="products__container block px-lg-0 px-md-0">
            <div class="products__content">
                <section class="products__list">
                    <div class="products__list-items" style="">
                        <div class="col-lg col-md-1  ">
                            <h3 class="text--center violet-color text--uppercase font-weight-bold video-title font-title" style="font-size: 25px;position: absolute;top: 40%">${contentModel.videoTitle_s}</h3>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="item-box" style="position: relative;">
                                <figure style="width: 100%; height: 256.757px;">
                                  <a data-fancybox="" data-small-btn="true" href="${contentModel.videoURL1_s}">
                                    <span class="play-icon"><i class="fa fa-play text-white"></i></span>
                                  </a>
                                  <a data-fancybox="" data-small-btn="true" href="${contentModel.videoURL1_s}">
                                    <img style="height: 100%;object-fit: cover;width: 100%;" id="img-0" src="${contentModel.videoBanner_s}" alt="${contentModel.namesVideo1_s}">
                                  </a>
                                </figure>
                                <div class="cap-content" style="background: #322372;left: 0;bottom:0;position: absolute;width: 100%;">
                                    <a data-fancybox="" data-small-btn="true" href="${contentModel.videoURL1_s}">
                                        <h3 id="video-0" style="margin-bottom: 0 !important; padding: 12px;font-size:20px;" class="video-name text-white text--uppercase font-title">${contentModel.namesVideo1_s}</h3>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="item-box" style="position: relative;">
                                <figure style="width: 100%; height: 256.757px;">
                                  <a data-fancybox="" data-small-btn="true" href="${contentModel.videoURL2_s}">
                                    <span class="play-icon"><i class="fa fa-play text-white"></i></span>
                                  </a>
                                  <a data-fancybox="" data-small-btn="true" href="${contentModel.videoURL2_s}">
                                    <img style="height: 100%;object-fit: cover;width: 100%;" id="img-0" src="${contentModel.videoBanner2_s}" alt="${contentModel.namesVideo2_s}">
                                  </a>
                                </figure>
                                <div class="cap-content" style="background: #322372;left: 0;bottom:0;position: absolute;width: 100%;">
                                    <a data-fancybox="" data-small-btn="true" href="${contentModel.videoURL2_s}">
                                        <h3 id="video-0" style="margin-bottom: 0 !important; padding: 12px;font-size:20px;" class="video-name text-white text--uppercase font-title">${contentModel.namesVideo2_s}</h3>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg col-md-1" style="margin-top: 10px; padding-top:10px;">
                            <a class="mt-sm-3 mt-xs-3" style="position: absolute;top: 35%;left:50%;font-size: 30px;" href="${contentModel.videoURL_s}"><i class="fa fa-play text-white" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        
        <div class="products__container block px-lg-0 px-md-0">
            <div class="products__content">
                <section class="products__list">
                    <div class="products__list-items">
                        <div class="col-lg col-md-1  ">
                            <h3 class="text--center violet-color text--uppercase font-weight-bold catalog-title font-title" style="font-size: 25px;position: absolute;top: 42%">${contentModel.documentTitle_s}</h3>
                        </div>
                        <div class="col-lg-4 col-md-4  ">
                            <img class="products__img " style="width:100%; height: 100%;" src="${contentModel.documentAvatar1_s}" alt="Product image"/>
                        </div>
                        <div class="col-lg-4 col-md-4  ">
                            <img class="products__img " style="width:100%; height: 100%;" src="${contentModel.documentAvatar2_s}" alt="Product image"/>
                        </div>
                        <div class="col-lg col-md-1  ">
                            <a style="position: absolute;top: 42%;left:50%;font-size: 30px;" href="${contentModel.documentURL_s}"><i class="fa fa-play text-white" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>
    <!-- products -->
<@studio.toolSupport />