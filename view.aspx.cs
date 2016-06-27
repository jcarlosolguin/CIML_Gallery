using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FlickrNet;

namespace CIL_Gallery
{
    public partial class view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                __load();
        }
        private void __load()
        {
            if (Request.QueryString["kw"] != null && Request.QueryString["kw"].Equals("arlette")) {
                __loadGallery("72157665875627064");
            }
            if (Request.QueryString["kw"] != null && Request.QueryString["kw"].Equals("arl_port"))
            {
                __loadGallery("72157666253591163");
            }
            if (Request.QueryString["kw"] != null && Request.QueryString["kw"].Equals("laura"))
            {
                __loadGallery("72157669064987176");
            }
        }
        protected string __getSize(object URL1600, object width, object width1600, object height, object height1600)
        {
            if(URL1600!=null&&!URL1600.Equals(""))
            {
                return width1600 + "x" + height1600;
            }
            else
            {
                return width + "x" + height;
            }
        }
        private void __loadGallery(string gallery)
        {
            string flickrKey = "a0232444363301974055795c8f8f2457";
            string sharedSecret = "ae24c71aacfb57c9";
            //string tag = "lol";
            PhotoSearchOptions options = new PhotoSearchOptions();
            options.PerPage = 12;
            options.Page = 1;
            //options.SortOrder = PhotoSearchSortOrder.DatePostedDescending;
            //options.MediaType = MediaType.Photos;
            //options.Extras = PhotoSearchExtras.All;
            //options.ga
            ////options.Tags = tag;
            options.Username = "threecolors";
            Flickr.CacheDisabled = true;
            Flickr flickr = new Flickr(flickrKey, sharedSecret);

            PhotosetPhotoCollection photos = flickr.PhotosetsGetPhotos(gallery, PhotoSearchExtras.All);
            
            // PhotoCollection photos = flickr.PhotosSearch(options);

            ThumbnailsList.DataSource = photos;
            ThumbnailsList.DataBind();
        }
        protected void ThumbnailsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ThumbnailsList_SelectedIndexChanged1(object sender, EventArgs e)
        {
            //Literal HiddenPhotoId =
            //   ThumbnailsList.SelectedItem.FindControl("HiddenPhotoId") as Literal;
            //Literal HiddenPhotoUrl =
            //   ThumbnailsList.SelectedItem.FindControl("HiddenPhotoUrl") as Literal;

            //string photoId = HiddenPhotoId.Text;
            //string photoUrl = HiddenPhotoUrl.Text;

            //PreviewImage.ImageUrl = photoUrl;
            //GetDescription(photoId);
        }
    }
}