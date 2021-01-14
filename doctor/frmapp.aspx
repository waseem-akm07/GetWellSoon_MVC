<%@ Page Title="" Language="C#" MasterPageFile="~/doctor/MasterPage.master" AutoEventWireup="true" CodeFile="frmapp.aspx.cs" Inherits="doctor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Recent Appointments</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" Width="908px" AutoGenerateColumns="False" DataKeyNames="appreqcod,appreqsts" Height="164px" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:BoundField DataField="appreqdat" DataFormatString="{0:d}" HeaderText="App. Date" />
                <asp:BoundField DataField="appreqtim" HeaderText="App. Time" />
                <asp:BoundField DataField="usreml" HeaderText="Patient Email" />
                <asp:BoundField DataField="usrphn" HeaderText="Patient Phone No" />
                <asp:BoundField DataField="appreqdsc" HeaderText="Requect Desc" />
                <asp:TemplateField>
                    <ItemTemplate>
 <asp:LinkButton ID="lk1" runat="server" CommandName="Edit" Text="Approve" />
  &nbsp;&nbsp;&nbsp;&nbsp;
 <asp:LinkButton ID="lk2" runat="server" CommandName="Delete" Text="Reject" />
 <asp:Label ID="lbl1" runat="server" Font-Bold="true"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="dspappreq" TypeName="nsgetwell.clsappreq">
            <SelectParameters>
                <asp:SessionParameter Name="doccod" SessionField="cod" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

