<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookOrderForm.aspx.cs" Inherits="bookstore.frmBookstore" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TEMPLE UNIVERSITY BOOK ORDER FORM</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
    <!--heading-->
    <div style="text-align: center">
        <h1><b>TEMPLE UNIVERSITY BOOK ORDER FORM</b></h1>
    </div>

    <form id="form1" runat="server">
        <!--Student Information div-->
        <div id="student_info">
            <fieldset style="background-color: #a44949;">
                <h2>STUDENT INFORMATION</h2>
                Name:
            <asp:TextBox ID="txtName" runat="server" Height="16px" Width="170px"></asp:TextBox>
                &nbsp;<asp:Label ID="validationNameLabel" runat="server"></asp:Label>
                <br />
                <br />
                Student ID:
            <asp:TextBox ID="txtStudentID" placeholder="9-digit TUID" MaxLength="9" runat="server" Width="170px" TabIndex="1"></asp:TextBox>
                &nbsp;<asp:Label ID="validationIDLabel" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <br />
                Address:
            <asp:TextBox ID="txtAddress" placeholder="Street, City, State, Zipcode" runat="server" Width="319px" TabIndex="2"></asp:TextBox>
                &nbsp;<asp:Label ID="validationAddressLabel" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <br />
                Phone Number:&nbsp;<asp:TextBox ID="txtPhoneNumber" type="tel" placeholder="215-000-0000" MaxLength="10" runat="server" Width="162px" TabIndex="3"></asp:TextBox>
                &nbsp;<asp:Label ID="validationPhoneLabel" runat="server"></asp:Label>

                <h2>SELECT CAMPUS</h2>
                <asp:DropDownList ID="dropDownCampus" runat="server" Height="22px" GridLines="None" Width="202px" TabIndex="4">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Main</asp:ListItem>
                    <asp:ListItem>TUCC</asp:ListItem>
                    <asp:ListItem>Ambler</asp:ListItem>
                    <asp:ListItem>Tokyo</asp:ListItem>
                    <asp:ListItem>Rome</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="validationCampusLabel" runat="server"></asp:Label>
            </fieldset>
        </div>
        <!--end of Student Input div tag-->

        <!--Book Gridview-->
        <div id="bookorderform_grid" style="text-align: center">
            <br />
            <asp:Label ID="LabelEmptyGrid" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="False" CellPadding="5" Width="100%" Style="text-align: center">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Authors" HeaderText="Author(s)" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                    <asp:TemplateField HeaderText="Type">
                        <ItemTemplate>
                            <asp:DropDownList ID="bookType" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Hardcover</asp:ListItem>
                                <asp:ListItem>Softcover</asp:ListItem>
                                <asp:ListItem>E-Book</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Buy/Rent">
                        <ItemTemplate>
                            <asp:DropDownList ID="orderType" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Buy</asp:ListItem>
                                <asp:ListItem>Rent</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:TextBox ID="txtQuantity" runat="server" Height="20px" Width="64px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="#a44949"
                    ForeColor="white" />
                <AlternatingRowStyle BackColor="#7b3737"
                    ForeColor="white" />
            </asp:GridView>
        </div>
        <!--end of gvBooks div-->

        <br />

        <!--Output Gridview-->
        <div id="grid_output">
            <asp:Label ID="outputStudentInfo" runat="server"></asp:Label>
            <br />
            <asp:Label ID="outputName" runat="server"></asp:Label>
            <br />
            <asp:Label ID="outputStudentID" runat="server"></asp:Label>
            <br />
            <asp:Label ID="outputAddress" runat="server"></asp:Label>
            <br />
            <asp:Label ID="outputPhoneNumber" runat="server"></asp:Label>
            <br />
            <asp:Label ID="outputCampus" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="gvOutput" runat="server" AutoGenerateColumns="False" CellPadding="5" Width="100%" Style="text-align: center" ShowFooter="True">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                    <asp:BoundField DataField="Type" HeaderText="Type" />
                    <asp:BoundField DataField="Order" HeaderText="Buy/Rent" />
                    <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="TotalCost" DataFormatString="{0:c}" HeaderText="Total Cost" />
                </Columns>
                <RowStyle BackColor="#a44949"
                    ForeColor="white" />
                <AlternatingRowStyle BackColor="#7b3737"
                    ForeColor="white" />
            </asp:GridView>
        </div>
        <!--end of Output grid-->

        <br />

        <!--Management Report Gridview-->
        <asp:Label ID="gvReportLabel" runat="server" Text="<h2>Management Report</h2>"></asp:Label>
        <div id="report_grid" style="text-align: center">
            <asp:GridView ID="gvReport" runat="server" AutoGenerateColumns="False" CellPadding="5" Width="100%" Style="text-align: center">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Authors" HeaderText="Author(s)" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                    <asp:BoundField DataField="TotalSales" DataFormatString="{0:c}" HeaderText="Total Sales" />
                    <asp:BoundField HeaderText="Total Quantity Rented" DataField="TotalQuantityRented" />
                    <asp:BoundField HeaderText="Total Quantity Sold" DataField="TotalQuantitySold" />
                </Columns>
                <RowStyle BackColor="#a44949"
                    ForeColor="white" />
                <AlternatingRowStyle BackColor="#7b3737"
                    ForeColor="white" />
            </asp:GridView>
        </div>

        <br />

        <!--Buttons-->
        <div style="text-align: center">
            <asp:Button class="button" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="PLACE ORDER" />&nbsp;&nbsp;
            <asp:Button class="button" ID="btnReport" runat="server" OnClick="btnReport_Click" Text="VIEW REPORT" />&nbsp;&nbsp;
            <asp:Button class="button" ID="btnBack" runat="server" OnClick="btnBack_Click" Text="BACK" />
        </div>
        <br />
        <br />
        <br />
        <!--end of buttons div-->

    </form>

    <!--footer-->
    <div id="footer" class="ng-scope">
        JOSEPH KIM ©2019 | JOSEPHKIM@TEMPLE.EDU
    </div>

</body>
</html>
