<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Memberpage.aspx.cs" Inherits="Term_Project.Memberpage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="Data_Container">
        <div class="row">
            <div class="col-18 col-md-auto">
                <p>List of Online Bookstore Members</p>
                <asp:GridView ID="MemberGridView" runat="server" AutoGenerateColumns="False" 
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="MemberID" HeaderText="Member ID" Visible="true" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" Visible="true" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" Visible="true" />
                        <asp:BoundField DataField="MembershipDate" HeaderText="Membership Date" Visible="true" />                       
                    </Columns>
                </asp:GridView>             
                <asp:Button runat="server" ID="AddMember" CssClass="btn btn-primary" UseSubmitBehavior="false" 
                                CausesValidation="false" Text="Add Member" OnClick="AddMember_Click"/>            
            </div>  
        </div>
    </div>
</asp:Content>
