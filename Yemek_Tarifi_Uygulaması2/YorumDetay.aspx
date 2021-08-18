<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        font-weight: bold;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style3"><strong>AD SOYAD:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>MAİL:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>İÇERİK:</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Height="80px" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>YEMEK:</strong></td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="ONAYLA" Width="150px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
