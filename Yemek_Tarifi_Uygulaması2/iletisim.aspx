<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        font-size: x-large;
        text-align: center;
    }
    .auto-style5 {
        font-weight: bold;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style4" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td><strong>Ad-Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Mail:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="30px" Text="MESAJ" Width="126px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>
