<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmcty.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="Contact">
        <h1>Cities</h1>
        <div class="input-form">
            <label class="" for="inputEmail">City Name</label>
            <asp:TextBox runat="server" ID="txtctynam" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="btnsub" CssClass="btn btn-lg btn-block"
            Text="Submit" runat="server" OnClick="btnsub_Click"></asp:Button>
        <br />
        <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" DataKeyNames="ctycod" DataSourceID="ObjectDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:BoundField DataField="ctynam" HeaderText="Name" SortExpression="ctynam" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Disp_Rec" TypeName="nsgetwell.clscty"></asp:ObjectDataSource>
    </div>
</asp:Content>

