<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> W.E.R.: Recipes</title>
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipe_name" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                recipe_name:
                <asp:Label ID="recipe_nameLabel1" runat="server" Text='<%# Eval("recipe_name") %>' />
                <br />
                submitted_by:
                <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' />
                <br />
                ingredient_1:
                <asp:TextBox ID="ingredient_1TextBox" runat="server" Text='<%# Bind("ingredient_1") %>' />
                <br />
                ingredient_2:
                <asp:TextBox ID="ingredient_2TextBox" runat="server" Text='<%# Bind("ingredient_2") %>' />
                <br />
                ingredient_3:
                <asp:TextBox ID="ingredient_3TextBox" runat="server" Text='<%# Bind("ingredient_3") %>' />
                <br />
                ingredient_4:
                <asp:TextBox ID="ingredient_4TextBox" runat="server" Text='<%# Bind("ingredient_4") %>' />
                <br />
                ingredient_5:
                <asp:TextBox ID="ingredient_5TextBox" runat="server" Text='<%# Bind("ingredient_5") %>' />
                <br />
                preparation:
                <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                <br />
                notes:
                <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table>

                    <tr>

                        <td>
                            Recipe Name:
                        </td>

                         <td>
                              <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>

                    </tr>


                </table>



                recipe_name:
                <asp:TextBox ID="recipe_nameTextBox" runat="server" Text='<%# Bind("recipe_name") %>' />
                <br />
                submitted_by:
                <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' />
                <br />
                ingredient_1:
                <asp:TextBox ID="ingredient_1TextBox" runat="server" Text='<%# Bind("ingredient_1") %>' />
                <br />
                ingredient_2:
                <asp:TextBox ID="ingredient_2TextBox" runat="server" Text='<%# Bind("ingredient_2") %>' />
                <br />
                ingredient_3:
                <asp:TextBox ID="ingredient_3TextBox" runat="server" Text='<%# Bind("ingredient_3") %>' />
                <br />
                ingredient_4:
                <asp:TextBox ID="ingredient_4TextBox" runat="server" Text='<%# Bind("ingredient_4") %>' />
                <br />
                ingredient_5:
                <asp:TextBox ID="ingredient_5TextBox" runat="server" Text='<%# Bind("ingredient_5") %>' />
                <br />
                preparation:
                <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                <br />
                notes:
                <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>

                


                recipe_name:
                <asp:Label ID="recipe_nameLabel" runat="server" Text='<%# Eval("recipe_name") %>' />
                <br />
                submitted_by:
                <asp:Label ID="submitted_byLabel" runat="server" Text='<%# Bind("submitted_by") %>' />
                <br />
                ingredient_1:
                <asp:Label ID="ingredient_1Label" runat="server" Text='<%# Bind("ingredient_1") %>' />
                <br />
                ingredient_2:
                <asp:Label ID="ingredient_2Label" runat="server" Text='<%# Bind("ingredient_2") %>' />
                <br />
                ingredient_3:
                <asp:Label ID="ingredient_3Label" runat="server" Text='<%# Bind("ingredient_3") %>' />
                <br />
                ingredient_4:
                <asp:Label ID="ingredient_4Label" runat="server" Text='<%# Bind("ingredient_4") %>' />
                <br />
                ingredient_5:
                <asp:Label ID="ingredient_5Label" runat="server" Text='<%# Bind("ingredient_5") %>' />
                <br />
                preparation:
                <asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation") %>' />
                <br />
                notes:
                <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
