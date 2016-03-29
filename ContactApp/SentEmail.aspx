<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SentEmail.aspx.cs" Inherits="ContactApp.SentEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Panel ID="asphead" runat="server" Width="1340px" Height="60px" Font-Italic="true" Font-Size="60px" BackColor="#666699">
            <header id="Header1" runat="server">Email
            </header>
        </asp:Panel>
        <asp:Panel ID="emailpage" runat="server" HorizontalAlign="Center" BackColor="#6666ff" Width="588px" Height="550px" Style="margin-left: 338px">
            <div>
                <asp:Label ID="lblto" runat="server" Text="To" Height="20px" Width="50px"></asp:Label>
                <asp:TextBox ID="txtto" runat="server" Width="400px"></asp:TextBox>
            </div>
            <div>
                &nbsp
            </div>
            <div>
                <asp:Label ID="lblcc" runat="server" Text="cc" Height="20px" Width="50px"></asp:Label>
                <asp:TextBox ID="txtcc" runat="server" Width="400px"></asp:TextBox>
            </div>
            <div>
                &nbsp
            </div>
            <div>
                <asp:Label ID="lblsub" runat="server" Text="Subject" Height="20px" Width="50px"></asp:Label>
                <asp:TextBox ID="txtsub" runat="server" Width="400px"></asp:TextBox>
            </div>
            <div>
                &nbsp
            </div>
            <div>
                <asp:TextBox ID="txtemailcontaint" runat="server" Width="400px" Height="300px" TextMode="MultiLine" Style="margin-left: 53px"></asp:TextBox>
            </div>
            <div>&nbsp</div>
            <div>
                <asp:Button ID="btnsend" runat="server" Text="Send" Height="40px" Width="180px" Style="margin-right: 176px" OnClick="ClickMail" />
            </div>
            <div>
                Change1 in Demo Project
            </div>
        </asp:Panel>
    </form>
</body>
</html>

