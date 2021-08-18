<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Tarifi_Uygulaması2.Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            background-color: #CCCCCC;
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

        .auto-style20 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7">
        <table class="auto-style4">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style19"><strong>ONAYSIZ TARİFLER LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>


    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <itemtemplate>
            </itemtemplate>
        </asp:DataList>
        <asp:DataList ID="DataList2" runat="server" Width="450px">
            <itemtemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style15">
                            <strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" style="font-size: large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style20">&nbsp;
                            
                            <a href="TarifOnayla.aspx?Tarifid=<%#Eval("Tarifid")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/oneri.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>


    <asp:Panel ID="Panel3" runat="server">
        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style7">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style19"><strong>ONAYLI TARİFLER LİSTESİ</strong></td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>

    <asp:Panel ID="Panel5" runat="server">
        <asp:DataList ID="DataList3" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style20">
                           <a href="TarifOnayKaldır.aspx?Tarifid=<%#Eval("Tarifid") %>"> <asp:Image ID="Image4" runat="server" Height="32px" ImageUrl="~/resimler/oneri.png" />   </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
