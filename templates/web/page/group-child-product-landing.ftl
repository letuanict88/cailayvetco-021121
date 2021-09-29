<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="keywords" content="Mekovet, Cai Lậy, Dược thú y, Thuốc cho heo,Thuốc cho gia súc, Thuốc cho gia cầm, Thuốc cho thủy sản, Thuốc nhập khẩu, Thuốc xuất khẩu, Tin tức ngành chăn nuôi, Biến động thị trường, Tình hình dịch bệnh, tuyển dụng, việc làm">
    <meta name="revisit-after" content="1 days">
    <meta name="geo.placename" content="Khu 5, thị trấn Cai Lậy, huyện Cai Lậy, tỉnh Tiền Giang">
    <meta name="geo.position" content="21.021691;105.824931">
    <meta name="geo.region" content="VN-Hanoi">
    <#--<title>${contentModel.title_s}</title> -->
    <title>Công ty CP Dược Thú y Cai Lậy</title>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <!-- FontAwesome -->
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <link rel="stylesheet" href="/static-assets/css/dtycl.css"/>
    <link rel="stylesheet" href="/static-assets/css/responsive.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-175035151-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'UA-175035151-1');
    </script>

  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <main>
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        <div class="section-title">
            <div class="section-title__content block">
                <span class="d-inline"><span class="section-title__content-text text--uppercase" id="parent-title"></span>
                <span class="text-white font-weight-bold section-title__content-text" style="font-size: 32px;" id="child-pr"></span></span>
            </div>
        </div>
        <div class="container mb-md-5 pl-lg-0 pl-md-0">
            <div class="row" style="margin-right: 0 !important;margin-left: 0 !important;">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 pl-md-0 pl-lg-0 babber-img-left">
                    <img class="img-full" src="${contentModel.leftImage_s}"/>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 right-banner" style="background-color:#ffcb08;">
                    <div class="banner-content" style="padding-top: 10%;height: 70%; width: 100%;">
                        <img style="width:30%; height:100%;" class="img-center" src="${contentModel.rightimage_s}"/>
                        <p style="font-size: 1.4375em" class="font-weight-bold violet-color text-center mt-4 text--uppercase font-title">${contentModel.rightTitle_s}</p>
                    </div>
                </div>
            </div>
            
            <hr class="line-hozital" style="margin-bottom: 1.5%;margin-top: 5%;"/>
            <hr class="line-hozital"style="margin-bottom: 5%; margin-top: 0;"/>
        </div>
         <#if (contentModel.productChildgroup_o.item)??>
            <#list (contentModel.productChildgroup_o.item)![] as section>
                <div>
                    <@renderComponent parent=contentModel component=section />
                </div>
            </#list>
        </#if>
    </main>
    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/group-child-product.js"></script>
    <script src="/static-assets/js/search.js"></script>
    <script>
        $(document).ready(function(){
           // var title = "";
            var lstCate = $('#lst-categories').children();
            var childCate = $('#child-cate').children();
            
            for (let i = 0; i< lstCate.length; i++) {
               let strSplit = $(lstCate[i]).val().split('/');
               if (strSplit[0] == $('#group-pr').val()) {
                  // title += (strSplit[1] + "/");
                   $('#parent-title').text(strSplit[1] + "/");
               }
            }
            
            for (let i = 0; i< childCate.length; i++) {
               let strSplit = $(childCate[i]).val().split('/');
               if (strSplit[0] == $('#group-cpr').val()) {
                   //title += strSplit[1];
                   $('#child-pr').text(strSplit[1]);
               }
            }
            
            var url = window.location.href;
            
            if (url.indexOf('/en') > -1) {
                document.title = 'CAI LAY VETERINARY JOINT STOCK COMPANY';
            }
           // $('#child-title').text(title);
        });
    </script>
  </body>
</html>
<@studio.toolSupport />