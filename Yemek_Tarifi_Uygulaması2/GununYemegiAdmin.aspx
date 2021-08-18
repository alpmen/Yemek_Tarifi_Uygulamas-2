<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style17 {
            width: 26px;
            height: 30px;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style18 {
            width: 25px;
            height: 30px;
        }
        .auto-style19 {
            font-size: large;
            height: 30px;
        }
        .auto-style15 {
            width: 350px;
        }
        .auto-style8 {
        font-size: x-large;
    }
        .auto-style10 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4" __designer:mapid="36b">
        <tr __designer:mapid="36c">
            <td class="auto-style17" __designer:mapid="36d"><strong __designer:mapid="36e">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="+" OnClick="Button1_Click" style="height: 26px" />
                </strong></td>
            <td class="auto-style18" __designer:mapid="370">
                <asp:Button ID="Button2" runat="server" Text="-" Width="18px" OnClick="Button2_Click" />
            </td>
            <td class="auto-style19" __designer:mapid="372"><strong __designer:mapid="373">YEMEK İŞLEMLERİ</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
               
            </ItemTemplate>
        </asp:DataList>
        <asp:DataList ID="DataList2" runat="server"  Width="450px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                           <a href ="GununYemegiSec.aspx?Yemekid=<%#Eval("Yemekid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/124082882-choice-icon.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>
