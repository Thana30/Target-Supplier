<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact_Page.aspx.cs" Inherits="Thana_Supplier.Contact_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfContact_ID" runat="server" />

            <table>
                
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                       
                    </td>

                            <td colspan="2">
                                <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
                              </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Mobile:"></asp:Label>
                       
                    </td>

                            <td colspan="2">
                                <asp:TextBox ID="TextMobile" runat="server"></asp:TextBox>
                              </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Adress"></asp:Label>
                       
                    </td>

                            <td colspan="2">
                                <asp:TextBox ID="TextAdress" runat="server"   TextMode="MultiLine"></asp:TextBox>

                              </td>
                </tr>


                 <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Degree"></asp:Label>
                       
                    </td>

                            <td colspan="2">
                               
                                 <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">

                <asp:ListItem Text="Diploma" Value="Dip">  </asp:ListItem>
                <asp:ListItem Text="Graduate" Value="G">  </asp:ListItem>
                <asp:ListItem Text="Post Graduate" Value="PG">  </asp:ListItem>
                <asp:ListItem Text="Doctorate" Value="Doc">  </asp:ListItem>


            </asp:CheckBoxList>


                              </td>
                </tr>

              


                <tr>
                 

                            <td colspan="2">

                                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                                <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                                <asp:Button ID="btnUpdate" runat="server" Text="Search" OnClick="btnUpdate_Click" />

                              </td>
                </tr>

    <tr>
              

                            <td colspan="2">

                                <asp:Label ID="lblSuccessMsg" runat="server" Text="" ForeColor="Green"></asp:Label>

                              </td>
                </tr>


                    <tr>
                 

                            <td colspan="2">

                               <asp:Label ID="lblErrorMsg" runat="server" Text="" ForeColor="Red"></asp:Label>

                              </td>
                </tr>


            </table>

            <br />


            <asp:GridView ID="gvContact" runat="server" AutoGenerateColumns="false" >

                 <Columns>

            <asp:BoundField Datafield="Name" HeaderText="Name" />
            <asp:BoundField Datafield="Mobile" HeaderText="Mobile" />
            <asp:BoundField Datafield="Address" HeaderText="Address" />
             <asp:BoundField Datafield="Degree" HeaderText="Degree" />
             
           <asp:TemplateField>

               <ItemTemplate>

<asp:LinkButton ID="LinkView" runat="server" CommandArgument= '<%# Eval("Contact_ID") %>' OnClick="lnk_OnClick">Edit</asp:LinkButton>


               </ItemTemplate>

           </asp:TemplateField>

            </Columns>


            </asp:GridView>
           

            



        </div>
    </form>
</body>
</html>
