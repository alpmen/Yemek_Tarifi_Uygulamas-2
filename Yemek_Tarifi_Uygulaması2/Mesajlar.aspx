<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style7 {
            background-color: #CCCCCC;
        }
        .auto-style17 {
            width: 26px;
            height: 30px;
        }
        .auto-style11 {
            font-weight: bold;
            margin-bottom: 0px;
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
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7">
        <table class="auto-style4">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="+"  />
                    </strong></td>
                <td class="auto-style18">
                    <asp:Button ID="Button2" runat="server" Text="-" Width="18px" />
                </td>
                <td class="auto-style19"><strong>MESAJLAR LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                           <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/oneri.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    </asp:Content>
