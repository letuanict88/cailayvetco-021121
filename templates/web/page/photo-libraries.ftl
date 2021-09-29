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
        
        .modal__content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
        }
        
        #next,
        #prev {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            font-size: 35px;
        }
        
        #next {
            right: 15%;;
        }
        
        #prev {%;
             left: 15%; /* can dich chuyen mui ten cho gan anh thi chinh o day */
        }
        
        /* 100% Image Width on Smaller Screens */
        @media only screen and (min-width: 320px) and (max-width: 400px) {
          .modal-content {
            width: 100%;
          }
          .modal__content {
            left: 0;
            transform: translate(0, -50%);
            width: auto;
          }
          .close {
            top: unset;
            left: 50%;
            right: 0;
            bottom: 0;
            transform: translateX(-50%);
          }
          #next,
          #prev {
            top: unset;
            bottom: -15%;
            transform: unset;
          }
          #next {
              right: 0;
          }
          #prev {
              left: 0;
          }
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
                <div class="row" id ="panigation-photo">
                    <#list contentModel.listphoto_o.item as photo>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 photo-item">
                            <figure>
                              <img class="img-full" style="height: 265px; width:100%;" id="img-${photo?index}" src="${photo.photoImage_s}" alt="${photo.photoName_s}"/>
                              <figcaption style="font-size:26px; margin-bottom: 3.1875rem" class="mt-3 font-title" id="cap-${photo?index}">${photo.photoName_s}</figcaption>
                            </figure>
                        </div>
                    </#list>
                </div>
                <nav aria-label="Page navigation example">
                    <ul class="pagination pagi justify-content-center">
                        <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- The Modal -->
        <div id="myModal" class="modal">
          <span class="close">&times;</span>
          <div class="modal__content">
              <a href="javascript:void(0)" id="prev">
                <i class="fa fa-chevron-circle-left" aria-hidden="true"></i>
              </a>
              <img class="modal-content" id="img01">
              <a href="javascript:void(0)" id="next">
                <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
              </a>
          </div>
          <div id="caption"></div>
        </div>
    </main>
    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/photos.js"></script>
    <script>
        $(document).ready(function(){
            var lengthImg = $('.row').children().length;
            var modal = $('#myModal');
            var modalImg = $('#img01');
            var caption = $('#caption');
            for(let i = 0; i < lengthImg; i++) {
                let id = "#img-" + i;
                let capId = "#cap-" + i;
                var img = $(id);
                var cap = $(capId);
                var currentImg = 0;
                
                $(img).click(function() {
                    if (i == 0) {
                        $('#prev').css('display', 'none');   
                    } else {
                        $('#prev').css('display', 'block');   
                    }
                    
                    if (i == (lengthImg - 1)) {
                        $('#next').css('display', 'none');
                    } else {
                        $('#next').css('display', 'block');
                    }
                    
                    $(modal).css('display', 'block');
                    $(modalImg).attr('src', $(this).attr('src'));
                    $(modalImg).attr('alt', $(this).attr('id'));
                    $(caption).text($(this).attr('alt'));
                    $('.logos').css('display', 'none');
                    $('.page-item').css('display', 'none');
                    currentImg = $(this).index();
                });
            }
            var spanClose = $('.close');
            $(spanClose).click(function() {
                $(modal).css('display', 'none');
                $('.logos').css('display', 'block');
                $('.page-item').css('display', 'block');
            });
            
            $('#next').click(function() {
                let srcIm =  $(modalImg).attr('alt');
                let id = srcIm.split('-');
                
                if (parseInt(id[1]) == lengthImg - 1) {
                    $('#next').css('display', 'none');
                    $('#prev').css('display', 'block');
                } else {
                    $('#next').css('display', 'block');
                    $('#prev').css('display', 'block');
                }
                
                let resulId = "#img-" + (parseInt(id[1]) + 1);
               
                $(modalImg).attr('src', $(resulId).attr('src'));
                $(modalImg).attr('alt', $(resulId).attr('id'));
                srcIm = $(modalImg).attr('alt');
            });
            
            $('#prev').click(function() {
                let srcIm =  $(modalImg).attr('alt');
                let id = srcIm.split('-');
                
                if (parseInt(id[1]) == 0) {
                    $('#prev').css('display', 'none');
                    $('#next').css('display', 'block');
                } else {
                    $('#prev').css('display', 'block');
                    $('#next').css('display', 'block');
                }
                
                let resulId = "#img-" + (parseInt(id[1]) - 1);
               
                $(modalImg).attr('src', $(resulId).attr('src'));
                $(modalImg).attr('alt', $(resulId).attr('id'));
                srcIm = $(modalImg).attr('alt');
            });
            
            var url = window.location.href;
            
            if (url.indexOf('/en') > -1) {
                document.title = 'CAI LAY VETERINARY JOINT STOCK COMPANY';
            }
        });
    </script>
  </body>
</html>
<@studio.toolSupport /> 
