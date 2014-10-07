<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Gallery.ascx.cs" Inherits="PictureGallery.Gallery" %>
<head id="Head1" runat="server">
	<title>Resim Galerisi</title>
	<link rel="stylesheet" href="jscss/lightbox.css" type="text/css" media="screen" />
	<script type="text/javascript" src="jscss/prototype.js"></script>
	<script type="text/javascript" src="jscss/scriptaculous.js?load=effects"></script>
	<script type="text/javascript" src="jscss/lightbox.js"></script>
</head>
		<asp:Panel ID="pnGallery" runat="server">
			<asp:Repeater ID="RepeaterImages" runat="server">
				<ItemTemplate>
					<a id="imageLink" href='<%# Container.DataItem %>' rel="lightbox[Brussels]" runat="server">
						<asp:Image ID="Image" runat="server" ImageUrl='<%# Container.DataItem %>' Width="150"
							Height="150" />
					</a>
				</ItemTemplate>
			</asp:Repeater>
		</asp:Panel>