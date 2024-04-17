<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP6_Maquetización__MATIAS_PALOMO._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">TP6_Maquetización_Matias Palomo</h1>
            <p></p>
            <p></p>
                <table style="width:100%;">
                    <tr>
                        <td style="width: 281px; height: 31px">
                            <asp:ListBox ID="LstB_Prodcutos" runat="server" Height="104px" Width="269px"></asp:ListBox>
                        </td>
                        <td style="height: 31px; width: 191px;">
                            <asp:Button ID="Btt_Incluir" runat="server" Text="&gt;&gt;" Width="173px" OnClick="Button1_Click" />
                            <asp:Button ID="Btt_Remover" runat="server" Text="&lt;&lt;" Width="173px" OnClick="Btt_Remover_Click" />
                            <br />
                            <asp:Button ID="Btt_Nuevo_Item" runat="server" OnClick="Button3_Click" Text="Nuevo Item" Width="173px" />
                            <br />
                            <asp:Button ID="Button4" runat="server" Text="Limpiar Lista" Width="173px" OnClick="Button4_Click" />
                        </td>
                        <td style="height: 31px">
                            <asp:ListBox ID="LstB_Prod_Nuevo" runat="server" Height="105px" Width="268px"></asp:ListBox>
                        </td>
                    </tr>
                    
                </table>
            <div>
                <asp:Panel ID="Panel1" runat="server" Height="161px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="Nuevo Item" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TxtB_Nuevo_Item" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="False"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btt_Insrt_Item" runat="server" OnClick="Btt_Insrt_Item_Click" Text="Insertar Item" Width="165px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btt_Ver_Sel" runat="server" OnClick="Btt_Ver_Sel_Click" Text="Ver Seleccionado" Width="166px" />
                    &nbsp;&nbsp;
                    <asp:Label ID="Lbl_Ver_Sel" runat="server" AssociatedControlID="Btt_Ver_Sel" style="height: 19px" Text="Label" Visible="False"></asp:Label>
                </asp:Panel>
            </div>
            <div>

            </div>
          
            </section>
    </main>

</asp:Content>
