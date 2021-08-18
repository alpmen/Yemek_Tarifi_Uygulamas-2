<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiSec.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.GununYemegiSec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        height: 23px;
    }
    .auto-style8 {
        font-weight: bold;
    }
    .auto-style9 {
        height: 23px;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style9"><strong>GÜNÜN YEMEĞİ SEÇ:</strong></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>YEMEK ADI:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>YEMEK MALZEMELER:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>YEMEK TARİF:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style8" OnClick="Button1_Click" Text="GÜNÜN YEMEĞİ SEÇ" />
                </strong></td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
