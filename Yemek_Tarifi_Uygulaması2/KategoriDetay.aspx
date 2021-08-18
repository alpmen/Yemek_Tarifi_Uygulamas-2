<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            color: #00FFCC;
            text-align: center;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style7 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6"><strong><a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("Yemekad") %>'></asp:Label>
                    </strong></td>
                </a>
            </tr>
            <tr>
                <td class="auto-style4"><strong><span class="auto-style3">Malzemeler: </span></strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong><span class="auto-style3">Tarif:</span></strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong><span class="auto-style3">Eklenme Tarihi:</span></strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style3">Puan:</span></strong>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td><strong><span class="auto-style3">&nbsp;Kategori:</span></strong>&nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Eval("Kategoriid") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
