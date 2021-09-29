<#import "/templates/system/common/cstudio-support.ftl" as studio />
<style>
    .nav {
        position: relative;
    }
    .btn-search {
        border: none;
        background: transparent;
    }
    .search-bar {
        position: absolute;
        bottom: -10%;
        left: -100%;
        z-index: 5;
        width: 100%;
        max-width: 500px;
        padding: 5px;
        display: flex;
        background-color: #322372;
        transition: 0.5s ease-in-out;
    }
    .search-bar.show {
        left: 15%;
    }
    .search-bar > input,
    .search-bar > i {
        border: none;
    }
    .search-bar > input {
        padding: 5px;
        width: 100%;
    }
    .search-bar > input:focus {
        border: none;
    }
    .search-bar > i {
        padding: 5px;
        cursor: pointer;
        background-color: #fff;
    }
    .nav__menu-search-btn{
        border: none;
        background: #fff;
    }
    .nav__menu {
    position: relative;
    width: -webkit-max-content;
    width: -moz-max-content;
    width: max-content;
    -ms-grid-row: 2;
    -ms-grid-column: 2;
    grid-area: menu;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    }

    .nav__menu.show {
    position: absolute;
    top: 0;
    z-index: 3;
    width: 100%;
    height: 100%;
    display: block;
    background-color: #322372;
    -webkit-transition: 0.3s ease-in-out;
    transition: 0.3s ease-in-out;
    }

    .nav__menu-item:not(:last-child) {
    margin-right: 30px;
    }

    .nav__menu-item:hover .nav__sub-menu {
    display: block;
    }

    .nav__menu-btn {
    display: none;
    border: 1px solid transparent;
    color: #fff;
    background-color: transparent;
    }

    .nav__menu-link {
    font-weight: lighter;
    }

    .nav__menu-link.active {
    font-weight: bolder;
    }

    .nav__menu-tools {
    display: none;
    }

    .nav__menu-tools li {
    width: 20px;
    height: 20px;
    }

    .nav__menu:hover > .nav__sub-menu {
    display: block;
    }

    .nav__sub-menu {
    position: absolute;
    padding-top: 10px;
    z-index: 10;
    width: 160px;
    display: none;
    background: #fff;
    -webkit-transition: 0.3s;
    transition: 0.3s;
    }

    .nav__sub-menu-item {
    position: relative;
    }

    .nav__sub-menu-item:hover .nav__dropdown {
    display: block;
    }

    .nav__sub-link {
    display: block;
    width: 100%;
    padding: 5px;
    }

    .nav__sub-link:hover {
    color: #fff;
    background: #333;
    }

    .nav__dropdown {
    position: absolute;
    top: 0;
    right: -160px;
    width: 160px;
    display: none;
    background: #f6f6f6;
    }   
    .nav__sub-menu-item {
    padding: 10px 15px;
    }
    .nav__dropdown-item{
    margin: 10px;
    }
