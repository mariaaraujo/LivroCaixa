<%@ Page Title="Cadastro Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroUsuario.aspx.cs" Inherits="LIvroCaixa2023.Paginas.CadastroUsuario" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <table style="margin: auto;">
        <tr>
            <td colspan="3" style="text-align:center; padding: 2rem;">
                <asp:Label ID="lbl_Titulo" runat="server" style="font-size:x-large" />
            </td>
        </tr>
        <tr>
            <td colspan="1" style="text-align:center;">
                <asp:Label ID="lbl_Nome" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txt_Nome" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="1" style="text-align:center;">
                <asp:Label ID="lbl_Login" runat="server" />
            </td>
            <td colspan="1" style="text-align:center;">
                <asp:TextBox ID="txt_Login" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="1" style="text-align:center;">
                <asp:Label ID="lbl_CPF" runat="server" />
            </td>
            <td colspan="1" style="text-align:center;">
                <asp:TextBox ID="txt_CPF" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <asp:Label ID="lbl_Perfil" runat="server" />
            </td>
            <td colspan="2" style="text-align: center;">
                <asp:CheckBox ID="ccb_Adm" runat="server" />
                <asp:Label ID="lbl_Adm" runat="server" Text="Adm" />
                <asp:CheckBox ID="ccb_User" runat="server" />
                <asp:Label ID="lbl_User" runat="server" Text="User" />

             </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center; padding: 2rem;">
                <asp:Button ID="btn_Salvar" runat="server" OnClick="btn_Salvar_Click" />
                <asp:Button ID="btn_Limpar" runat="server" OnClick="btn_Limpar_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl_Mensagem" runat="server" style="font-size: medium; color: red;" /> 
                <asp:Label ID="lbl_MensagemSucesso" runat="server" style="font-size: medium; color: green;" /> 
                <hr />
            </td>
        </tr>
    </table>
    <table style="margin: auto;">
        <tr>
            <td>    
                <asp:Label ID="lbl_BuscaPorId" runat="server" Style="font-size: large" />
            </td>
            <td>
                <asp:TextBox ID="txt_IdBusca" runat="server" Style="width: 200px" />
            </td>
            <td>
                <asp:Button ID="btn_BuscaId" runat="server" OnClick="btn_BuscaId_Click" />
            </td>
            <td>
                <asp:Button ID="btn_Excluir" runat="server" OnClick="btn_Excluir_Click" />
            </td>
            <td>
                <asp:Button ID="btn_GerarSenha" runat="server" OnClick="btn_GerarSenha_Click" />
            </td>
        </tr>
    </table>
    <asp:Literal ID="ltl_Tabela" runat="server" />
</asp:Content>
