<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
</head>
<body>
    <form id="form1" runat="server">
        <br /><a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp; <a href="NewRecipe.aspx" style="color: #696969">New Recipe</a>&nbsp; |&nbsp; <a href="AboutUs.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp; <a href="ContactUs.aspx" style="color: #696969">Contact</a>
    <div>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_kboyda_HW6 %>" DeleteCommand="DELETE FROM [kboyda_HW6] WHERE [recipe_name] = @recipe_name" InsertCommand="INSERT INTO [kboyda_HW6] ([recipe_name], [submitted_by]) VALUES (@recipe_name, @submitted_by)" SelectCommand="SELECT * FROM [kboyda_HW6]" UpdateCommand="UPDATE [kboyda_HW6] SET [submitted_by] = @submitted_by WHERE [recipe_name] = @recipe_name">
            <DeleteParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="recipe_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recipe_name" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" ReadOnly="True" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:ButtonField Text="Select" />
            </Columns>
        </asp:GridView>


    </div>
        <br />
        <div class="footer" >@ 2014 Software Development & Design<br />
            </div>
    </form>
</body>
</html>
