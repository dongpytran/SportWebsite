﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Forums.aspx.cs" Inherits="Forums" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="body">
        <div class="wrapper">
      <div class="title">
            Our website is <span>Coming soon</span>, follow us <br> for update now!</div>
      <div class="count-down">
        <div class="timer day">
          <div class="count">
            <div class="numb">
            00</div>
            <div class="text">
            Days</div>
            </div>
            </div>
            <div class="clone">
            :</div>
            <div class="timer hour">
                      <div class="count">
                        <div class="numb">
            00</div>
            <div class="text">
            Hours</div>
            </div>
            </div>
            <div class="clone">
            :</div>
            <div class="timer min">
                      <div class="count">
                        <div class="numb">
            00</div>
            <div class="text">
            Minutes</div>
            </div>
            </div>
            <div class="clone">
            :</div>
            <div class="timer sec">
                <div class="count">
                      <div class="numb">
                            00</div>
                <div class="text">
                Seconds</div>
              </div>
            </div>
         </div>
   </div>
<script>
      const day = document.querySelector(".day .numb");
      const hour = document.querySelector(".hour .numb");
      const min = document.querySelector(".min .numb");
      const sec = document.querySelector(".sec .numb");
    var timer = setInterval(()=>{
        var currentDate = new Date().getTime();
    var launchDate = new Date('Sep 18, 2020 13:00:00').getTime();
    var duration = launchDate - currentDate;
    var days = Math.floor(duration / (1000 * 60 * 60 * 24));
    var hours = Math.floor((duration % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((duration % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((duration % (1000 * 60)) / 1000);
    day.innerHTML = days;
    hour.innerHTML = hours;
    min.innerHTML = minutes;
    sec.innerHTML = seconds;
    if(days < 10){
        day.innerHTML = '0' + days;
    }
    if(hours < 10){
        hour.innerHTML = '0' + hours;
    }
    if(minutes < 10){
        min.innerHTML = '0' + minutes;
    }
    if(seconds < 10){
        sec.innerHTML = '0' + seconds;
    }
    if(duration < 0){
        clearInterval(timer);
    }
    }, 1000);
    </script>
    </div>
</asp:Content>
