<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmsrc.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="price-section">
    <div class="row">
    <h1>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        Search Doctors</h1>
      <div class="col-md-4 col-sm-6 box-pading">
        <div class="price-box">
          
          <p class="plan-slogn">Select Speciality</p>
            <asp:dropdownlist runat="server" id="drpspc" DataSourceID="ObjectDataSource1" DataTextField="spcnam" DataValueField="spccod" Height="17px" Width="344px"></asp:dropdownlist>
         
        </div>
      </div>
        <div class="col-md-4 col-sm-6 box-pading">
        <div class="price-box">
          
          <p class="plan-slogn">Select City</p>
            <asp:dropdownlist runat="server" id="drpcty" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="ctynam" DataValueField="ctycod" Height="18px" Width="343px"></asp:dropdownlist>
         
        </div>
      </div>
        <div class="col-md-4 col-sm-6 box-pading">
        <div class="price-box">
          
          <p class="plan-slogn">Select Area</p>
            <asp:dropdownlist runat="server" id="drpare" DataSourceID="ObjectDataSource3" DataTextField="arenam" DataValueField="arecod" Height="16px" Width="344px"></asp:dropdownlist>
         
        </div>
      </div>

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Disp_Rec" TypeName="nsgetwell.clsspc"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="Disp_Rec" TypeName="nsgetwell.clscty"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="Disp_Rec" TypeName="nsgetwell.clsare">
            <SelectParameters>
                <asp:ControlParameter ControlID="drpcty" Name="ctycod" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource4" Width="933px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Search Results">
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td rowspan="4" style="width: 230px">
    <img src="docpics/<%#Eval("doccod") %><%#Eval("docpic") %>"
        height="120px" width="120px" />
                                </td>
                                <td>
                <h3>
<a href="frmprf.aspx?dcod=<%#Eval("doccod") %>"><%#Eval("docnam") %></a>
                </h3>
                                </td>
                            </tr>
                            <tr>
                                <td>
        <asp:Rating ID="Rating1" runat="server" MaxRating="5" 
            CurrentRating='<%#Convert.ToInt32(Eval("revrat")) %>' 
               StarCssClass="ratingStar"
                    WaitingStarCssClass="savedRatingStar"
                    FilledStarCssClass="filledRatingStar"
                    EmptyStarCssClass="emptyRatingStar"
            ></asp:Rating>
                                </td>
                            </tr>
                            <tr>
                                <td>
                    <i><%#Eval("docqal") %></i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                <p><%#Eval("docadd") %></p>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="srcdoc" TypeName="nsgetwell.clsdoc">
            <SelectParameters>
                <asp:ControlParameter ControlID="drpare" Name="arecod" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="drpspc" Name="spccod" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

