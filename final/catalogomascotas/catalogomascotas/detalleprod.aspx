<%@ Page Title="" Language="C#" MasterPageFile="~/MasterADCV.master" AutoEventWireup="true" CodeFile="detalleprod.aspx.cs" Inherits="detalleprod" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
      <main class="page product-page">
        <section class="clean-block clean-product dark">
            <div class="container">
                <div class="block-heading">
                <div class="block-content">
                    <div class="product-info">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="gallery">
                                   <div class="sp-wrap">
                                    <asp:DataList ID="datprodde" runat="server">
                                    <ItemTemplate>
                                        <a href="<%# Eval("imagen01") %>">
                                     <asp:Image ID="Image2" CssClass="img-fluid d-block mx-auto" runat="server" Height="300px" ImageUrl='<%# Eval("imagen01") %>' Width="280px"/>
                                        </a>
                                        <br />
                                         <a href="<%# Eval("imagen02") %>">
                                     <asp:Image ID="Image1" CssClass="img-fluid d-block mx-auto" runat="server" Height="300px" ImageUrl='<%# Eval("imagen02") %>' Width="280px"/>
                                        </a>
                                        <br />
                                        <a href="<%# Eval("imagen03") %>">
                                     <asp:Image ID="Image3" CssClass="img-fluid d-block mx-auto" runat="server" Height="300px" ImageUrl='<%# Eval("imagen03") %>' Width="280px"/>
                                        </a>
                                        <br />
                                     </ItemTemplate>
                                    </asp:DataList>
                                </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="info">
                                    <asp:DataList ID="datdetallito" runat="server" RepeatDirection="Horizontal" DataKeyField="idprod">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("nombreprod") %>'></asp:Label>
                                            <br />
                                            <asp:Label ID="Label4" class="summary" runat="server" Text='<%# Eval("descripcion") %>'></asp:Label>
                                            <br />
                                            <asp:Label ID="Label2" class="price" runat="server" Text='<%# Eval("Precio") %>'></asp:Label>
                                            <br />
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("pesm") %>'></asp:Label>
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <br />
                                            <asp:Button ID="btncarrito" class="btn btn-primary"  runat="server" Text="Comprar" OnClick="btncarrito_Click" />
                                </div>
                            </div>
                            </div>
                    </div>
                     </div>
                    </div>
                   </div> 
          </section>
          </main>
</asp:Content>


