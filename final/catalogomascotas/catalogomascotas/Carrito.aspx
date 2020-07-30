<%@ Page Title="" Language="C#" MasterPageFile="~/MasterADCV.master" AutoEventWireup="true" CodeFile="Carrito.aspx.cs" Inherits="Carrito" %>

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
                        <asp:GridView ID="grdcarrito" runat="server" DataKeyNames="idcompra" AutoGenerateColumns="False" Font-Names="Comic Sans MS" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" CellSpacing="2" OnSelectedIndexChanged="grdcarrito_SelectedIndexChanged">
         <Columns>
                         <asp:TemplateField headertext="imagen">
                                 <ItemTemplate>
                                            <div class="product-image">
                             <asp:Image ID="ImageButton1" runat="server" Height="100px" ImageUrl='<%# Eval("imagen") %>' Width="130px"/>
                                     </div>
                                </ItemTemplate>
                              
              </asp:TemplateField>
            <asp:TemplateField headertext="idcompra">
                <ItemTemplate>
                   
                    <asp:Label ID="Label1" runat="server" class="value" Text='<%# Eval("idcompra") %>'></asp:Label>
                        
                </ItemTemplate>
            </asp:TemplateField>
                
            <asp:TemplateField headertext="nombreprod">
                <ItemTemplate>
                     <div class="product-specs">
                    <asp:Label ID="lblidped" runat="server" Text='<%# Eval("nombreprod") %>'></asp:Label>
                            </div>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField headertext="cantidad">
                <ItemTemplate>
                    <asp:Label ID="lblcant" runat="server" Text='<%# Eval("cantidad") %>'></asp:Label>
                </ItemTemplate>                            
                <EditItemTemplate>
                    <asp:TextBox ID="txtcant" runat="server" Text='<%# Eval("cantidad") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
                        <asp:TemplateField headertext="precio">
                <ItemTemplate>
                    <asp:Label ID="lblcant" runat="server" Text='<%# Eval("precio") %>'></asp:Label>
                </ItemTemplate> 
            </asp:TemplateField>
         
                         <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
        </Columns>
         <EditRowStyle Font-Names="Comic Sans MS" />
         <FooterStyle Font-Names="Comic Sans MS" BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
         <RowStyle BackColor="White" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="Gray" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>                         
                                <asp:DataList ID="listpagos" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" Font-Bold="False" Font-Italic="True" Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" GridLines="Horizontal" RepeatLayout="Flow" Width="307px" OnSelectedIndexChanged="listpagos_SelectedIndexChanged">
                                    <FooterStyle BackColor="White" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                    <ItemStyle BackColor="White" ForeColor="#333333" />
                                    <ItemTemplate>
                                        Precio:
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("precio") %>'></asp:Label>
                                        <br />
                                        <br />
                                                                
                                        Total:
                                        <asp:Label ID="Label4"  runat="server" Text='<%# Eval("total") %>'></asp:Label>
                                        <br />
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                </asp:DataList>
           </div>
                            <div class="summary">
                                <h3>Precio para Comprar</h3>
        <asp:Label ID="lblcant" runat="server" Text="cantidad"></asp:Label>

</div>
          </div> 
   </div>
                           </div>
        <asp:TextBox ID="txtcant" runat="server" style="background-color:#808080" ></asp:TextBox>
        <asp:Button ID="btnguardar" runat="server" Text="Guardar" OnClick="btnguardar_Click" />
        <asp:Button ID="btncanc" runat="server" Text="Cancelar" OnClick="btncanc_Click" />

                                                                        <asp:Button ID="btncomprar" CssClass="btn btn-primary btn-block btn-lg" runat="server" Text="Comprar" OnClick="btncomprar_Click1" />

                         </div>
                    </div>
                    </div>
                </div>
      
</section>
</main>
    
</asp:Content>




