<%@ Page Title="" Language="C#" MasterPageFile="~/MasterADCV.master" AutoEventWireup="true" CodeFile="catalogo.aspx.cs" Inherits="catalogo" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <main class="page">
        <section class="clean-block slider">
            <div class="container">           
                    <div class="block-heading">   
                     <div class="carousel slide" data-ride="carousel" id="carousel-1">
                            <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                            <asp:ImageButton ID="imagslid" CssClass="w-100 d-block" runat="server" src="img/PerroBonito.jfif" />
                            </div>
                           <div class="carousel-item">
                            <asp:ImageButton ID="ImageButton1" CssClass="w-100 d-block" runat="server" src="img/shampooslider.jpg"/>
                            </div>
                            </div>
                               <div>  
                                  <a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span><span class="sr-only">Previous</span></a>
                        <a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next">
                        <span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a></div>
                        <div>
                        <a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span><span class="sr-only">Previous</span></a>
                        <a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next"><span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a>

                        </div>
                        </div>         
                         </div>
                 <asp:DataList ID="dtprodin" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Bold="True" Font-Italic="True" Font-Names="Comic Sans MS" Font-Overline="False" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="idprod" Width="1239px" OnItemCommand="mostrar" OnSelectedIndexChanged="dtprodin_SelectedIndexChanged">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <ItemStyle BackColor="White" ForeColor="#003399" />
        <ItemTemplate>
            <asp:ImageButton ID="Image2" runat="server" Height="250px" ImageUrl='<%# Eval("imagen") %>' Width="300px" CommandName="prodcat" />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("nombreprod") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("stock") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("precio") %>'></asp:Label>
            <br />
            <asp:ImageButton ID="ImageButton5" runat="server" src="img/perrito.png" Height="39px" Width="46px" CommandName="carrito" />
        </ItemTemplate>

        <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />

    </asp:DataList>   
            </div>
        </section>
   </main>

     
    </asp:Content>



