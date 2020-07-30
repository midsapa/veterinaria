<%@ Page Title="" Language="C#" MasterPageFile="~/MasterADCV.master" AutoEventWireup="true" CodeFile="Otros.aspx.cs" Inherits="Otros" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <link href="EstilosADCV.css" rel="stylesheet" />
 <main class="page catalog-page">
  <section class="clean-block clean-catalog dark">          
   <div class="block-heading">        
    <div class="content">
       <div class="row">        
              <div class="filters">
                <div class="filter-item">
                   
                </div>
                </div>
             
            <asp:DataList ID="dtotros" runat="server" DataKeyField="idprod" Height="464px" RepeatColumns="3" RepeatDirection="Horizontal" Width="834px" OnItemCommand="muestra">
            <ItemTemplate>
             <asp:ImageButton ID="ImageButton1" runat="server" Height="155px" ImageUrl='<%# Eval("imagen") %>' Width="194px" CommandName="verdet" />
             <br />
             <asp:Label ID="Label3" runat="server" Text='<%# Eval("nombreprod") %>'></asp:Label>
             <br />
             <asp:Label ID="Label4" runat="server" Text='<%# Eval("stock") %>'></asp:Label>
             <br />
             <asp:Label ID="Label5" runat="server" Text='<%# Eval("precio") %>'></asp:Label>
             <br />
             <asp:ImageButton ID="ImageButton5" runat="server" src="img/compras.png" Height="39px" Width="46px" CommandName="agregarcar" />
            </ItemTemplate>
            </asp:DataList>
        </div>
     </div>
      </div>     
     </section>
     </main>
</asp:Content>


