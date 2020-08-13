<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="signup-form">
        	<h1>Sign up</h1>
        	<div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox1" runat="server"></asp:TextBox>
	    		<span data-placeholder="First Name :"></span>
        	</div>
        	<div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox2" runat="server"></asp:TextBox>
	    		<span data-placeholder="Last Name :"></span>
        	</div>
            <div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
	    		<span data-placeholder="Birth :"></span>
        	</div>
        <div class="txtb">
            <label> Gender :</label>
            <asp:DropDownList ID="DropDownList1" CssClass="gender" runat="server">
                <asp:ListItem Value="1">Male</asp:ListItem>
                <asp:ListItem Value="0">Female</asp:ListItem>
            </asp:DropDownList>
	    		
        	</div>
            <div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox4" runat="server"></asp:TextBox>
	    		<span data-placeholder="Adress :"></span>
        	</div>
            <div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox>
	    		<span data-placeholder="Phone :"></span>
        	</div>
            <div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
	    		<span data-placeholder="Email :"></span>
        	</div>
            <div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox9" runat="server"></asp:TextBox>
	    		<span data-placeholder="Username :"></span>
        	</div>
            <div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
	    		<span data-placeholder="Password :"></span>
        	</div>
            <div class="txtb">
                <asp:TextBox CssClass="input" ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
	    		<span data-placeholder="Re-Enter Password :"></span>
        	</div>
            <asp:Button CssClass="logbtn" ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click" />
        	<div class="bottom-text">
        		Already have account? <a href="Login.aspx"><span style="color: blue; text-decoration:underline">Sign in</span></a>
        	</div>
        </div>
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

