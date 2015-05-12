<%@ Page Title="Информация о пациентах" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MyCourse.Services" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
  
    <div class="bel"><h5>
   
    
  
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_Belong" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID_Officer" HeaderText="ID_Officer" SortExpression="ID_Officer" />
                <asp:BoundField DataField="ID_separation" HeaderText="ID_separation" SortExpression="ID_separation" />
                <asp:BoundField DataField="ID_Belong" HeaderText="ID_Belong" ReadOnly="True" SortExpression="ID_Belong" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hospitals1ConnectionString %>" DeleteCommand="DELETE FROM [BelongingToTheSeparations] WHERE [ID_Belong] = @ID_Belong" InsertCommand="INSERT INTO [BelongingToTheSeparations] ([ID_Officer], [ID_separation]) VALUES (@ID_Officer, @ID_separation)" ProviderName="<%$ ConnectionStrings:hospitals1ConnectionString.ProviderName %>" SelectCommand="SELECT [ID_Officer], [ID_separation], [ID_Belong] FROM [BelongingToTheSeparations]" UpdateCommand="UPDATE [BelongingToTheSeparations] SET [ID_Officer] = @ID_Officer, [ID_separation] = @ID_separation WHERE [ID_Belong] = @ID_Belong">
            <DeleteParameters>
                <asp:Parameter Name="ID_Belong" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_Officer" Type="Int32" />
                <asp:Parameter Name="ID_separation" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_Officer" Type="Int32" />
                <asp:Parameter Name="ID_separation" Type="Int32" />
                <asp:Parameter Name="ID_Belong" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

   
    
  
    
</asp:Content>
