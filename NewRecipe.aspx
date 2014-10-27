<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="NewRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>W.E.R.: New Recipe</title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="center">
        <div class="header">
            <br />
                Wicked Easy Recipes

        </div>
                Using 5 Ingedients or Less!
        <br />
        <br />
        <a href="Default.aspx" style="color: #FFFFFF">Home</a>&nbsp; |&nbsp; 
        <a href="NewRecipe.aspx" style="color: #FFFFFF">New Recipe</a>&nbsp; |&nbsp; 
        <a href="AboutUs.aspx" style="color: #FFFFFF">About Us</a>&nbsp; |&nbsp; 
        <a href="ContactUs.aspx" style="color: #FFFFFF">Contact</a>
    </div>
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_kboyda_HW6 %>" DeleteCommand="DELETE FROM [kboyda_HW6.1] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [kboyda_HW6.1] ([recipe_name], [submitted_by], [ingred_1], [ingred_2], [ingred_3], [ingred_4], [ingred_5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ingred_1, @ingred_2, @ingred_3, @ingred_4, @ingred_5, @preparation, @notes)" SelectCommand="SELECT * FROM [kboyda_HW6.1]" UpdateCommand="UPDATE [kboyda_HW6.1] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ingred_1] = @ingred_1, [ingred_2] = @ingred_2, [ingred_3] = @ingred_3, [ingred_4] = @ingred_4, [ingred_5] = @ingred_5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingred_1" Type="String" />
                <asp:Parameter Name="ingred_2" Type="String" />
                <asp:Parameter Name="ingred_3" Type="String" />
                <asp:Parameter Name="ingred_4" Type="String" />
                <asp:Parameter Name="ingred_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingred_1" Type="String" />
                <asp:Parameter Name="ingred_2" Type="String" />
                <asp:Parameter Name="ingred_3" Type="String" />
                <asp:Parameter Name="ingred_4" Type="String" />
                <asp:Parameter Name="ingred_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="283px" AutoGenerateRows="False" DataKeyNames="recipeID" HorizontalAlign="Center">
            <Fields>
                <asp:BoundField DataField="recipeID" HeaderText="recipeID" InsertVisible="False" ReadOnly="True" SortExpression="recipeID" />
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:BoundField DataField="ingred_1" HeaderText="Ingredient #1" SortExpression="ingred_1" />
                <asp:BoundField DataField="ingred_2" HeaderText="Ingredient #2" SortExpression="ingred_2" />
                <asp:BoundField DataField="ingred_3" HeaderText="Ingredient #3" SortExpression="ingred_3" />
                <asp:BoundField DataField="ingred_4" HeaderText="Ingredient #4" SortExpression="ingred_4" />
                <asp:BoundField DataField="ingred_5" HeaderText="Ingredient #5" SortExpression="ingred_5" />
                <asp:BoundField DataField="preparation" HeaderText="Preparation" SortExpression="preparation" />
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    
        <br />
        <br />
    
    </div>
        <br />
       <div class="footer" >&#169 2014. Kboyda HW6 - Software Development & Design
            <br />
            </div>
    </form>
</body>
</html>
