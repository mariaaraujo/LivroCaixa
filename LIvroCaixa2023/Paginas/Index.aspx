<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LivroCaixa2023.Paginas.Index" %>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <table style="margin: auto; text-align: center;">
        <tr>
            <td colspan="2" style="text-align:center; padding: 2rem;">
                <asp:Label ID="lbl_Titulo" runat="server" style="font-size:x-large"/> 
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                <asp:Label ID="lbl_Login" runat="server" style="font-size:medium" /> 
                <asp:TextBox ID="txt_Login" runat="server" style="width: 10rem;" /> 
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                 <asp:Label ID="lbl_Senha" runat="server" style="font-size:medium" /> 
                <asp:TextBox ID="txt_Senha" runat="server" TextMode="Password" style="width: 10rem;" /> 
            </td>
        </tr>
        <tr>
            <td colspan="2">
                 <asp:Button ID="btn_Login" runat="server" OnClick="btn_Login_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr />
                <asp:Label ID="lbl_Resposta" runat="server" style="font-size:medium" /> 
            </td>
        </tr>
    </table>
   

</asp:Content>
