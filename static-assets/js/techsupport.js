$(document).ready(function(){
    // Panigation list product
    
    var numberOfProducts = $("#panigation-tech .tech-item").length;
    var limitPerPage = 7;
    
    $("#panigation-tech .tech-item:gt(" + (limitPerPage -1 )+")").hide();
    
    var totalPages = Math.round(numberOfProducts / limitPerPage);
    
    $('.pagi-tech').append("<li class='page-item current-page active'><a style='background-color: #322372 !important' class='page-link' href='javacript:void(0)'>"+ 1+"</a></li>");
    
    for (let i=2; i<= totalPages;i++){
        $(".pagi-tech").append("<li class='page-item current-page'><a class='page-link' href='javascript:void(0)'>"+ i +"</a></li>");
    }
    
    $('.pagi-tech').append("<li id='next-page' class='page-item'><a class='page-link' href='javascript:void(0)'><span class='fas fa-angle-right'></a></li>");
    
    $('.pagi-tech li.current-page').on("click", function(){
        if($(this).hasClass("active")){
            return false;
        } else{
            $('.pagi-tech *').removeAttr('style');
            var currentPage = $(this).index();
            $('.pagi-tech li').removeClass("active");
            $(this).addClass("active");
            $(this).children().attr('style', 'background-color: #322372 !important');
            $("#panigation-tech .tech-item").hide();
            var total = limitPerPage * currentPage;
            for(let i = total - limitPerPage; i<total; i++){
                $("#panigation-tech .tech-item:eq("+ i +")").show();
            }
        }
    });
    
    $("#next-page").on("click", function() {
      var currentPage = $(".pagi-technation li.active").index(); 
      if (currentPage === totalPages) {
        return false; 
      } else {
        $('.pagi-tech *').removeAttr('style');
        currentPage++; 
        $(".pagi-tech li").removeClass('active'); 
        $("#panigation-tech .tech-item").hide();
        var total = limitPerPage * currentPage; 
        for (let i = total - limitPerPage; i < total; i++) {
          $("#panigation-tech .tech-item:eq(" + i + ")").show(); 
        }
    
        $(".pagi-tech li.current-page:eq(" + (currentPage -1) + ")").addClass('active'); 
        $(".pagi-tech li.current-page:eq(" + (currentPage -1) + ")").children().attr('style', 'background-color: #322372 !important');
      }
    });
    
    $("#previous-page").on("click", function() {
          var currentPage = $(".pagi-tech li.active").index(); 
          if (currentPage === 1) {
            return false; 
          } else {
            $('.pagi-tech *').removeAttr('style');
            currentPage--; 
            $(".pagi-tech li").removeClass('active'); 
            $("#panigation-tech .tech-item").hide();
            var grandTotal = limitPerPage * currentPage; 
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
              $("#panigation-tech .tech-item:eq(" + i + ")").show();
            }
            $(".pagi-tech li.current-page:eq(" + (currentPage - 1) + ")").addClass('active');
            $(".pagi-tech li.current-page:eq(" + (currentPage - 1) + ")").children().attr('style', 'background-color: #322372 !important');
          }
    });
    
});