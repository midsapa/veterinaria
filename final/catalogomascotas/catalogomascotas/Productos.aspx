<%@ Page Title="" Language="C#" MasterPageFile="~/MasterADCV.master" AutoEventWireup="true" CodeFile="Productos.aspx.cs" Inherits="Productos" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <section class="clean-block features">
            <div class="container">
                <div class="block-heading">
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-5 feature-box"><i class="icon-star icon"></i>
                        <a href="casas">

                        </a>
                    </div>
                    <div class="col-md-5 feature-box">
                        <a href="Comida">
                        <asp:Image ID="Image4" runat="server" src="img/comidalog.png" width="300" height="300"/>
                        </a>
                    </div>
                    <div class="col-md-5 feature-box">
                        <a href="Ropa">
                        <asp:Image ID="Image5" runat="server" src="img/portada-ropa-perros.jpg" width="300" height="300"/>
                        </a>
                    </div>
                    <div class="col-md-5 feature-box">
                        <h4>All Browser Compatibility</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quam urna, dignissim nec auctor in, mattis vitae leo.</p>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>


