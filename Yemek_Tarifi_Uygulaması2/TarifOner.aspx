<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 40px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            margin-left: 40px;
        }
        .auto-style7 {
            height: 26px;
            font-size: large;
        }
        .auto-style8 {
            font-size: large;
            height: 90px;
        }
        .auto-style9 {
            height: 90px;
            margin-left: 40px;
        }
        .auto-style10 {
            font-weight: bold;
        }
        .auto-style11 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Yemek Adı:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Malzemeler:</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox2" runat="server" Height="80px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Yapılış:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Resim:</strong></td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail Adrsi:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>
                <asp:Button ID="Button1" runat="server" BackColor="#CCFFFF" CssClass="auto-style10" Text="TARİF ÖNER" Width="178px" Height="41px" OnClick="Button1_Click" />
                </strong></td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

