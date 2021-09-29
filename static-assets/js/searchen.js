$(document).ready(function() {
    // Display content for search page
    var url = window.location;
    if(url == getContextPath()+ "/en/search") {
        
        var $pagination = $('#pagination'), 
            totalRecords = 0,
            records = [],
            displayRecords = [],
            recPerPage = 10,
            page = 1,
            totalPages = 0;
            
        var storedLstSearch = JSON.parse(localStorage.getItem("mergeLst"));
        records = storedLstSearch;
        totalRecords = records.length;
        totalPages = Math.ceil(totalRecords / recPerPage);
        apply_pagination();
        
        $('.totalSearch').text(totalRecords);
        $('.keywordSearch').text(localStorage.getItem("userTerm"))
        $('.content').css("background-color", "#FFF")
        // --- limit desc search --
        var lent = $(".limit-text-250");
       
        for (let i = 0; i < lent.length; i++) {
             var txtDesc = $(lent[i]).html();
             console.log(txtDesc);
            if(txtDesc.length > 150) {
               let txt = txtDesc.substr(0, 150);
               $(lent[i]).html(txt)
            }
        }

        $(".limit-text-250 em").css("font-weight", "bold");
    }
    
    function apply_pagination() {
          $pagination.twbsPagination({
                totalPages: totalPages,
                visiblePages: 6,
                onPageClick: function (event, page) {
                      displayRecordsIndex = Math.max(page - 1, 0) * recPerPage;
                      endRec = (displayRecordsIndex) + recPerPage;
                     
                      displayRecords = records.slice(displayRecordsIndex, endRec);
                      generateContent();
                }
          });
    }
    
    // generate content search result
    function generateContent() {
         var source = $("#search-results-template").html();
         var template = Handlebars.compile(source);
         var context = { results: displayRecords };
         var html = template(context);
        $('.search-result_item').html(html);
    }
});


function toggleSearchEnBar() {
    var nav = document.getElementById("searchBar");
    if(nav.className === "search-bar") {
        nav.className += " show";
    } else {
        nav.className = "search-bar";
    }
}

function getContextPath() {
   return  window.location.protocol + "//" + window.location.host
}

function search() {
    var url = window.location;
    var prevUrl = document.referrer;
    
    let userTerm = $('#txtSearch').val();
    if (userTerm === "") {
            alert("You need to inout keyword!");
        
        $('#txtSearch').focus();
    }
    else {
        //var urlService = this.getContextPath() + "/api/search.json?q="+ userTerm
        
        var urlService = "";
        var urlRedirect = "";
        urlService += this.getContextPath() + "/api/searchen.json?q="+ userTerm;
        urlRedirect += "/en/search";
        
        localStorage.setItem("userTerm", userTerm);
        $.ajax({
            type: "GET",
            url:urlService,
            success: function(resp){
                localStorage.setItem("mergeLst", JSON.stringify(resp[0]));

                window.location.replace(getContextPath()+ urlRedirect);
            }
        });
        
        $('.nav-bar__search').css("display", "none");
    }
}









