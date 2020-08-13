<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="about">
        <div class="about-box1">
            <div class="scroll-text">
                <h1>ABOUT US</h1><br />
                <p>Gymshark is a fitness apparel &
                    accessories brand, manufacturer and online retailer
                    based in the United Kingdom, supported by millions of
                    highly engaged social media followers and customers in 131 countries.</p><br />
                <p>Created in 2012 by teenager Ben Francis and a group of his high-school friends.
                    Gymshark has grown from a screen printing operation in a garage,
                    into one of the fastest growing and most recognisable brands in fitness.
                    This growth comes from a devotion to producing innovative,
                    effective performance wear and an ever-expanding social presence,
                    and above all a commitment to the Gymshark vision:</p><br />
                <p>Before there is an action, there is an idea.</p><br />
                <p>We exist to create the tools that help people unlock their full, incredible potential
                    and put their ideas into action.</p><br />
                <p>Be all that you imagined you could be. Be a visionary.</p><br />
                <p>Gymshark is led by:</p><br />
                <strong>Ben Francis</strong><span> - Founder</span><br />
                <strong>Steve Hewitt</strong><span> - Chief Executive Officer</span><br />
                <strong>Dave Parry</strong><span> - Chief People Officer</span><br />
                <strong>Niran Chana</strong><span> - Chief Commercial Officer</span><br />
                <strong>Gemma Hulbert</strong><span> - Chief Data Officer</span><br />
             </div>
        </div>
        <div class="about-box2"></div>
        <div class="about-box3"></div>
        <div class="about-box4">
            <div class="scroll-text">
                <h1>OUR CORE VALUES</h1>
                <strong>Family </strong><span>Our community of athletes,
                    artists and visionaries stretch all the way across the globe.
                    We are a family of like-minded individuals working
                    to bring our respective visions to life.</span><br /><br />
                <strong>Progression </strong><span>Our products exist at the intersect of engineering and art.
                    To remain at the forefront of both, we need to be fearlessly progressive and consistently future-conscious.
                    We are not future-proof. We are the future.</span><br /><br />
                <strong>Vision </strong><span>In everything we do, be true to our own vision and respectful of others.
                    We are here to bring ideas to life. There is no idea too big, or too small.</span>
            </div>
        </div>
        <div class="about-box5" data-aos="fade-right">
            <div class="get-in-touch">
                <h1>GET IN TOUCH</h1>
                <asp:Label CssClass="get-input-text" ID="Label1" runat="server" Text="Your Name: "></asp:Label><br />
                <asp:TextBox CssClass="get-input" ID="TextBox1" runat="server"></asp:TextBox><br />
                <asp:Label CssClass="get-input-text" ID="Label2" runat="server" Text="Your Email :"></asp:Label><br />
                <asp:TextBox CssClass="get-input" ID="TextBox2" runat="server"></asp:TextBox><br />
                <asp:Label CssClass="get-input-text" ID="Label3" runat="server" Text="Message :"></asp:Label><br />
                <textarea class="get-textarea" id="TextArea1"></textarea><br />
                <asp:Button CssClass="get-btn-send" ID="Button1" runat="server" Text="Send" />
            </div>
            <div class="google-map">
                <div class="find-us-text">
                    <h1>FIND US</h1>
                    <a href="https://row.gymshark.com/pages/google-map" style="text-decoration: underline; color: #000;">Click here </a><span>to open Google Maps</span>
                </div>
            </div>
        </div>
        <div class="about-box6" data-aos="fade-down">
            <div class="follow-us">
                <h1 style="text-align: center; line-height: 100px;">FOLLOW US</h1>
                <div class="social">
                    <a href="https://facebook.com/pydaika13" title="Follow us on Facebook" target="_blank"><i id="fb" class="fa fa-facebook-f"></i></a>
                    <a href="#" title="Send a message for us" target="_blank"><i id="mess" class='fab fa-facebook-messenger'></i></a>
                    <a href="#" title="Follow us on Youtube" target="_blank"><i id="ytb" class="fa fa-youtube-play"></i></a>
                    <a href="#" title="Follow us on Twitter" target="_blank"><i id="twit" class="fa fa-twitter"></i></a>
                    <a href="#" title="Follow us on Instagram" target="_blank"><i id="insta" class="fa fa-instagram"></i></a>
                </div>
            </div>
        </div>
		<div class="about-video" data-aos="fade-up">
			<iframe width="560" height="315" src="https://www.youtube.com/embed/CHl_mA4FEBc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
        <!--This is for a meet team-->

        <div class="about-intro" data-aos="fade-down">
            <h1 style="margin-top: 50px; margin-left: 20px;">About Our Services :</h1>
		</div>

            <!--This is for a Service-->
            <div class="services" data-aos="fade-up">
                <div class="cen">
                    <div class="service">
                        <i class="fas fa-user-shield"></i>
                        <h2>USERS SECURITY</h2>
                        <p>Absolutely confidential Users Infomation</p>
                    </div>

                    <div class="service">
                        <i class="fas fa-handshake"></i>
                        <h2>PAYMENTS, GIFTCARDS</h2>
                        <p>Safe Payment, Attractive gifts</p>
                    </div>

                    <div class="service">
                        <i class="fas fa-shipping-fast"></i>
                        <h2>DELIVERY</h2>
                        <p>Fast delivery, Nationwide</p>
                    </div>
                    <div class="service">
                        <i class="fas fa-chart-line"></i>
                        <h2>TECHNICAL</h2>
                        <p>Gymshark Applications</p>
                    </div>
                    <div class="service">
                        <i class="fas fa-hand-holding-heart"></i>
                        <h2>RETURNS & REFUNDS</h2>
                        <p>Return within at least 30 days</p>
                    </div>
                    <div class="service">
                        <i class="fas fa-comments"></i>
                        <h2>ONLINE HELP</h2>
                        <p>24/7 Support Team Online Help</p>
                    </div>
            </div>
        </div>
    </div>
</asp:Content>

