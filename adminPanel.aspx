<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminPanel.aspx.cs" Inherits="adminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 321px;
        }
    </style>
    <link href="adminpage.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div class="admin-main">
            <h1>Admin Page: ADD CATEGORY</h1>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">Latest Product Code :</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Category Code</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="318px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Category Name</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Width="318px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button4" CssClass="admin-btn" runat="server" OnClick="Button4_Click" Text="Submit" />
                        <asp:Button ID="Button5" CssClass="admin-btn" runat="server" OnClick="Button2_Click" style="height: 29px" Text="END" />
                        <asp:Button ID="Button6" CssClass="admin-btn" runat="server" Text="Add ProD" OnClick="Button6_Click" />
                    </td>
                </tr>
            </table>
    </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div class="admin-main">
            <h1>Admin Page</h1>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">Latest Product Code :</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Product Code</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="318px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Product Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="318px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Description</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="318px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Price</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="318px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Image URL</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="318px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Categories Code</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="TenLoai" DataValueField="MaLoai">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">New ?</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Quantity</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="318px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" CssClass="admin-btn" runat="server" OnClick="Button1_Click" Text="Submit" />
                        <asp:Button ID="Button2" CssClass="admin-btn" runat="server" OnClick="Button2_Click" style="height: 29px" Text="END" />
                        <asp:Button ID="Button3" CssClass="admin-btn" runat="server" Text="Add Cate" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
    </div>
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
