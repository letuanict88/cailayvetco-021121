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
    <#--<title>${contentModel.t_s}</title> -->
    <title>Công ty CP Dược Thú y Cai Lậy</title>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300&display=swap" rel="stylesheet">
    
    <!-- FontAwesome -->
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
    
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-175035151-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'UA-175035151-1');
    </script>

    <style>

        #myImg {
          border-radius: 5px;
          cursor: pointer;
          transition: 0.3s;
        }
        
        #myImg:hover {opacity: 0.7;}
        
        /* The Modal (background) */
        .modal {
          display: none; /* Hidden by default */
          position: fixed; /* Stay in place */
          z-index: 1; /* Sit on top */
          padding-top: 100px; /* Location of the box */
          left: 0;
          top: 0;
          width: 100%; /* Full width */
          height: 100%; /* Full height */
          overflow: auto; /* Enable scroll if needed */
          background-color: rgb(0,0,0); /* Fallback color */
          background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
        }
        
        /* Modal Content (image) */
        .modal-content {
          margin: auto;
          display: block;
          width: 80%;
          max-width: 700px;
        }
        
        /* Caption of Modal Image */
        #caption {
          margin: auto;
          display: block;
          width: 80%;
          max-width: 700px;
          text-align: center;
          color: #ccc;
          padding: 10px 0;
          height: 150px;
        }
        
        /* Add Animation */
        .modal-content, #caption {  
          -webkit-animation-name: zoom;
          -webkit-animation-duration: 0.6s;
          animation-name: zoom;
          animation-duration: 0.6s;
        }
        
        @-webkit-keyframes zoom {
          from {-webkit-transform:scale(0)} 
          to {-webkit-transform:scale(1)}
        }
        
        @keyframes zoom {
          from {transform:scale(0)} 
          to {transform:scale(1)}
        }
        
        /* The Close Button */
        .close {
          position: absolute;
          top: 15px;
          right: 35px;
          color: #f1f1f1;
          font-size: 40px;
          font-weight: bold;
          transition: 0.3s;
        }
        
        .close:hover,
        .close:focus {
          color: #bbb;
          text-decoration: none;
          cursor: pointer;
        }
        
        /* 100% Image Width on Smaller Screens */
        @media only screen and (max-width: 700px){
          .modal-content {
            width: 100%;
          }
        }
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
        
        .img-circle__product {
           display: inline-block;
           border-radius: 50%;
           width: 100%;
           height: 360px;
           border: 14px solid #ffcb08;
           background-image: url(./image/tron-tim.png);
           background-size: cover;
           background-position: center center;
       }
       .img-circle__product-yeallow {
           display: inline-block;
           border-radius: 50%;
           width: 100%;
           height: 335px;
           border: 14px solid #322271;
           background-image: url(./image/vang.png);
           background-size: cover;
           background-position: center center;
       }
       .img-circle__product--img {
         background-image: url(./image/arnh-sp.png);
         /* z-index: 1; */
         height: 100%;
         width: 100%;
         background-repeat: no-repeat;
         background-position: center center;
         background-size: 186px
       }
    </style>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <main>
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
         <!-- =========================
        MODAL DIALOGS
        ============================== -->
        
        <div class="modal fade" id="success-dialog" role="dialog">
            <div class="modal-dialog modal-sm modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header text-left mb-2 text-white" style="background-color: #322372">
                        <h3 id="success-dialog-header" class="modal-title" style="font-size: 20px;">Cảm ơn!</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            <span id="success-dialog-message" class="modal-main-message">Yêu cầu của bạn đã được xử lý!</span>
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-sm btn-warning" data-dismiss="modal">Đóng</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="fail-dialog" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h3 id="fail-dialog-header" class="modal-title">Error</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            <span id="fail-dialog-message" class="modal-main-message">Unable to process your request. </br>Please try again later.</span>
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- =========================
        MODAL SPINNERS
        ============================== -->
        <div class="modal fade" id="modal-spinner" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered justify-content-center" role="document">
                <span class="fa fa-spinner fa-spin fa-3x"></span>
            </div>
        </div>
        <!--Modal Video-->
        <#--<div id="videoModal" class="modal">
          <span id class="close">&times;</span>
          <video style="height: 80%;" class="modal-content" controls id="video01">
              
          </video>
        </div> -->
    </main>
    
    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/group-product.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/contact.js"></script>
    <script src="/static-assets/js/video-modal.js"></script>
    <script src="/static-assets/js/nav-link.js"></script>
    <script src="/static-assets/js/techsupport.js"></script>
    <script src="/static-assets/js/process-list.js"></script>
    <script>
        // set width for google map
        $('iframe').attr('width','83%');
    </script>
    <script>
        $(document).ready(function(){
            var modal = $('#videoModal');
            var modalVideo = $('#video01');
            var srcvideo1 = $('#srcVideo1').val();
            var srcvideo2 = $('#srcVideo2').val();
            
            $('#video-1').click(function() {
                $(modalVideo).html('<source src="'+ srcvideo1 +'" type="video/mp4"></source>' );
                $(modal).css('display', 'block');
                $('.logos').css('display', 'none');
            });
            
            $('#video-2').click(function() {
                $(modalVideo).html('<source src="'+ srcvideo2 +'" type="video/mp4"></source>' );
                $(modal).css('display', 'block');
                $('.logos').css('display', 'none');
            });
            
            var spanClose = $('.close');
            $(spanClose).click(function() {
                $(modal).css('display', 'none');
                $('.logos').css('display', 'block');
                $(modalVideo).html('');
                window.location.reload();
            });
            
            var url = window.location.href;
            if (url.indexOf('/en') > -1) {
                $('.hot-product-title').text('main products');
                document.title = 'CAI LAY VETERINARY JOINT STOCK COMPANY';
            } else {
                $('.hot-product-title').text('sản phẩm chủ lực');
            }
            
           var titleNames = $('.child-title__name');
           for (let i = 0; i < titleNames.length; i++) {
               let splits = $(titleNames[i]).text().replace('/', ' <br/> ');
               let ele = '<p class="d-block text-center mt-3 violet-color font-weight-bold child-title__name font-title" style="font-size: 32px;line-height: 1.25;">' + splits + '</p>'
               $(titleNames[i]).html(ele);
           }
        });
    </script>
  </body>
</html>
<@studio.toolSupport /> 
