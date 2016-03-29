<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ContactApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">

        <asp:Panel ID="panelheader" runat="server" Width="1340px" Height="60px" Font-Italic="true" Font-Size="60px">
            <header id="Header1" runat="server" title="Telecom">
            </header>
        </asp:Panel>
        <asp:Panel ID="panelcontent" runat="server">
            <asp:Panel ID="content" runat="server" HorizontalAlign="Center" BackColor="#6666ff" Width="588px" Height="250px" style="margin-left: 338px">
                <div>
                    <asp:Label ID="login" runat="server" Text="Login" Font-Bold="true" Font-Size="40px" Height="10px" Width="10px"></asp:Label>
                </div>
                <div>
                     &nbsp
                </div>
                <div>
                    <asp:Label ID="lableusername" runat="server" Text="User Name" Height="15px" Width="150px"></asp:Label>
                    <asp:TextBox ID="textusername" runat="server" Height="25px" Width="250px"></asp:TextBox>
                </div>
                <div>

                    &nbsp
                </div>
                <div>
                    <asp:Label ID="lablepassword" runat="server" Text="Password" Height="15px" Width="150px"></asp:Label>
                    <asp:TextBox ID="textpassword" runat="server" Height="25px" Width="250px"></asp:TextBox>
                </div>
                <div>
                    &nbsp
                </div>
              
                <div>
                    <asp:Button ID="buttonlogin" runat="server" Text="Login" Height="30px" Width="156px" style="margin-left: 48px" OnClick="btnResendActivationLink_Click"  />
                </div>
                <div>
                  
                    <asp:Label ID="lblmsg" runat="server" Height="25px" Width="758px"></asp:Label>
                </div>

                <div>                  
                    change2 in master branch
                </div>
                <div>                  
                    change3 in master branch
                </div>
                <div>                  
                    change4 in master branch
                </div>
                <div>                  
                    change5 in master branch after creating demo project 2
                </div>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
