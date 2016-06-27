<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="CIL_Gallery.view"  %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- made by www.metatags.info -->
    <meta name="description" content="Carlos Olguin Portfolio" />
    <meta name="keywords" content="photography, arts, portfolio, photoshop, lightroom, photo" />
    <meta name="robots" content="index, follow" />
    <meta name="revisit-after" content="1 month" />
    <meta property="og:image" content="(img/catalog/main/m_tokiya2_.jpg)" />
    <title>Carlos Olguin Photography</title>
    <!-- photography, carlos olguin, portfolio -->
    <link rel="shortcut icon" href="/img/favicon.ico">

    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
        <!-- Core CSS file -->
        <link rel="stylesheet" href="Scripts/photoswipe/photoswipe.css" /><link rel="stylesheet" href="Scripts/photoswipe/default-skin/default-skin.css" />

        
        <link href="App_Themes/gnrl/style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <div class="se-pre-con"></div>
    <form method="post"  id="form1" runat="server">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" type="text/javascript"></script>
        <div class="navbar navbar-static-top navbar-inverse">
            <div class="container-fullwidth">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        MENU
                    </button>
                    <a class="navbar-brand"  href="http://colorsinmylife.com"><img class="img-responsive" src="img/logo.gif" style="padding:0px;" /></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a  href="http://colorsinmylife.com">Home</a></li>
                        <li><a  href="#">(204) 232-4488</a></li>
                        <li><a  href="https://www.flickr.com/photos/carlosolguin/">Flicker</a></li>
                        <li><a  href="https://instagram.com/jcarlosolguin/">Instagram</a></li>
                        <li><a  href="https://www.facebook.com/colorsinmylife/">Facebook</a></li>

                    </ul>

                </div>
            </div>
        </div>

        <div class="container-fullwidth body-content">
            <div style="margin:20px;">
                <div class="button">
                  <a runat="server" id="aDownload" href="files/4_6_print.zip">Download ZIP</a>
                  <p class="top">click to begin</p>
                  <p class="bottom">81.1 MB .zip</p>
                </div>

            </div>
            <div class="row row-centered" id="main_gallery" >
                <% Session["_count"]=0; %>
                <asp:Repeater runat="server" ID="ThumbnailsList">
                
                    <ItemTemplate>
                         <div class='col-xs-6 col-sm-4 col-md-2 col-lg-2 col-centered'>
                            <div class='my-gallery'>

                                <figure class='img-responsive' itemprop='associatedMedia' itemtype='http://schema.org/ImageObject'>
                                   
                                    <a href='<%# (Eval("Large1600Url")==null)?Eval("LargeUrl"):Eval("Large1600Url")  %>'
itemprop='contentUrl' 
data-size='<%# __getSize(Eval("Large1600Url"),Eval("LargeWidth"),Eval("Large1600Width"),Eval("LargeHeight"),Eval("Large1600Height")) %>'>
                                        <img alt='1' class='img-responsive' style="max-height:160px;width:auto;" src='<%# Eval("MediumUrl") %>' itemprop='thumbnail' alt='' />
                                    </a>
                                    <figcaption itemprop='caption description'></figcaption>
                                    <% Session["_count"]=(int)(Session["_count"])+1; Response.Write("<span class='badge'>Photo "+Session["_count"]+"</span>"); %>
                                </figure>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <hr />
            <footer>
                <p>&copy; 2015 - Designed and developed by Carlos Olguin =P</p>
            </footer>
        </div>

        <!-- Root element of PhotoSwipe. Must have class pswp. -->

        <div class="aspNetHidden">

            <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334" />
        </div>
    </form>


<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

    <!-- Background of PhotoSwipe. 
         It's a separate element, as animating opacity is faster than rgba(). -->
    <div class="pswp__bg"></div>

    <!-- Slides wrapper with overflow:hidden. -->
    <div class="pswp__scroll-wrap">

        <!-- Container that holds slides. PhotoSwipe keeps only 3 slides in DOM to save memory. -->
        <!-- don't modify these 3 pswp__item elements, data is added later on. -->
        <div class="pswp__container">
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
        </div>

        <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
        <div class="pswp__ui pswp__ui--hidden">

            <div class="pswp__top-bar">

                <!--  Controls are self-explanatory. Order can be changed. -->

                <div class="pswp__counter"></div>

                <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

                <button class="pswp__button pswp__button--share" title="Share"></button>

                <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

                <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

                <!-- Preloader demo http://codepen.io/dimsemenov/pen/yyBWoR -->
                <!-- element will get class pswp__preloader--active when preloader is running -->
                <div class="pswp__preloader">
                    <div class="pswp__preloader__icn">
                      <div class="pswp__preloader__cut">
                        <div class="pswp__preloader__donut"></div>
                      </div>
                    </div>
                </div>
            </div>

            <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                <div class="pswp__share-tooltip"></div> 
            </div>

            <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
            </button>

            <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
            </button>

            <div class="pswp__caption">
                <div class="pswp__caption__center"></div>
            </div>

          </div>

        </div>

</div>
    
    <script src="Scripts/photoswipe/photoswipe.min.js"></script> 
    <script src="Scripts/photoswipe/photoswipe-ui-default.min.js"></script> 
    <script src="Scripts/photoswipe/imp.js"></script> 
    <script type="text/javascript">
        $(window).load(function () {
            // Animate loader off screen
            $(".se-pre-con").fadeOut("slow");;
        });</script>
</body>
</html>
