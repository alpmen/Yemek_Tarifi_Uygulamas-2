<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnayla.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.TarifOnayla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        font-weight: bold;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>TARİF AD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>TARİF MALZEME:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Width="200px" Height="80px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>TARİF YAPILIŞ:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Width="200px" Height="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>TARİF SAHİP:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>TARİF SAHİP MAİL:</strong></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="ONAYLA" />
                </strong></td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
