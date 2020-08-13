<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Userprofile.aspx.cs" Inherits="Userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 225px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="user-info">
        <h1>PROFILE INFOMATION</h1>
        <div class="table-info">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">First Name&nbsp;:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Last name :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Day of Birth :</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Gender :</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Avatar :</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="67px" Width="72px" />
                    &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Adress :</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Phone :</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Email :</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Username :</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password :</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr">
                    <td class="auto-style1">&nbsp;</td>
                    <td style="padding-left: 95px;">
                        <asp:Button ID="Button1" CssClass="edit-profile" runat="server" Text="Edit" OnClick="Button1_Click" />
                        &nbsp;<asp:Button ID="Button2" CssClass="confirm-edit" runat="server" Text="Confirm" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

