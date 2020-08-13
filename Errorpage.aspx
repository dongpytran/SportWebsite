<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Errorpage.aspx.cs" Inherits="Errorpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="a404-main">
    <div id="error-page">
      <div class="content">
        <h1 data-text="404">
            404</h1>
            <h4 data-text="Opps! Page not found">
            Opps! Page not found</h4>
            <p>
            Sorry, the page you're looking for doesn't exist or in our processing. If you think something is broken, report a problem.</p>
            <div class="btns">
                      <a href="Home.aspx">return home</a>
                      <a href="https://facebook.com/pydaika13">report problem</a>
                    </div>
            </div>
            </div>
        </div>
</asp:Content>

