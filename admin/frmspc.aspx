<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmspc.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Contact">
      <h1>Specialities</h1>
    <div class="input-form">
      <label class="" for="inputEmail">Speciality Name</label>
        <asp:Textbox runat="server" id="txtspcnam" cssclass="form-control"></asp:Textbox>    
    </div>
    
        
        <div class="input-form">
      <label class="" for="inputEmail">Description</label>
       <asp:Textbox runat="server" id="txtdsc" cssclass="form-control" textmode="Multiline" Height="216px"></asp:Textbox>
        </div>
        <asp:Button id="btnsub" cssclass="btn btn-lg btn-block" 
            Text="Submit" runat="server" OnClick="btnsub_Click"></asp:Button>      
        <br />
        <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" DataKeyNames="spccod" DataSourceID="ObjectDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:BoundField DataField="spcnam" HeaderText="Speciality" SortExpression="spcnam" />
                <asp:BoundField DataField="spcdsc" HeaderText="Description" SortExpression="spcdsc" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Disp_Rec" TypeName="nsgetwell.clsspc"></asp:ObjectDataSource>
    </div>
</asp:Content>

