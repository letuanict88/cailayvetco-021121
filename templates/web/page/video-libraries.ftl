<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Công ty CP Dược Thú y Cai Lậy</title>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    
    <!-- FontAwesome -->
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300&display=swap" rel="stylesheet">    
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">
    
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.css">
    
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <link rel="stylesheet" href="/static-assets/css/dtycl.css">
    <link rel="stylesheet" href="/static-assets/css/responsive.css">
    <script src="/static-assets/js/pagination.js"></script>
        <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-175035151-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'UA-175035151-1');
    </script>

    <style>
        .play-icon {
            background: #FEBD11;
            border-radius: 50%;
            color: #00559a;
            display: block;
            font-size: 25px;
            height: 45px;
            left: 50%;
            line-height: 45px;
            position: absolute;
            text-align: center;
            top: 40%;
            transform: translate(-50%, -50%);
            -webkit-transform: translate(-50%, -50%);
            width: 45px;
        }
    </style>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <main>
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        <div class="content">
            <div class="section-title">
                <div class="section-title__content block">
                    <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
                </div>
            </div>
            <div class="container pl-lg-0 pl-md-0">
                <div class="row mb-4" id ="panigation-photo">
                    <#list contentModel.listVideo_o.item as video>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 mb-4 photo-item">
                            <div class="item-box" style="position: relative;">
                                <figure style="width: 100%; height: 256.757px;">
                                  <a data-fancybox  data-small-btn="true" href="${video.videoYoutubeURL_s}">
                                    <span class="play-icon"><i class="fa fa-play text-white"></i></span>
                                  </a>
                                  <a data-fancybox data-small-btn="true" href="${video.videoYoutubeURL_s}">
                                    <img style="height: 100%;object-fit: cover;width: 100%;" id="img-${video?index}" src="${video.videoBanner_s}" alt="${video.videoName_s}"/>
                                  </a>
                                </figure>
                                <div class="cap-content" style="background: #322372;left: 0;bottom:0;position: absolute;width: 100%;">
                                    <a data-fancybox data-small-btn="true" href="${video.videoYoutubeURL_s}">
                                        <h3 id="video-${video?index}" style="margin-bottom: 0 !important; padding: 12px;font-size:20px;" class="video-name text-white text--uppercase font-title" style="fon">${video.videoName_s}</h3>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </#list>
                </div>
                <nav aria-label="Page navigation example" style="margin-top: 50px;">
                    <ul class="pagination pagi justify-content-center">
                        <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </main>
  
    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/video.js"></script>
    <script>
       $(document).ready(function() {
           var itemTotal = $('.video-name').length;
           for(let i = 0; i < itemTotal; i++) {
                let id = "#video-" + i;
               let lengthName = $(id).text();
               if (lengthName.length > 30) {
                   let docName = lengthName.slice(0, 27);
                   $(id).text(docName + '...');
               }
           }
           var url = window.location.href;
           if (url.indexOf('/en') > -1) {
               document.title = 'CAI LAY VETERINARY JOINT STOCK COMPANY';
           }
        });
    </script>
  </body>
</html>
<@studio.toolSupport /> 
