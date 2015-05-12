<%@ Page Title="Информация о пациентах" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MyCourse.Services" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <div class="officers1">
          <h3 align="right">
              <asp:SiteMapPath ID="SiteMapPath1" runat="server">
              </asp:SiteMapPath>
          </h3>
        
   <h5> 

       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_Officer" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
               <asp:BoundField DataField="ID_Officer" HeaderText="ID_Officer" ReadOnly="True" SortExpression="ID_Officer" />
               <asp:BoundField DataField="Surname_officer" HeaderText="Surname_officer" SortExpression="Surname_officer" />
               <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
               <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
               <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
               <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
               <asp:BoundField DataField="Passport_data" HeaderText="Passport_data" SortExpression="Passport_data" />
               <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
               <asp:BoundField DataField="Specialty" HeaderText="Specialty" SortExpression="Specialty" />
           </Columns>
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString1 %>" DeleteCommand="DELETE FROM [Officers] WHERE [ID_Officer] = @ID_Officer" InsertCommand="INSERT INTO [Officers] ([Surname_officer], [DateOfBirth], [Sex], [Address], [Phone], [Passport_data], [Education], [Specialty]) VALUES (@Surname_officer, @DateOfBirth, @Sex, @Address, @Phone, @Passport_data, @Education, @Specialty)" ProviderName="<%$ ConnectionStrings:HospitalConnectionString1.ProviderName %>" SelectCommand="SELECT [ID_Officer], [Surname_officer], [DateOfBirth], [Sex], [Address], [Phone], [Passport_data], [Education], [Specialty] FROM [Officers]" UpdateCommand="UPDATE [Officers] SET [Surname_officer] = @Surname_officer, [DateOfBirth] = @DateOfBirth, [Sex] = @Sex, [Address] = @Address, [Phone] = @Phone, [Passport_data] = @Passport_data, [Education] = @Education, [Specialty] = @Specialty WHERE [ID_Officer] = @ID_Officer">
           <DeleteParameters>
               <asp:Parameter Name="ID_Officer" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="Surname_officer" Type="String" />
               <asp:Parameter DbType="Date" Name="DateOfBirth" />
               <asp:Parameter Name="Sex" Type="String" />
               <asp:Parameter Name="Address" Type="String" />
               <asp:Parameter Name="Phone" Type="Int32" />
               <asp:Parameter Name="Passport_data" Type="Int32" />
               <asp:Parameter Name="Education" Type="String" />
               <asp:Parameter Name="Specialty" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="Surname_officer" Type="String" />
               <asp:Parameter DbType="Date" Name="DateOfBirth" />
               <asp:Parameter Name="Sex" Type="String" />
               <asp:Parameter Name="Address" Type="String" />
               <asp:Parameter Name="Phone" Type="Int32" />
               <asp:Parameter Name="Passport_data" Type="Int32" />
               <asp:Parameter Name="Education" Type="String" />
               <asp:Parameter Name="Specialty" Type="String" />
               <asp:Parameter Name="ID_Officer" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>

    </h5>
      </div>
 </asp:Content>
