<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jsp 파일에서 if나 foreach를 사용할 수 없을 때  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- fn 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  --><!--  Last Published: Tue May 07 2024 06:04:56 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="6634a93befaafa41dc30c16c" data-wf-site="6634a93aefaafa41dc30c070">
<head>
  <meta charset="utf-8">
  <title>Home V1 | Zastock | Webflow Ecommerce Website Template</title>
  <meta content="Home V1 | Zastock | Webflow Ecommerce Website Template" property="og:title">
  <meta content="Home V1 | Zastock | Webflow Ecommerce Website Template" property="twitter:title">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="${pageContext.request.contextPath}/resources/css/normalize.css" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/resources/css/webflow.css" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/resources/css/jiwons-dynamite-site-d2dd58.webflow.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Unbounded:regular,500,600,700"]  }});</script>
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="${pageContext.request.contextPath}/resources/images/favicon.png" rel="shortcut icon" type="image/x-icon">
  <link href="${pageContext.request.contextPath}/resources/images/webclip.png" rel="apple-touch-icon">
</head>
<body>
  <div class="preloader-wrapper">
    <div class="preloader-content-wrapper">
      <div class="preloader-lottie" data-w-id="0e60aa46-827b-a19c-1ffa-1e25f89fcaa9" data-animation-type="lottie" data-src="https://uploads-ssl.webflow.com/65cc87ce23ae1b8cf737a29d/65e06170e48f67f758b25b29_Zastock.json" data-loop="0" data-direction="1" data-autoplay="1" data-is-ix2-target="0" data-renderer="svg" data-default-duration="1.65" data-duration="0"></div>
    </div>
  </div>
  <div style="opacity:0" class="pages-wrapper">
    <div data-w-id="19aa3eec-f579-20eb-f3a1-3e62676edd5e" data-animation="default" data-collapse="medium" data-duration="400" data-easing="ease" data-easing2="ease" role="banner" class="navbar-two w-nav">
      <div class="container">
        <div class="navbar-wrapper">
          <div class="split-contant navbar-left">
            <a href="../home-pages/home-01.do" class="navbar-logo-wrap w-nav-brand"><img src="${pageContext.request.contextPath}/resources/images/navbar-logo.svg" loading="lazy" alt="" class="navbar-logo"></a>
          </div>
          <div class="split-contant navbar-middle">
            <nav role="navigation" class="nav-menu-wrapper v1 w-nav-menu">
              <div class="nav-menu-links-wrapper">
                <a href="home-01.do" aria-current="page" class="nav-single-link natural-color-100 w-inline-block">
              <div>home</div>
                </a>
                <a href="../about-us.do" class="nav-single-link natural-color-100 w-inline-block">
                  <div>About</div>
                </a>
                <a href="../blog.do" class="nav-single-link natural-color-100 w-inline-block">
                  <div>Blog</div>
                </a>
                <a href="../photoGetBoardList.do" class="nav-single-link natural-color-100 w-inline-block">
                  <div>사진</div>
                </a>
                <div data-hover="true" data-delay="0" class="nav-dropdown pages w-dropdown">
                  <div class="single-nav-link pages-toggle natural-color-100 w-dropdown-toggle">
                    <div>Pages</div>
                    <div class="dropdown-icon"></div>
                  </div>
                  <nav class="pages-dropdown-wrapper w-dropdown-list">
                    <div class="pages-dropdown-link-wrap">
                      <div class="pages-dropdown-list">
                        <div class="pages-dropdown-flex">
                          <div class="pages-dropdown-single-links-wrap">
                            <h2 class="nav-link-tittle">Menu</h2>
                            <div class="page-dropdown-list-flex-wrap">
                              <div class="dropdown-list-wrapper">
                                <a href="home-01.do" aria-current="page" class="dropdown-nav-link w-inline-block w--current">
                                  <div>Home 01</div>
                                </a>
                                <a href="home-02.do" class="dropdown-nav-link w-inline-block">
                                  <div>Home 02</div>
                                </a>
                                <a href="../about-us.do" class="dropdown-nav-link w-inline-block">
                                  <div>About Us</div>
                                </a>
                                <a href="../upload-a-collection.do" class="dropdown-nav-link w-inline-block">
                                  <div>Upload Collections</div>
                                </a>
                                <a href="../contact-us.do" class="dropdown-nav-link w-inline-block">
                                  <div>Contact Us</div>
                                </a>
                                <a href="../blog.do" class="dropdown-nav-link w-inline-block">
                                  <div>Blog</div>
                                </a>
                                <a href="https://zastock.webflow.io/blog/the-benefits-of-stock-photography-marketplaces" class="dropdown-nav-link flex w-inline-block">
                                  <div>Blog Single</div>
                                  <div class="nav-link-cms-wrap">
                                    <div>-</div>
                                    <div class="cms-text">CMS</div>
                                  </div>
                                </a>
                              </div>
                              <div class="dropdown-list-wrapper">
                                <a href="../author.do" class="dropdown-nav-link w-inline-block">
                                  <div>Author</div>
                                </a>
                                <a href="https://zastock.webflow.io/author/alex-anderson" class="dropdown-nav-link flex w-inline-block">
                                  <div>Author Single</div>
                                  <div class="nav-link-cms-wrap">
                                    <div>-</div>
                                    <div class="cms-text">CMS</div>
                                  </div>
                                </a>
                                <a href="../product.do" class="dropdown-nav-link w-inline-block">
                                  <div>Products</div>
                                </a>
                                <a href="https://zastock.webflow.io/product/franklin-sterling" class="dropdown-nav-link flex w-inline-block">
                                  <div>Collection Single</div>
                                  <div class="nav-link-cms-wrap">
                                    <div>-</div>
                                    <div class="cms-text">CMS</div>
                                  </div>
                                </a>
                                <a href="../authentication-pages/sign-in.do" class="dropdown-nav-link w-inline-block">
                                  <div>로그인</div>
                                </a>
                                <a href="../authentication-pages/sign-up.do" class="dropdown-nav-link w-inline-block">
                                  <div>회원가입</div>
                                </a>
                                <a href="../authentication-pages/forgot-password.do" class="dropdown-nav-link w-inline-block">
                                  <div>Forgot Password</div>
                                </a>
                                <a href="../authentication-pages/reset-password.do" class="dropdown-nav-link w-inline-block">
                                  <div>Reset Password</div>
                                </a>
                              </div>
                            </div>
                          </div>
                          <div class="pages-dropdown-single-links-wrap">
                            <h2 class="nav-link-tittle">Utility Pages</h2>
                            <div class="dropdown-list-wrapper">
                              <a href="../404.do" class="dropdown-nav-link w-inline-block">
                                <div>404 Not Found</div>
                              </a>
                              <a href="../401.do" class="dropdown-nav-link w-inline-block">
                                <div>Password Protected</div>
                              </a>
                              <a href="../utility-pages/changelog.do" class="dropdown-nav-link w-inline-block">
                                <div>Changelog</div>
                              </a>
                              <a href="../utility-pages/license.do" class="dropdown-nav-link w-inline-block">
                                <div>License</div>
                              </a>
                              <a href="../utility-pages/style-guide.do" class="dropdown-nav-link w-inline-block">
                                <div>Style Guide</div>
                              </a>
                              <a href="https://webflow.com/templates/designers/flowzai" target="_blank" class="dropdown-nav-link more-template w-inline-block">
                                <div>More Templates From Us</div>
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </nav>
                </div>
                <a href="../authentication-pages/sign-in.do" class="secondary-button desktop w-inline-block">
                  <div>로그인</div>
                  <div class="secondary-button-bg"></div>
                </a>
                <a href="../authentication-pages/sign-up.do" class="secondary-button desktop w-inline-block">
                  <div>회원가입</div>
                  <div class="secondary-button-bg"></div>
                </a>
              </div>
            </nav>
          </div>
          <div class="split-contant navbar-right">
            <a href="${pageContext.request.contextPath}/authentication-pages/sign-in.do" class="secondary-button mobile w-inline-block">
              <div>로그인</div>
              <div class="secondary-button-bg"></div>
            </a>
            <a href="${pageContext.request.contextPath}/authentication-pages/sign-up.do" class="secondary-button mobile w-inline-block">
              <div>회원가입</div>
              <div class="secondary-button-bg"></div>
            </a>
            <div class="hamburger-menu-wrapper w-nav-button">
              <div class="hamburger-menu-lines v1">
                <div class="hamburger-menu-bar top v1"></div>
                <div class="hamburger-menu-bar bottom v1"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <section data-w-id="19aa3eec-f579-20eb-f3a1-3e62676edd79" class="section v1-banner">
      <div class="container">
        <div data-w-id="19aa3eec-f579-20eb-f3a1-3e62676edd7b" style="opacity:0" class="v1-banner-top-wrapper">
          <h1 class="banner-title natural-color-100">사진 잘 찍고 싶드아</h1>
          <div class="banner-search-wrapper">
            <form action="search-home-01.do" method="post" class="banner-search w-form"><input class="search v1-banner w-input" maxlength="256" name="query" placeholder="관심있는 사진을 찾아보세요:)" type="text" id="search" required=""><input type="submit" class="search-button w-button" value="검색하기"></form>
          </div>
        </div>
      </div>
      <div data-w-id="09cf180d-4a2f-0b30-bd40-567184e900ec" style="opacity:0" class="banner-tab-wrapper">
        <div data-current="Tab 1" data-easing="ease" data-duration-in="300" data-duration-out="100" class="banner-tabs w-tabs">
          <div class="banner-tabs-menu w-tab-menu" role="tablist">
            <a data-w-tab="Tab 1" class="banner-tab-link w-inline-block w-tab-link w--current">
              <div>최신순</div>
            </a>
            <a data-w-tab="Tab 2" class="banner-tab-link w-inline-block w-tab-link">
              <div>조회수순</div>
            </a>
          </div>
          <div id="middlerange" class="banner-tabs-contant w-tab-content">
    <div data-w-tab="Tab 1" class="banner-tab-pane w-tab-pane w--tab-active">
        <div class="banner-contant-wrapper">
            <div data-current="Tab 1" data-easing="ease" data-duration-in="300" data-duration-out="100" class="banner-image-tabs w-tabs">
                <div class="banner-image-tabs-contant w-tab-content">
                    <div data-w-tab="Tab 1" class="banner-image-tab-pane w-tab-pane w--tab-active">
                        <div class="v1-banner-image-grid"></div>
                        <div id="w-node-bbb26abf-ea93-67bb-1cab-c286b4597440-dc30c16c" class="banner-image-flex-wrap">
                            <table>
							    <caption>검색사진</caption>
							    <c:forEach items="${photoList}" var="image">
							        <c:if test="${not empty query and not empty image.photoType and fn:contains(image.photoType, query)}">
							            <tr>
							                <td class="banner-image-single-wrapper">
							                    <div class="banner-image-wrapper">
							                        <div class="banner-image-wrap">
							                            <!-- 외부 저장소 이미지 출력 -->
							                            <img class="banner-img"
							                                 src="${pageContext.request.contextPath}/photoImage/${image.picEmail}/${image.picId}"
							                                 alt="이미지">
							                        </div>
							                        <div class="banner-image-overlay-wrap">
							                            <div class="banner-image-author-contant">
							                                <div class="banner-aothor-img-name-wrap">
							                                    <div class="banner-author-name-wrap">
							                                        <h2 class="banner-author-name">${image.picEmail}</h2>
							                                    </div>
							                                </div>
							                                <div class="circle-button-wrap">
							                                    <a href="../product.do" class="circle-button w-inline-block">
							                                        <img loading="lazy"
							                                             src="../resources/images/circle-button-icon.svg"
							                                             alt=""
							                                             class="circle-button-icon">
							                                    </a>
							                                </div>
							                                <div class="banner-image-price-wrap"></div>
							                            </div>
							                        </div>
							                    </div>
							                </td>
							            </tr>
							        </c:if>
							    </c:forEach>
							</table> <!-- 검색 테이블 종료 -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

            <div data-w-tab="Tab 2" class="banner-tab-pane w-tab-pane">
              <div class="banner-contant-wrapper">
                <div data-current="Tab 1" data-easing="ease" data-duration-in="300" data-duration-out="100" class="banner-image-tabs w-tabs">
                  <div class="banner-image-tabs-contant w-tab-content">
                    <div data-w-tab="Tab 1" class="banner-image-tab-pane w-tab-pane w--tab-active">
                      <div class="v1-banner-image-grid"></div>
                      	<div id="w-node-bbb26abf-ea93-67bb-1cab-c286b4597440-dc30c16c" class="banner-image-flex-wrap">
                            <table>
							    <caption>검색사진</caption>
							    <c:forEach items="${photoList}" var="image">
							        <tr>
							            <td class="banner-image-single-wrapper">
							                <div class="banner-image-wrapper">
							                    <div class="banner-image-wrap">
							                        <img class="banner-img"
							                             src="${pageContext.request.contextPath}/photoImage/${image.picEmail}/${image.picId}"
							                             alt="이미지">
							                    </div>
							                    <div class="banner-image-overlay-wrap">
							                        <div class="banner-image-author-contant">
							                            <div class="banner-aothor-img-name-wrap">
							                                <div class="banner-author-name-wrap">
							                                    <h2 class="banner-author-name">${image.picEmail}</h2>
							                                </div>
							                            </div>
							                            <div class="circle-button-wrap">
							                                <a href="../product.do" class="circle-button w-inline-block">
							                                    <img loading="lazy"
							                                         src="../resources/images/circle-button-icon.svg"
							                                         alt=""
							                                         class="circle-button-icon">
							                                </a>
							                            </div>
							                            <div class="banner-image-price-wrap"></div>
							                        </div>
							                    </div>
							                </div>
							            </td>
							        </tr>
							    </c:forEach>
							</table> <!-- 검색 테이블 종료 -->
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="banner-tab-shape"></div>
      </div>
      <div class="v1-banner-absolate-wrapper">
        <div class="v1-banner-absolate-wrap">
          <div class="v1-banner-ticker-image-wrap _01">
            <div class="v1-banner-ticker">
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-1.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-2.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-1.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-2.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-1.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-2.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
            </div>
          </div>
          <div class="v1-banner-ticker-image-wrap _02">
            <div class="v1-banner-ticker _02">
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-3.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-4.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-3.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-4.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-3.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-4.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
            </div>
          </div>
          <div class="v1-banner-ticker-image-wrap _03">
            <div class="v1-banner-ticker">
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-5.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-6.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-5.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-6.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-5.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-6.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
            </div>
          </div>
          <div class="v1-banner-ticker-image-wrap _04">
            <div class="v1-banner-ticker">
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-7.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-8.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-9.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-7.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-8.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-9.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-7.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-8.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-9.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
            </div>
          </div>
          <div class="v1-banner-ticker-image-wrap _05">
            <div class="v1-banner-ticker">
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-10.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-12.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-10.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-12.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-10.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-12.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
            </div>
          </div>
          <div class="v1-banner-ticker-image-wrap _06">
            <div class="v1-banner-ticker">
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-1.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-2.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-1.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-2.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-1.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-2.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
            </div>
          </div>
          <div class="v1-banner-ticker-image-wrap _07">
            <div class="v1-banner-ticker">
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-12.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-12.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-12.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
            </div>
          </div>
          <div class="v1-banner-ticker-image-wrap _08">
            <div class="v1-banner-ticker">
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-12.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-2.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-12.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-2.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-12.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-2.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
            </div>
          </div>
          <div class="v1-banner-ticker-image-wrap _09">
            <div class="v1-banner-ticker">
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
              <div class="v1-ticker-item-wrap"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"><img src="${pageContext.request.contextPath}/resources/images/banner-ticker-item-11.png" loading="lazy" alt="" class="v1-banner-ticker-img"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="v1-banner-overlay"></div>
    </section>
    <div class="section footer">
      <div class="container">
        <div class="footer-top">
          <div data-w-id="35101c2c-ff7c-f7b3-9aa9-ac2f2b9443a0" class="footer-details-wrap">
            <a href="${pageContext.request.contextPath}/home-pages/home-01.do" class="footer-logo-wrap w-inline-block"><img src="${pageContext.request.contextPath}/resources/images/footer-logo.svg" loading="lazy" alt="" class="footer-logo"></a>
            <p class="footer-details">Zastock is a place where you could buy some of the photos I have taken over the years.</p>
            <div class="footer-social-media-wrap">
              <a href="https://www.facebook.com/" target="_blank" class="footer-social-link w-inline-block">
                <div class="footer-social-icon"></div>
              </a>
              <a href="https://www.linkedin.com/" target="_blank" class="footer-social-link w-inline-block">
                <div class="footer-social-icon"></div>
              </a>
              <a href="https://twitter.com/" target="_blank" class="footer-social-link w-inline-block">
                <div class="footer-social-icon"></div>
              </a>
              <a href="https://www.instagram.com/" target="_blank" class="footer-social-link w-inline-block">
                <div class="footer-social-icon"></div>
              </a>
            </div>
          </div>
          <div data-w-id="35101c2c-ff7c-f7b3-9aa9-ac2f2b9443b2" class="footer-links-wrapper">
            <h4 class="footer-links-title">Useful Links</h4>
            <div class="footer-links-flex-wrap">
              <div class="single-footer-links-flex-wrap">
                <a href="${pageContext.request.contextPath}/home-pages/home-01.do" aria-current="page" class="single-footer-link w-inline-block w--current">
                  <div class="footer-link-text">Home 01</div>
                </a>
                <a href="${pageContext.request.contextPath}/home-pages/home-02.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Home 02</div>
                </a>
                <a href="${pageContext.request.contextPath}/about-us.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">About Us</div>
                </a>
                <a href="${pageContext.request.contextPath}/upload-a-collection.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Upload Collections</div>
                </a>
                <a href="${pageContext.request.contextPath}/become-an-author.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Become An Author</div>
                </a>
                <a href="${pageContext.request.contextPath}/blog.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Blog</div>
                </a>
              </div>
              <div class="single-footer-links-flex-wrap">
                <a href="https://zastock.webflow.io/blog/the-benefits-of-stock-photography-marketplaces" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Blog Single</div>
                </a>
                <a href="${pageContext.request.contextPath}/author.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Author</div>
                </a>
                <a href="${pageContext.request.contextPath}/product.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Products</div>
                </a>
                <a href="https://zastock.webflow.io/product/franklin-sterling" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Collection Single</div>
                </a>
                <a href="https://zastock.webflow.io/author/alex-anderson" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Author Single</div>
                </a>
                <a href="${pageContext.request.contextPath}/contact-us.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Contact Us</div>
                </a>
              </div>
            </div>
          </div>
          <div data-w-id="35101c2c-ff7c-f7b3-9aa9-ac2f2b9443d9" class="footer-links-wrapper">
            <h4 class="footer-links-title">Utility Pages</h4>
            <div class="footer-links-flex-wrap">
              <div class="single-footer-links-flex-wrap">
                <a href="${pageContext.request.contextPath}/utility-pages/style-guide.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Style Guide</div>
                </a>
                <a href="${pageContext.request.contextPath}/401.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Protected Password</div>
                </a>
                <a href="${pageContext.request.contextPath}/404.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">404 Not Found</div>
                </a>
                <a href="${pageContext.request.contextPath}/utility-pages/license.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Licenses</div>
                </a>
                <a href="${pageContext.request.contextPath}/utility-pages/changelog.do" class="single-footer-link w-inline-block">
                  <div class="footer-link-text">Changelog</div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="footer-bottom">
          <div data-w-id="35101c2c-ff7c-f7b3-9aa9-ac2f2b9443ee" class="footer-copyright-wrap">
            <div class="footer-copyright">© Copyright - <a href="${pageContext.request.contextPath}/index.do" class="footer-source-link">Zastock</a> | Designed by <a href="https://www.flowzai.com/" target="_blank" class="footer-source-link">Flowzai </a>/ <a href="${pageContext.request.contextPath}/utility-pages/license.do" class="footer-source-link">License</a> - Powered by <a href="https://webflow.com/" target="_blank" class="footer-source-link">Webflow</a>
            </div>
          </div>
          <div data-w-id="35101c2c-ff7c-f7b3-9aa9-ac2f2b9443fc" class="footer-divider"></div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=6634a93aefaafa41dc30c070" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="${pageContext.request.contextPath}/resources/js/webflow.js" type="text/javascript"></script>
</body>
</html>