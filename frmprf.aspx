<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmprf.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
     <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1" Width="946px" OnEditCommand="DataList1_EditCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
          
     
            <table class="nav-justified">
                <tr>
                    <td rowspan="7" style="width: 310px">
    <img src="docpics/<%#Eval("doccod") %><%#Eval("docpic") %>"
        height="250px" width="250px" border="2" />
                    </td>
                    <td>
    <h3><%#Eval("docnam") %></h3>
                    </td>
                </tr>
                <tr>
                    <td>
        <h4><%#Eval("docqal") %></h4>
                    </td>
                </tr>
                <tr>
                    <td>
        Address :<%#Eval("docadd") %></td>
                </tr>
                <tr>
                    <td>
        Avaliability :<%#Eval("docavltim") %></td>
                </tr>
                <tr>
                    <td>
        <p><%#Eval("docprf") %></p>
                    </td>
                </tr>
                <tr>
                    <td>
        <asp:Button ID="b1" runat="server" CommandName="Edit"
            text="Book Appointment" CssClass="btn-default" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
          
     
        </ItemTemplate>
    </asp:DataList>

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Find_Rec" TypeName="nsgetwell.clsdoc">
        <SelectParameters>
            <asp:QueryStringParameter Name="doccod" QueryStringField="dcod" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2" Width="946px">
        <Columns>
            <asp:TemplateField HeaderText="Reviews">
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 726px">&nbsp;</td>
                            <td>Posted Date:<%#Eval("revdat","{0:d}") %></td>
                        </tr>
                        <tr>
                            <td style="width: 726px">Posted By: <%#Eval("usreml") %></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 726px">
 <asp:Rating ID="Rating1" runat="server" MaxRating="5" 
            CurrentRating='<%#Convert.ToInt32(Eval("revscr")) %>' 
               StarCssClass="ratingStar"
                    WaitingStarCssClass="savedRatingStar"
                    FilledStarCssClass="filledRatingStar"
                    EmptyStarCssClass="emptyRatingStar"
            ></asp:Rating>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <p><%#Eval("revdsc") %></p>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
           <br />
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="dsprev" TypeName="nsgetwell.clsrev">
        <SelectParameters>
            <asp:QueryStringParameter Name="doccod" QueryStringField="dcod" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

