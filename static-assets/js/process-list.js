$(document).ready(function(){
    // Panigation list product
    
    var numberOfProducts = $("#panigation-process .process-item").length;
    var limitPerPage = 7;
    
    $("#panigation-process .process-item:gt(" + (limitPerPage -1 )+")").hide();
    
    var totalPages = Math.round(numberOfProducts / limitPerPage);
    
    $('.pagi-process').append("<li class='page-item current-page active'><a style='background-color: #322372 !important' class='page-link' href='javacript:void(0)'>"+ 1+"</a></li>");
    
    for (let i=2; i<= totalPages;i++){
        $(".pagi-process").append("<li class='page-item current-page'><a class='page-link' href='javascript:void(0)'>"+ i +"</a></li>");
    }
    
    $('.pagi-process').append("<li id='next-page' class='page-item'><a class='page-link' href='javascript:void(0)'><span class='fas fa-angle-right'></a></li>");
    
    $('.pagi-process li.current-page').on("click", function(){
        if($(this).hasClass("active")){
            return false;
        } else{
            $('.pagi-process *').removeAttr('style');
            var currentPage = $(this).index();
            $('.pagi-process li').removeClass("active");
            $(this).addClass("active");
            $(this).children().attr('style', 'background-color: #322372 !important');
            $("#panigation-process .process-item").hide();
            var total = limitPerPage * currentPage;
            for(let i = total - limitPerPage; i<total; i++){
                $("#panigation-process .process-item:eq("+ i +")").show();
            }
        }
    });
    
    $("#next-page").on("click", function() {
      var currentPage = $(".pagi-processnation li.active").index(); 
      if (currentPage === totalPages) {
        return false; 
      } else {
        $('.pagi-process *').removeAttr('style');
        currentPage++; 
        $(".pagi-process li").removeClass('active'); 
        $("#panigation-process .process-item").hide();
        var total = limitPerPage * currentPage; 
        for (let i = total - limitPerPage; i < total; i++) {
          $("#panigation-process .process-item:eq(" + i + ")").show(); 
        }
    
        $(".pagi-process li.current-page:eq(" + (currentPage -1) + ")").addClass('active'); 
        $(".pagi-process li.current-page:eq(" + (currentPage -1) + ")").children().attr('style', 'background-color: #322372 !important');
      }
    });
    
    $("#previous-page").on("click", function() {
          var currentPage = $(".pagi-process li.active").index(); 
          if (currentPage === 1) {
            return false; 
          } else {
            $('.pagi-process *').removeAttr('style');
            currentPage--; 
            $(".pagi-process li").removeClass('active'); 
            $("#panigation-process .process-item").hide();
            var grandTotal = limitPerPage * currentPage; 
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
              $("#panigation-process .process-item:eq(" + i + ")").show();
            }
            $(".pagi-process li.current-page:eq(" + (currentPage - 1) + ")").addClass('active');
            $(".pagi-process li.current-page:eq(" + (currentPage - 1) + ")").children().attr('style', 'background-color: #322372 !important');
          }
    });
    
});