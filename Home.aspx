<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Gymshark | Home</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="icon" href="image/sharklogo.png" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--<marquee>
        <div class="introdution">
			    <h2>!! Welcome to Our Shop !!. Check New 
				    <div>
					    <ul>
						    <li>Gym Equipments :</li>
						    <li>Sport Clothes :</li>
						    <li>Sneaker :</li>
                            <li>Supplement :</li>
					    </ul>
				    </div>
			    </h2>
		    </div>
     </marquee>-->
		<!--This is a div for main img slideshow-->
		<!--<div class="intro">
			<img src="image/new1.jpg" class="img-slideshow"/>
			<img src="image/new2.jpg" class="img-slideshow"/>
			<img src="image/new3.jpg" class="img-slideshow"/>
			<img src="image/new4.jpg" class="img-slideshow"/>
			<img src="image/new5.png" class="img-slideshow"/>
		</div>
		<!--THis is for a btn see more products-->
		<!--<div class="btn-shopping">
            <asp:Button CssClass="button1" ID="Button1" runat="server" Text="See more" PostBackUrl="~/Allproducts.aspx" />
		</div>-->
        <div class="bub1"></div>
        <div class="bub2"></div>
        <div class="bub3"></div>
        <div class="below-main">
            <div class="below-left">
                <h2>Welcome to <span>GYMSHARK</span></h2>
                <p>Gym Equipments, Sport Clothes, Sneaker, Accessories</p>
                <asp:Button CssClass="btn-shop-now" ID="Button4" runat="server" Text="Shop Now" OnClick="Button4_Click" />
            </div>
            <div class="below-right">

            </div>
        </div>
    <div class="new-product" data-aos="fade-left">
        <h1>NEW PRODUCTS</h1>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" CellSpacing="10" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="product-item" data-aos="fade-up">
                    <table>
                        <tr>
                            <td style="position: static">
                                <asp:Label ID="SPNew" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="position: static">
                                <asp:Image ID="Image1" runat="server" Height="155px" ImageUrl='<%# Eval("HinhAnh") %>' Width="216px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="position: static">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="position: static; height: 100px;">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenSp") %>' Font-Size="15px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="position: static">
                               
                            </td>
                        </tr>
                        <tr>
                            <td style="position: static">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("GiaBan") %>' Font-Size="18px" ForeColor="Red"></asp:Label>
                                &nbsp;$</td>
                        </tr>
                        <tr>
                            <td style="position: static">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="position: static; height: 40px;">
                                <div class="buy">
                                    <asp:Button ID="Button1" CssClass="btn-add-tocart" runat="server" Text="ADD TO CART" CommandArgument='<%# Eval("MaSp") %>' />
                                </div>
                                <div class="detail">
                                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn-detail" NavigateUrl='<%# "Detail.aspx?msp=" + Eval("MaSp") %>' Text='<%# "DETAIL" %>'></asp:HyperLink>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="position: static">&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div class="btn-read-more">
        <button><a href="Allproducts.aspx">SEE MORE</a></button>
    </div>
		<!--This is for a text about in a index-->
		<div class="index-about">
			<div class="about-intro" data-aos="fade-left">
				<div class="logo">
					<p class="about-intro-text"><span>G</span>ymshark is a fitness apparel & accessories brand, manufacturer and online retailer based in the United Kingdom, supported by millions of highly engaged social media followers and customers in 131 countries Created in 2012 by teenager Ben Francis and a group of his high-school friends. Gymshark has grown from a screen printing operation in a garage, into one of the fastest growing and most recognisable brands in fitness. This growth comes from a devotion to producing innovative, effective performance wear and an ever-expanding social presence, and above all a commitment to the Gymshark vision: Before there is an action, there is an idea.</p>
				</div>
				<div class="about-intro-btn">
                    <asp:Button CssClass="button2" ID="Button2" runat="server" Text="Read more" PostBackUrl="~/About.aspx" />
                    <asp:Button CssClass="button2" ID="Button3" runat="server" Text="Join us" PostBackUrl="~/Register.aspx" />
			</div>
			</div>
			<div class="about-video" data-aos="fade-up">
				<iframe width="560" height="315" src="https://www.youtube.com/embed/Wt5SlONIRZ0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
		</div>
</asp:Content>

