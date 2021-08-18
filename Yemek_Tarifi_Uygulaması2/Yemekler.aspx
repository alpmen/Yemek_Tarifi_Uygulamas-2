<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            background-color: #CCCCCC;
        }
    .auto-style8 {
        font-size: x-large;
    }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style12 {
            width: 26px;
        }
        .auto-style13 {
            width: 25px;
        }
        .auto-style14 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style15 {
            width: 350px;
        }
        .auto-style16 {
            height: 23px;
        }
        .auto-style17 {
            width: 26px;
            height: 30px;
        }
        .auto-style18 {
            width: 25px;
            height: 30px;
        }
        .auto-style19 {
            font-size: large;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7">
        <table class="auto-style4">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="+" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style18">
                    <asp:Button ID="Button2" runat="server" Text="-" Width="18px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style19"><strong>YEMEK İŞLEMLERİ</strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem2=sil&Kategoriid=<%#Eval("Kategoriid") %>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/istockphoto-1022975428-1024x1024.jpg" Width="30px" /></a>
                        </td>
                        <td class="auto-style10">
                           <a href ="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/images.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style7">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Text="+" OnClick="Button3_Click"  />
                        </strong></td>
                    <td class="auto-style13">
                        <asp:Button ID="Button4" runat="server" Text="-" Width="18px" OnClick="Button4_Click"  />
                    </td>
                    <td class="auto-style3"><strong>YEMEK EKLEME</strong></td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>YEMEK AD:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>MALZEMELER</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="60px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>YEMEK TARİFİ</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>KATEGORİ</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style14" OnClick="Button5_Click" Text="EKLE" Width="150px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
