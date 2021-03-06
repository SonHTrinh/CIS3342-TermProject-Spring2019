﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TermProject.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="bootstrap-style.css" />
    <title>Amazon - Sign In</title>
</head>
<body>
    <form id="frmLogin" runat="server">
        <br />
        <div class="d-flex justify-content-center">
            <img src="img/amazon.jpg" alt="amazon.com" style="width: 166px; height: 60px;" />
        </div>
        <br />
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="card">
                    <article class="card-body">
                        <asp:Label ID="lblSuccess" class="float-right alert alert-success" runat="server" Text="Sign in successfully!" Visible="false"></asp:Label>
                        <h2 class="card-title mb-4 mt-1">Sign in</h2>
                        <div class="form-group">
                            <label><b>Account type</b></label>
                            <asp:DropDownList ID="ddlLogin" runat="server" class="form-control col-4">
                                <asp:ListItem Value="customer" Selected="True">Customer</asp:ListItem>
                                <asp:ListItem Value="merchant">Merchant</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label><b>Username (Email for Merchant account)</b></label>
                            <asp:TextBox ID="txtUsername" class="form-control" runat="server" placeholder="Username" type="text" />
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">

                            <asp:LinkButton ID="lbForgotPassword" class="float-right" runat="server" OnClick="lbForgotPassword_Click">Forgot your password?</asp:LinkButton>
                            <label>
                                <b>Password</b>
                            </label>
                            &nbsp;<asp:TextBox ID="txtPassword" class="form-control" runat="server" placeholder="********" type="password" />
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">
                            <div class="checkbox">
                                <asp:CheckBox ID="chkRemember" runat="server" />
                                Remember me
                                <asp:Label ID="lblDisplay" class="float-right" runat="server" Text="" ForeColor="#CC3300"></asp:Label>
                            </div>
                            <!-- checkbox .// -->
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">
                            <asp:Button ID="btnLogin" class="btn btn-warning btn-block" runat="server" Style="border: 1px solid grey;" Text="Sign in" OnClick="btnLogin_Click" />
                        </div>
                        <hr />
                        <div class="form-group">
                            <p style="text-align: center;">-- New to Amazon? --</p>
                            <a href="CustomerRegistration.aspx" class="btn btn-outline-dark btn-block" style="border: 1px solid grey;">Create your Amazon account</a>
                        </div>
                        <hr />
                        <div class="form-group">
                            <p style="text-align: center;">-- Want to sell your products on Amazon? --</p>
                            <a href="MerchantRegistration.aspx" class="btn btn-outline-dark btn-block" style="border: 1px solid grey;">Register to become a Merchant</a>
                        </div>
                        <hr />
                        <div class="d-flex justify-content-center">
                            <asp:LinkButton ID="lbManager" class="float-right" runat="server" OnClick="lbManager_Click">Amazon Manager?</asp:LinkButton>
                        </div>
                    </article>
                </div>
                <!-- card.// -->
            </div>
            <div class="col-md-4"></div>
        </div>
    </form>
</body>
</html>
