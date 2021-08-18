<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList3" runat="server" OnSelectedIndexChanged="DataList3_SelectedIndexChanged" Width="447px">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">&nbsp;<strong><asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                </strong></td>
                        </tr>
                    </table>
                    <span class="auto-style5"><strong>Yemek Malzemesi:</strong></span>&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td><span class="auto-style5"><strong>Yemek Tarifi: </strong> </span>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                                <br />
                                <asp:Image ID="Image1" runat="server" Height="109px" ImageUrl='<%# Eval("YemekResim") %>' Width="418px" />
                                <br />
                                <span class="auto-style5"><strong>Puan:</strong></span>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                <br />
                                <span class="auto-style5"><strong>Tarih:</strong></span>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
