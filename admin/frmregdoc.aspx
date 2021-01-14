<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmregdoc.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Register Doctor</h2>
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 294px">Select City</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="ctynam" DataValueField="ctycod">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 294px">Select Area</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource2" DataTextField="arenam" DataValueField="arecod">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 294px">Select Speciality</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSource3" DataTextField="spcnam" DataValueField="spccod">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 294px">Doctor Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="334px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 294px">Doctor Email</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="334px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 294px">Doctor Phone No</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="334px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 294px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 294px">&nbsp;</td>
            <td>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Disp_Rec" TypeName="nsgetwell.clscty"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="Disp_Rec" TypeName="nsgetwell.clsare">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="ctycod" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="Disp_Rec" TypeName="nsgetwell.clsspc"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

