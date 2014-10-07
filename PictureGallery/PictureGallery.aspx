<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PictureGallery.aspx.cs"	Inherits="PictureGallery.PictureGallery" %>
	
<%@ Register Src="~/Gallery.ascx" TagName="Gallery" TagPrefix="UserControl" %>

<!DOCTYPE>
<html>
<head></head>
<body>
	<form id="form1" runat="server">
	<div>		
			<UserControl:Gallery ID="oGallery" runat="server" />	
	</div>
	</form>
</body>
</html>
