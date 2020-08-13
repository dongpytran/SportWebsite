<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="ShopCartInfo.aspx.cs" Inherits="ShopCartInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
        .auto-style8 {
            width: 361px;
        }
        .auto-style9 {
            width: 413px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="loader">
        <div class="ring">

        </div>
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <div class="cart">
            <asp:Label ID="Label3" runat="server" Text="You don't have any products!"></asp:Label>&nbsp<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Allproducts.aspx">Shop now</asp:HyperLink>
        </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="cart">
                <asp:GridView CssClass="cart-table" ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" DataKeyNames="ID" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                            <asp:CommandField ShowEditButton="true" >  
                            <ControlStyle ForeColor="Blue" />
                            <ItemStyle CssClass="btn-in-cart" />
                            </asp:CommandField>
                            <asp:CommandField ShowDeleteButton="true" >
                            <ControlStyle ForeColor="Blue" />
                            <ItemStyle CssClass="btn-in-cart" />
                            </asp:CommandField>
                </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <p><asp:Label ID="Label2" runat="server" Text="Total Pay: "></asp:Label>&nbsp &nbsp<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></p>
            <asp:Button CssClass="btn-pay-now" ID="Button1" runat="server" Text="Pay Now" OnClick="Button1_Click" />
            </div>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <div class="cart">
                <h1>PAYMENT BILL CHECK OUT</h1>
                <div class="cart">
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style1" colspan="2" style="text-align: center; font-size: large; color: #FF0000">
                                <asp:Label ID="Label4" runat="server" Text="Label" Font-Size="40px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Full Name :</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Width="319px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Adress :</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Width="319px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Email :</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Width="319px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Phone :</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" Width="319px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td style="font-size: small">Your information is not correct?
                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Click here" />
                                &nbsp;to change your profile</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td style="font-size: small; color: #FF0000;">
                                <asp:CheckBox ID="CheckBox1" runat="server" Text=" (*) I agree with all policy of Gymshark" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button5" runat="server" CssClass="edit-profile" OnClick="Button5_Click" Text="Back" />
                                <asp:Button ID="Button3" CssClass="edit-profile" runat="server" Text="Pay" OnClick="Button3_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </asp:View>
    </asp:MultiView>
        <script type="text/javascript">
            var loader = document.querySelector(".loader");
            window.onload = ()=>{
                setTimeout(function(){
                    loader.style.opacity ="0";
                    setTimeout(function(){
                        loader.style.display="none";
                    },500);
                },1000)
            }
    </script>
</asp:Content>

