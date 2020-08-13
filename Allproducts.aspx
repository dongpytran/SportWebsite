    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Allproducts.aspx.cs" Inherits="Allproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="bar">
        <a href="ShopCartInfo.aspx"><i class="fa fa-shopping-cart"></i></a>
                    <span style="position: static;"><asp:Label CssClass="product-cart-count2" ID="count" runat="server" Text="0"></asp:Label></></span>
    </div>
    <div class="list-product">
        <p>Show the results for :  <span><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span></p>
        <asp:DataList ID="DataList1" runat="server" CellSpacing="5" RepeatColumns="5" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="product-item" data-aos="fade-up">
                    <table>
                        <tr>
                            <td style="position: static">
                                <asp:Label ID="New" runat="server" ForeColor="Red"></asp:Label>
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
                                $
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("GiaBan") %>' Font-Size="18px" ForeColor="Red"></asp:Label>
                                </td>
                        </tr>
                        <tr>
                            <td style="position: static">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="position: static; height: 40px;">
                                <div class="buy">
                                    <asp:Button ID="Button1" CssClass="btn-add-tocart" runat="server" OnClientClick="sho" Text="ADD TO CART" CommandArgument='<%# Eval("MaSp") %>'/>
                                </div>
                                <div class="detail">
                                    <asp:HyperLink ID="HyperLink2" CssClass="btn-detail" runat="server" Text='<%# "DETAIL" %>' NavigateUrl='<%# "Detail.aspx?msp=" + Eval("MaSp") %>'></asp:HyperLink>
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

</asp:Content>

