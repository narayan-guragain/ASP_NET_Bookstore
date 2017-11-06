<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Addmember.aspx.cs" Inherits="Term_Project.Addmember" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="addmember_container">
        <div class="row">
            <div class="col-md-offset-4 col-md-4">
                <div class="jumbotron">
                    <div class="col-md-offset-2 col-md-8">
                        <h3>Member Registration</h3>
                        <h6>All Fields are required.</h6>
                        <br />
                        <div class="form-group">
                            <label class="contorl-label" for="LastNameBox">Last Name</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="LastNameBox" Placeholder="Last Name" required="true"></asp:TextBox>
                            <label class="contorl-label" for="FirstNameBox">First Name</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="FirstNameBox" Placeholder="First Name" required="true"></asp:TextBox>
                            <label class="contorl-label" for="MembershipDateBox">Membership Date</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="MembershipDateBox" Placeholder="Membership Date" required="true" TextMode="Date"></asp:TextBox>
                            <br />
                            <asp:Button runat="server" ID="SaveButton" CssClass="btn btn-primary" UseSubmitBehavior="false" 
                                CausesValidation="false" Text="Save" OnClick="SaveButton_Click"/>
                            <asp:Button runat="server" ID="CancelButton" CssClass="btn btn-warning" UseSubmitBehavior="false" 
                                CausesValidation="false" Text="Cancel" OnClick="CancelButton_Click"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
