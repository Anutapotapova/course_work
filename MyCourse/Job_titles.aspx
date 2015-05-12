<%@ Page Title="Информация о должностях" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MyCourse.Services" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <div class="job_titles1"><h3 align="right">
          <asp:SiteMapPath ID="SiteMapPath1" runat="server">
          </asp:SiteMapPath>
         </h3> <h5>

          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_job_title" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." AllowPaging="True" AllowSorting="True">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                  <asp:BoundField DataField="ID_job_title" HeaderText="ID_job_title" ReadOnly="True" SortExpression="ID_job_title" />
                  <asp:BoundField DataField="NameOfTitle" HeaderText="NameOfTitle" SortExpression="NameOfTitle" />
                  <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                  <asp:BoundField DataField="Responsibility" HeaderText="Responsibility" SortExpression="Responsibility" />
                  <asp:BoundField DataField="Demands" HeaderText="Demands" SortExpression="Demands" />
                  <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString1 %>" DeleteCommand="DELETE FROM [Job_titles] WHERE [ID_job_title] = @ID_job_title" InsertCommand="INSERT INTO [Job_titles] ([NameOfTitle], [Salary], [Responsibility], [Demands], [Category]) VALUES (@NameOfTitle, @Salary, @Responsibility, @Demands, @Category)" ProviderName="<%$ ConnectionStrings:HospitalConnectionString1.ProviderName %>" SelectCommand="SELECT [ID_job_title], [NameOfTitle], [Salary], [Responsibility], [Demands], [Category] FROM [Job_titles]" UpdateCommand="UPDATE [Job_titles] SET [NameOfTitle] = @NameOfTitle, [Salary] = @Salary, [Responsibility] = @Responsibility, [Demands] = @Demands, [Category] = @Category WHERE [ID_job_title] = @ID_job_title">
              <DeleteParameters>
                  <asp:Parameter Name="ID_job_title" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="NameOfTitle" Type="String" />
                  <asp:Parameter Name="Salary" Type="Int32" />
                  <asp:Parameter Name="Responsibility" Type="String" />
                  <asp:Parameter Name="Demands" Type="String" />
                  <asp:Parameter Name="Category" Type="String" />
              </InsertParameters>


              <UpdateParameters>
                  <asp:Parameter Name="NameOfTitle" Type="String" />
                  <asp:Parameter Name="Salary" Type="Int32" />
                  <asp:Parameter Name="Responsibility" Type="String" />
                  <asp:Parameter Name="Demands" Type="String" />
                  <asp:Parameter Name="Category" Type="String" />
                  <asp:Parameter Name="ID_job_title" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
   </h5>
         </div>     
 </asp:Content>