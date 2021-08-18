<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.Yorumlar" %>
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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="+" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style18">
                    <asp:Button ID="Button2" runat="server" Text="-" Width="18px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style19"><strong>ONAYLANAN YORUM LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                             <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/istockphoto-1022975428-1024x1024.jpg" Width="30px" /></a>
                        </td>
                        <td class="auto-style10">
                           <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/images.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style7" Width="450px">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style11"  Text="+" OnClick="Button3_Click1" />
                        </strong></td>
                    <td class="auto-style18">
                        <asp:Button ID="Button4" runat="server"  Text="-" Width="18px" />
                    </td>
                    <td class="auto-style19"><strong>ONAYSIZ YORUM LİSTESİ</strong></td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
               
            </ItemTemplate>
        </asp:DataList>
        <asp:DataList ID="DataList4" runat="server"  Width="450px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                             <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/istockphoto-1022975428-1024x1024.jpg" Width="30px" />
                        </td>
                        <td class="auto-style10">
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/images.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    </asp:Content>