</style>
<header>
    <section class="nav">   
        <div class="search-bar" id="searchBar">
            <input type="text" id="txtSearch">
            <button onclick="search()">
                <i class="fas fa-search"></i>
            </button>
        </div>
        <div class="nav__responsive" style="margin-left: auto">
        <div class="nav__container" id="nav-content">
            <div class="nav__logo">
                <a href="/trang-chu"><img src="${contentModel.logo_s}" alt="Logo"></a>
            </div>
            
            <!-- 29/07/2020 -->
            <div class="nav__hotline">
                <p class="font-title font-bold" >Hotline: <span class="hotline-span" >0273 382 6462</span></p>
            </div>
            
            <a class="nav__btn" onclick="toggleNav()">
                <i class="fas fa-bars"></i>
            </a>

            <ul class="nav__tools flex">
                <li class="nav__tool-item">
                    <a href="/trang-chu" class="search_icon">
                        <img class="icon-size" src="/static-assets/images/template/icon_home.png" alt="Home icon">
                    </a>
                </li>
                <li class="nav__tool-item">
                    <a href="/en/home">
                        <img class="icon-size" src="/static-assets/images/template/icon_flag.png" alt="Flag icon">
                    </a>
                </li>
                <#---------- Search Form ---------->
                <li class="nav__tool-item search-form">
                    <a class="nav__menu-search-btn" onclick="toggleSearchBar()">
                        <i class="fas fa-search" style="color: #322372; font-size: 21px;"></i>
                    </a>
                </li>
            </ul>

            <ul class="nav__menu" id="menu">
                <button class="nav__menu-btn" onclick="toggleNav()">
                    <i class="fas fa-times"></i>
                </button>
                <li class="nav__menu-item dropdown">
                    <a class="nav__menu-link font-title" href="/gioithieu">Giới thiệu</a>
                    <ul class="nav__sub-menu">
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/gioi-thieu-chung">Giới thiệu chung</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/gioi-thieu-chung/lich-su-hinh-thanh">Lịch sử hình thành</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/gioi-thieu-chung/su-menh">Tầm nhìn sứ mệnh</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/gioi-thieu-chung/thanh-tich-dat-duoc">Thành tích đạt được</a>
                    </li>
                    </ul>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/san-pham">Sản phẩm</a>
                    <ul class="nav__sub-menu">
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/san-pham-1/sp-cho-heo/thuoc-cho-heo">Sản phẩm cho heo</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/san-pham-1/san-pham-vit-ga/thuoc-cho-ga-vit">Sản phẩm cho gà vịt</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/san-pham-1/sp-trau-bo/thuoc-cho-trau-bo">Sản phẩm cho trâu bò</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/san-pham-1/sp-cho-cho-meo/thuoc-cho-meo">Sản phẩm cho chó mèo</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/san-pham-1/sp-thuy-san/thuoc-cho-thuy-san">Sản phẩm cho tôm cá</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/san-pham-1/sp-cho-loai-khac/thuoc-cho-loai-vat-khac">Sản phẩm cho loài khác</a>
                    </li>
                    </ul>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/tin-tuc">Tin tức - Sự kiện</a>
                    <ul class="nav__sub-menu">
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/tin-tuc#cailay-news">Tin nội bộ</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/tin-tuc#field-news">Tin ngành</a>
                    </li>
                    </ul>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/ho-tro-ky-thuat/benh-va-dieu-tri">Thông tin kỹ thuật</a>
                    <ul class="nav__sub-menu">
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/ho-tro-ky-thuat/benh-va-dieu-tri#benh">Quy trình chăn nuôi, phòng bệnh</a>
                        <ul class="nav__dropdown">
                            <li class="nav__dropdown-item">
                                <a class="nav__menu-sublink font-title" href="#">Với gia súc, gia cầm</a>
                            </li>
                            <li class="nav__dropdown-item">
                                <a class="nav__menu-sublink font-title" href="#">Với thuỷ sản</a>
                            </li>
                            <li class="nav__dropdown-item">
                                <a class="nav__menu-sublink font-title" href="#">Với thú cưng</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/ho-tro-ky-thuat/benh-va-dieu-tri#dieutri">Bệnh và điều trị</a>
                        <ul class="nav__dropdown">
                            <li class="nav__dropdown-item">
                                <a class="nav__menu-sublink font-title" href="#">Bệnh gia súc, gia cầm</a>
                            </li>
                            <li class="nav__dropdown-item">
                                <a class="nav__menu-sublink font-title" href="#">Bệnh thuỷ sản</a>
                            </li>
                            <li class="nav__dropdown-item">
                                <a class="nav__menu-sublink font-title" href="#">Bệnh thú cưng</a>
                            </li>
                        </ul>
                    </li>
                    </ul>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/quan-he-co-dong">Quan hệ cổ đông</a>
                    <ul class="nav__sub-menu">
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/quan-he-co-dong#quanhe1">Công bố thông tin</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/quan-he-co-dong#quanhe2">Đại hội cổ đông</a>
                    </li>
                    </ul>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/co-hoi-nghe-nghiep">Cơ hội nghề nghiệp</a>
                    <ul class="nav__sub-menu">
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/co-hoi-nghe-nghiep#job1">Tin tuyển dụng</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a class="nav__menu-sublink font-title" href="/co-hoi-nghe-nghiep#job2">Chính sách nhân sự</a>
                    </li>
                    </ul>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/lien-he">Liên hệ</a>
                </li>
                <ul class="nav__menu-tools">
                    <li class="nav__tool-item">
                    <a href="/trang-chu" class="search_icon">
                        <img class="full-size" src="/static-assets/images/template/icon_home.png" alt="Home icon">
                    </a>
                    </li>
                    <li class="nav__tool-item">
                    <a href="/en/home">
                        <img class="full-size" src="/static-assets/images/template/icon_flag.png" alt="Flag icon">
                    </a>
                    </li>
                    <#---------- Search Form ---------->
                    <li class="nav__tool-item search-form">
                    <a class="nav__menu-search-btn" onclick="toggleSearchBar()">
                        <i class="fas fa-search"></i>
                    </a>
                    </li>
                </ul>
                </ul>
            </div>
        </div>
    </section>
</header>
<@studio.toolSupport />