<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="ForgotPass.aspx.cs" Inherits="ForgotPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login-form">
        	<h1>Forgot Password</h1>
        <div class="two-input">
        	<div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox1" runat="server"></asp:TextBox>
	    		<span data-placeholder="Enter Username"></span>
        	</div>
        	<div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
	    		<span data-placeholder="Enter Your Email"></span>
        	</div>
        </div>
        <asp:Button CssClass="btn-send-code" ID="Button2" runat="server" Text="Send Code" />
        <div class="user-code">
                <asp:TextBox CssClass="txt-user-code" ID="txtVerCode" runat="server" Text="Enter Your Verification Code" ForeColor="#999999" onfocus="removeText('Enter Your Verification Code', this);" onblur="addText('Enter Your Verification Code', this)" ></asp:TextBox>
        </div>
        <asp:Button CssClass="logbtn" ID="Button1" runat="server" Text="Confirm" />
        	<div class="bottom-text">
                <a href="Login.aspx"><p style="color: blue; text-decoration:underline">Back to Log in</p></a>
        	</div>
        </div>
    <!--This is a function that when user click in a form-->
    <script type="text/javascript">
        $(".txtb input").on("focus", function () {
            $(this).addClass("focus");
        });

        $(".txtb input").on("blur", function () {
            if ($(this).val() == "")
                $(this).removeClass("focus");
        });
    </script>
    
    <!--This is a function to remove and add a text to a textBox when user click-->
    <script type="text/ecmascript">
        function removeText(defaultText, txtVerCode) {
            if (txtVerCode.value == defaultText) {
                txtVerCode.value = "";
                txtVerCode.style.color = "Black";
            }
        }

        function addText(defaultText, txtVerCode) {
            if (txtVerCode.value.length == 0) {
                txtVerCode.value = defaultText;
                txtVerCode.style.color = "#999999";
            }
        }
    </script>

</asp:Content>

