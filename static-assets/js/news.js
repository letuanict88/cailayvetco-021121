var numberOfFieldsNews = $("#field-news .fields").length;
var numberOfMavinexNews = $("#cailay-news .mavinex").length;

var limitPerPage = 2;

$("#cailay-news .mavinex:gt(" + (limitPerPage -1 )+")").hide();
$("#field-news .fields:gt(" + (limitPerPage -1 )+")").hide();

var totalPages1 = Math.round(numberOfMavinexNews / limitPerPage );
var totalPages2 = Math.round(numberOfFieldsNews / limitPerPage );

$('.pagi1').append("<li class='page-item current-page active'><a class='page-link' style='background-color: #322372 !important' href='javacript:void(0)'>"+ 1+"</a></li>");
$('.pagi2').append("<li class='page-item current-page active'><a class='page-link' style='background-color: #322372 !important' href='javacript:void(0)'>"+ 1+"</a></li>");

for (let i=2; i<= totalPages1;i++){
    $(".pagi1").append("<li class='page-item current-page'><a class='page-link'  href='javascript:void(0)'>"+ i +"</a></li>");
}

for (let i=2; i<= totalPages2;i++){
    $(".pagi2").append("<li class='page-item current-page'><a class='page-link'  href='javascript:void(0)'>"+ i +"</a></li>");
}

$('.pagi1').append("<li id='next-page1' class='page-item'><a class='page-link' href='javascript:void(0)'><span class='fas fa-angle-right'></a></li>");
$('.pagi2').append("<li id='next-page2' class='page-item'><a class='page-link' href='javascript:void(0)'><span class='fas fa-angle-right'></a></li>");


$('.pagi1 li.current-page').on("click", function(){
    if($(this).hasClass("active")){
        return false;
    } else{
        $('.pagi1 *').removeAttr('style');
        var currentPage = $(this).index();
        $('.pagi1 li').removeClass("active");
        $(this).addClass("active");
        $(this).children().attr('style', 'background-color: #322372 !important');
        $("#cailay-news .mavinex").hide();
        var total = limitPerPage * currentPage;
        for(let i = total - limitPerPage; i<total; i++){
            $("#cailay-news .mavinex:eq("+ i +")").show();
        }
    }
});

$("#next-page1").on("click", function() {
  var currentPage = $(".pagination li.active").index(); 
  if (currentPage === totalPages1) {
    return false; 
  } else {
      $('.pagi1 *').removeAttr('style');
    currentPage++; 
    $(".pagi1 li").removeClass('active'); 
    $("#cailay-news .mavinex").hide();
    var total = limitPerPage * currentPage; 
    for (let i = total - limitPerPage; i < total; i++) {
      $("#cailay-news .mavinex:eq(" + i + ")").show(); 
    }

    $(".pagi1 li.current-page:eq(" + (currentPage -1) + ")").addClass('active'); 
    $(".pagi1 li.current-page:eq(" + (currentPage -1) + ")").children().attr('style', 'background-color: #322372 !important');
  }
});


$("#previous-page1").on("click", function() {
      var currentPage = $(".pagi1 li.active").index(); 
      if (currentPage === 1) {
        return false; 
      } else {
          $('.pagi1 *').removeAttr('style');
        currentPage--; 
        $(".pagi1 li").removeClass('active'); 
        $("#cailay-news .mavinex").hide();
        var grandTotal = limitPerPage * currentPage; 
        for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
          $("#cailay-news .mavinex:eq(" + i + ")").show();
        }
        $(".pagi1 li.current-page:eq(" + (currentPage - 1) + ")").addClass('active'); 
        $(".pagi1 li.current-page:eq(" + (currentPage -1) + ")").children().attr('style', 'background-color: #322372 !important');
      }
    });
    
$('.pagi2 li.current-page').on("click", function(){
    if($(this).hasClass("active")){
        return false;
    } else{
        $('.pagi2 *').removeAttr('style');
        var currentPage = $(this).index();
        $('.pagi2 li').removeClass("active");
        $(this).addClass("active");
        $(this).children().attr('style', 'background-color: #322372 !important');
        $("#field-news .fields").hide();
        var total = limitPerPage * currentPage;
        for(let i = total - limitPerPage; i<total; i++){
            $("#field-news .fields:eq("+ i +")").show();
        }
    }
});

$("#next-page2").on("click", function() {
  var currentPage = $(".pagi2 li.active").index(); 
  if (currentPage === totalPages2) {
    return false; 
  } else {
      $('.pagi2 *').removeAttr('style');
    currentPage++; 
    $(".pagi2 li").removeClass('active'); 
    $("#field-news .fields").hide();
    var total = limitPerPage * currentPage; 
    for (let i = total - limitPerPage; i < total; i++) {
      $("#field-news .fields:eq(" + i + ")").show(); 
    }

    $(".pagi2 li.current-page:eq(" + (currentPage -1) + ")").addClass('active'); 
    $(".pagi2 li.current-page:eq(" + (currentPage -1) + ")").children().attr('style', 'background-color: #322372 !important');
    
  }
});


$("#previous-page2").on("click", function() {
      var currentPage = $(".pagi2 li.active").index(); 
      if (currentPage === 1) {
        return false; 
      } else {
          $('.pagi2 *').removeAttr('style');
        currentPage--; 
        $(".pagi2 li").removeClass('active'); 
        $("#field-news .fields").hide();
        var grandTotal = limitPerPage * currentPage; 
        for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
          $("#field-news .fields:eq(" + i + ")").show();
        }
        $(".pagi2 li.current-page:eq(" + (currentPage - 1) + ")").addClass('active'); 
        $(".pagi2 li.current-page:eq(" + (currentPage -1) + ")").children().attr('style', 'background-color: #322372 !important');
      }
    });    

$('.limit-text').each(function (f) {
var newstr = $(this).text().substring(0,300);
$(this).text(newstr).append("...");
});