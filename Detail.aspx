<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Detail.aspx.cs" Inherits="Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-products2">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table style="width:100%; height: 427px;">
                <tr>
                    <td rowspan="5" style="width: 337px; vertical-align: top;">
                        <asp:Image ID="Image1" CssClass="detail-img" runat="server" Height="245px" ImageUrl='<%# Eval("HinhAnh") %>' Width="301px" />
                    </td>
                    <td style="height: 23px; font-size: 13px;">ID:
                        <asp:Label ID="Label1" runat="server" Font-Size="13px" Text='<%# Eval("MaSp") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 22px">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("TenSp") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px">
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text='<%# Eval("GiaBan") %>'></asp:Label>
                        $</td>
                </tr>
                <tr>
                    <td style="height: 106px">
                        <asp:Label ID="Label4" runat="server" Font-Size="15px" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 29px">
                        <asp:Button ID="Button1" CssClass="btn-add-tocart" runat="server" Text="ADD TO CART" CommandArgument='<%# Eval("MaSp") %>' OnClick="Button1_Click"/>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        </div>
</asp:Content>

