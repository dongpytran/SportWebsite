<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login-form">
        	<h1>Log in with</h1>
            <div class="fb-gmail">
                <asp:Button CssClass="btn-fb-gmail" ID="Button2" runat="server" Text="Facebook" ForeColor="White" />
                <asp:Button CssClass="btn-fb-gmail" ID="Button3" runat="server" Text="Gmail" ForeColor="White" />
            </div>
        <div class="two-input">
        	<div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox1" runat="server"></asp:TextBox>
	    		<span data-placeholder="Username"></span>
        	</div>
        	<div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
	    		<span data-placeholder="Password"></span>
        	</div>
        </div>
        <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="17px" Text=" Remember me" />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Size="16px" ForeColor="Red"></asp:Label>
            <br />
        <asp:Button CssClass="logbtn" ID="Button1" runat="server" Text="Log in" OnClick="Button1_Click" />
        	<div class="bottom-text">
                <a href="ForgotPass.aspx"><p>Forgot password?</p></a><br />
        		Don't have account? <a href="Register.aspx"><span style="color: blue; text-decoration:underline">Sign up</span></a>
        	</div>
        </div>

    <!--This is a function that when user click-->
    <script type="text/javascript">
        $(".txtb input").on("focus", function () {
            $(this).addClass("focus");
        });

        $(".txtb input").on("blur", function () {
            if ($(this).val() == "")
                $(this).removeClass("focus");
        });
    </script>
</asp:Content>

