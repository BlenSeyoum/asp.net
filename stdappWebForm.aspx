<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stdappWebForm.aspx.cs" Inherits="Studentapp.stdappWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" 
        AutoGenerateColumns="false" DataKeyNames="studId">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
            <Columns>
                <asp:TemplateField HeaderText="studID" >
                <ItemTemplate>
                    <asp:Label ID="lblstudID" runat="server" Text='<%# Eval("studID") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtstudID" runat="server" Text='<%# Eval("studID") %>'></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>   
                <asp:TemplateField HeaderText="firstname" >
                    <ItemTemplate>
                        <asp:Label ID="lblfirstname" runat="server" Text='<%# Eval("firstname") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfirstname" runat="server" Text='<%# Eval("firstname") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="fathername" >
                    <ItemTemplate>
                        <asp:Label ID="lblfathername" runat="server" Text='<%# Eval("fathername") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfathername" runat="server" Text='<%# Eval("fathername") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="grandfathername" >
                <ItemTemplate>
                    <asp:Label ID="lblgrandfathername" runat="server" Text='<%# Eval("grandfathername") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtgrandfathername" runat="server" Text='<%# Eval("grandfathername") %>'></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="dateofBirth" >
                <ItemTemplate>
                    <asp:Label ID="lbldateofBirth" runat="server" Text='<%# Eval("dateofBirth") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    
                    <asp:TextBox ID="txtdateofBirth" runat="server" Text='<%# Eval("dateofBirth") %>'></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="createdDate" >
                <ItemTemplate>
                    <asp:Label ID="lblcreatedDate" runat="server" Text='<%# Eval("createdDate") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtcreatedDate" runat="server" Text='<%# Eval("createdDate") %>'></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="gender" >
                <ItemTemplate>
                    <asp:Label ID="lblgender" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtgender" runat="server" Text='<%# Eval("gender") %>'></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>
        </Columns>
        </asp:GridView>
        <table border="1"  style="border-collapse: collapse">
        <tr>
            <td valign ="top">
                firstname:<br />
                <asp:TextBox ID="txtfirstname" runat="server"  />
            </td>
            <td valign ="top">
                fathername:<br />
                <asp:TextBox ID="txtfathername" runat="server"  />
            </td>
            <td valign ="top">
                grandfathername:<br />
                <asp:TextBox ID="txtgrandfathername" runat="server"  />
            </td>
            <td valign ="top" height =" ">
                dateofBirth:<br />
                <asp:TextBox ID="txtdateofBirth" runat="server"  />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="26px" ImageUrl="~/images/calendar-icon.png" OnClick="ImageButton1_Click" Width="29px" />
                <asp:Calendar ID="dateofBirthCalendar" runat="server" OnSelectionChanged="dateofBirthCalendar_SelectionChanged"></asp:Calendar> 
            </td>
            <td valign ="top" >
                createdDate:<br />
                <asp:TextBox ID="txtcreatedDate" runat="server"  />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/images/calendar-icon.png" OnClick="ImageButton2_Click" Width="31px" />
                <asp:Calendar ID="createdDateCalendar" runat="server" OnSelectionChanged="createdDateCalendar_SelectionChanged"></asp:Calendar>
             </td>

            <td valign ="top">
                gender:<br />
                <asp:TextBox ID="txtgender" runat="server"  />
            </td>
            <td valign ="top">
                 <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" />

            </td>
            <td valign ="top">
                <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
            </td>
       </tr>
      </table>
    </div>
  </form>
</body>
</html>
