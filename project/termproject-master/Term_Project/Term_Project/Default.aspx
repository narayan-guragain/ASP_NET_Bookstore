<%@ Page Title="Default.aspx" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Term_Project.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="my_container">
        <div class="row">
            <div class="col-6 color-1">
                <img src="Images/shelf.png" />
            </div>
            <h1 id="big-title">Featured</h1>
            <p>A collection of great books made with love</p>
            <h4>Chandra</h4>
        </div>
        <div class="row">
            <div class="col-4 color-6 col-mobile">
                <img src="Images/featured/homes123.png" />
            </div>
            <div class="col-2 color-4 col-mobile">
                <h1>May We Be Forgiven</h1>
                <h4>Winner of the 2013 Women's Prize for Fiction—A darkly comic novel of twenty-first-century domestic life by a writer who is always “compelling, devastating, and furiously good”. - Zadie Smith</h4>
            </div>
            <div class="col-5 color-7 col-mobile">
                <h6>50% Off on Every Book</h6>
            </div>
        </div>
        <div class="row">
            <div class="col-2 color-3">
                <h1>Love Me Back</h1>
                <h4>“Brilliant, devastating…Love Me Back is one of those exquisitely rare novels that feel desperate and urgent and absolutely necessary.” -- The New York Times Book Review</h4>
            </div>
            <div class="col-2 color-2">
                <img src="Images/featured/love123.png" />
            </div>
        </div>
        <div class="row">
            <div class="col-17 color-17">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="rupi.jpg" />
                        </div>
                        <div class="item">
                            <img src="missing.png" />
                        </div>
                        <div class="item">
                            <img src="lolita.png" />
                        </div>
                        <div class="item">
                            <img src="lies.png" />
                        </div>
                    </div>
                </div>
                <h1>"A room without books is like a body without a soul." - Marcus Tullius Cicero</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-10 color-10">
                <p>
                    FREE EXPRESS SHIPPING TO THE US<p />
                <h5>on all over $200 - Tax & Services included</h5>
            </div>
            <div class="col-10 color-10">
                <p>FREE RETURN </p>
                <h5>from Canada</h5>
            </div>
            <div class="col-10 color-10">
                <p>
                    SECURE PAYMENT<p />
                <h5>Visa, Paypal, Mastercard, American Express</h5>
            </div>
        </div>
        <div class="row">
            <div class="col-6 color-11">
            </div>
        </div>
        <div class="row">
            <div class="col-12 color-10">
                <p>
                    ASSISTANCE<p />
                <h5>Contact at nikhilrai.fourteen@gmail.com Phone: +1 (123) 456 7890
                    <br />
                    Delivery & Return FAQ</h5>
            </div>
            <div class="col-13 color-10">
                <p>ABOUT</p>
                <h5>from Canada</h5>
            </div>
            <div class="col-12 color-10">
                <p>
                    OUR LOCATIONS<p />
                <h5>Visa, Paypal, Mastercard, American Express</h5>
            </div>
            <div class="col-14 color-10">
                <p>
                    Subscribe Newsletters<p />
                <div class="form-inline searchbox">
                    <input class="form-control mr-sm-2" type="search" placeholder="Your e-mail address" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">OK</button>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-15 color-15">
                <img src="Images/featured/Centennial123.png" />
            </div>
            <div class="col-15 color-16">
                <h5 id="followus">Follow Us</h5>
                <div class="social">
                    <a href="#" id="share-fb" class="sharer button"><i class="fa fa-2x fa-facebook-square"></i></a>
                    <a href="#" id="share-tw" class="sharer button"><i class="fa fa-2x fa-twitter-square"></i></a>
                    <a href="#" id="share-li" class="sharer button"><i class="fa fa-2x fa-linkedin-square"></i></a>
                    <a href="#" id="share-gp" class="sharer button"><i class="fa fa-2x fa-google-plus-square"></i></a>
                    <a href="#" id="share-em" class="sharer button"><i class="fa fa-2x fa-envelope-square"></i></a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
