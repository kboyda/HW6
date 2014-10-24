<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="NewRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>W.E.R.: New Recipe</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_kboyda_HW6 %>" DeleteCommand="DELETE FROM [kboyda_HW6] WHERE [recipe_name] = @recipe_name" InsertCommand="INSERT INTO [kboyda_HW6] ([recipe_name], [submitted_by], [ingredient_1], [ingredient_2], [ingredient_3], [ingredient_4], [ingredient_5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ingredient_1, @ingredient_2, @ingredient_3, @ingredient_4, @ingredient_5, @preparation, @notes)" SelectCommand="SELECT * FROM [kboyda_HW6]" UpdateCommand="UPDATE [kboyda_HW6] SET [submitted_by] = @submitted_by, [ingredient_1] = @ingredient_1, [ingredient_2] = @ingredient_2, [ingredient_3] = @ingredient_3, [ingredient_4] = @ingredient_4, [ingredient_5] = @ingredient_5, [preparation] = @preparation, [notes] = @notes WHERE [recipe_name] = @recipe_name">
            <DeleteParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingredient_1" Type="String" />
                <asp:Parameter Name="ingredient_2" Type="String" />
                <asp:Parameter Name="ingredient_3" Type="String" />
                <asp:Parameter Name="ingredient_4" Type="String" />
                <asp:Parameter Name="ingredient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingredient_1" Type="String" />
                <asp:Parameter Name="ingredient_2" Type="String" />
                <asp:Parameter Name="ingredient_3" Type="String" />
                <asp:Parameter Name="ingredient_4" Type="String" />
                <asp:Parameter Name="ingredient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipe_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipe_name" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
               
            </EditItemTemplate>
            <InsertItemTemplate>

                <table>

                    <tr>

                        <td>
                            Recipe Name
                        </td>

                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>

                    </tr>

                     <tr>

                        <td>
                            Submitted By
                        </td>

                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>

                    </tr>

                     <tr>

                        <td>
                            Ingredient #1
                        </td>

                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ingredient_1") %>' />
                        </td>

                    </tr>

                     <tr>

                        <td>
                            Ingredient #2
                        </td>

                        <td>
                             <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ingredient_2") %>' />
                        </td>

                    </tr>

                     <tr>

                        <td>
                            Ingredient #3
                        </td>

                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ingredient_3") %>' />
                        </td>

                    </tr>

                     <tr>

                        <td>
                            Ingredient #4
                        </td>

                        <td>
                             <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ingredient_4") %>' />
                        </td>

                    </tr>

                     <tr>

                        <td>
                            Ingredient #5
                        </td>

                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ingredient_5") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Preparation
                        </td>

                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Notes
                        </td>

                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("notes") %>' />
                        </td>

                    </tr>
                     <tr>

                        <td>
                            <asp:Button ID="btn_save" runat="server" CausesValidation="true" CommandName="Insert" Text="Save" />
                        </td>

                        

                    </tr>

                </table>

               
            </InsertItemTemplate>
            <ItemTemplate>
             
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
