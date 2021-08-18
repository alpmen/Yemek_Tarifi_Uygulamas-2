<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        background-color: #CCCCCC;
    }
    .auto-style8 {
        text-align: center;
        font-size: x-large;
    }
    .auto-style10 {
        text-align: left;
        background-color: #6699FF;
    }
    .auto-style11 {
        font-size: large;
        font-style: italic;
    }
    .auto-style12 {
        font-weight: bold;
        font-size: large;
        background-color: #CCFFFF;
    }
    .auto-style13 {
        text-align: center;
        background-color: #6699FF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7">
    <div class="auto-style8">
        <strong>HAKKIMIZDA</strong><table class="auto-style4">
            <tr>
                <td class="auto-style10"><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11" Height="250px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Text="GÜNCELLE" OnClick="Button1_Click" />
                    </strong></td>
            </tr>
        </table>
    </div>
</asp:Panel>
</asp:Content>
