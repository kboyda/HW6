<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
</head>

<body>
    <form id="form1" runat="server">
        <br /><a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp; <a href="NewRecipe.aspx" style="color: #696969">New Recipe</a>&nbsp; |&nbsp; <a href="AboutUs.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp; <a href="ContactUs.aspx" style="color: #696969">Contact</a>

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="btn_send" runat="server" Text="Send Message" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

        <br />
        <div class="footer" >@ 2014 Software Development & Design<br />
            </div>
    </form>
    
</body>
</html>