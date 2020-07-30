<%@ Page Title="" Language="C#" MasterPageFile="~/MasterADCV.master" AutoEventWireup="true" CodeFile="Generarcompra.aspx.cs" Inherits="Generarcompra" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
      <main class="page shopping-cart-page">
        <section class="clean-block clean-cart dark">
            <div class="container">
                <div class="block-heading">
                <div class="content">
                    <div class="row no-gutters">
                        <div class="col-md-12 col-lg-8">
                            <div class="items">
                                <div class="product">
                                    <div class="row justify-content-center align-items-center">
                                        <div class="block-heading">
                                  <asp:Label ID="Label1" class="text-info" runat="server" Text="Confirmar Compra" Font-Names="Comic Sans MS" Font-Size="Large"></asp:Label>    
                                        </div>
       <div class="card-details">
        <div class="form-row">
                  
            
            <div class="col-sm-7">
                
      
                <div class="container">
                    <div class="block-heading" style="font-size: xx-large">
                        
                        <h1><strong>CONFIRMAR COMPRA</strong></h1>
                        
                    </div>
                    <div class="block-content">
                        <div class="form-group" id="cccont">
<div class="fila">
    idcompra
    <asp:Label ID="lblidpedido" runat="server"></asp:Label>
    <br />
    </div>
        <div class="fila">
    idcliente
    <asp:Label ID="lblidcliente" runat="server"></asp:Label>
            <br />
            </div>
        <div class="fila">
    fechacompra
    <asp:Label ID="lblfechapedido" runat="server"></asp:Label>
    <br />
            </div>
        <div class="fila">
    fechallegada
    <asp:Label ID="lblfechaentrega" runat="server"></asp:Label>
    <br />
            </div>
        <div class="fila">
    fechaenvio
    <asp:Label ID="lblfechaenvio" runat="server"></asp:Label>
    <br />
            </div>
        <div class="fila">
    idcompaenvi
    <asp:DropDownList ID="lstformaenvio" runat="server">
    </asp:DropDownList>
    <br />
            </div>
            <div class="fila">
    codigopostal
    <asp:TextBox ID="txtcodpostal" runat="server"></asp:TextBox>
    <br />
            </div>
    lugardeenvio
    <asp:TextBox ID="txtciudaddestino" runat="server"></asp:TextBox>
    <br />
            </div>
    <br />
    Total a pagar
    <asp:Label ID="lbltotalpagar" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnPago" runat="server" OnClick="btnComprar_Click" Text="Efectuar Pago" CssClass="btn btn-primary sweet-8" />
    <br />
    <br />
    <br />
         </div>
                </div>
                </div>
          
   
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group">
                                    <div class="input-group expiration-date">
                                          &nbsp;<asp:Label ID="lblcodpos" class="form-control" runat="server" Text="Codigo postal"></asp:Label>
            <asp:TextBox ID="txtcodpos" class="input-group expiration-date" runat="server"></asp:TextBox>
    <asp:Label ID="lblciudad" class="form-control" runat="server" Text="ciudad"></asp:Label>
    <asp:TextBox ID="txtciudad" class="input-group expiration-date" runat="server"></asp:TextBox>
    <asp:Label ID="lblregion" class="form-control" runat="server" Text="Region"></asp:Label>
    <asp:TextBox ID="txtregion" class="input-group expiration-date" runat="server"></asp:TextBox>
    &nbsp;<asp:Label ID="lblpais" class="form-control" runat="server" Text="Pais"></asp:Label>
    <asp:TextBox ID="txtpais" class="input-group expiration-date" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Proceed</button></div>
                            </div>
                        </div>    
                    </div>  
                     </div>
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


