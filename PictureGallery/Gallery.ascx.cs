using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace PictureGallery
{
	public partial class Gallery : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string[] klasordekiler = Directory.GetFiles(Server.MapPath("~/Images"));
			List<String> resimler = new List<string>(klasordekiler.Count());
			string[] resimuzantisi = { ".jpg", ".gif", ".png", ".jpeg" };
			
			foreach (string resimdosyasi in klasordekiler)
			{
				for (int i = 0; i < resimuzantisi.Length; i++)
				{
					string[] parcalar;
					parcalar = resimdosyasi.Split('.');
					if (resimuzantisi[i] == "." + parcalar[1])
						resimler.Add(String.Format("~/Images/{0}", Path.GetFileName(resimdosyasi)));
				}
			}
			
			RepeaterImages.DataSource = resimler;
			RepeaterImages.DataBind();
		}
	}
}