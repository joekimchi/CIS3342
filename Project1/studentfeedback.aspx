<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentfeedback.aspx.cs" Inherits="StudentFeedbackForm.studentfeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Feedback Form Results</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>

    <h1>FORM RESULTS</h1>

    <form id="frmStudentFeedbackResults" runat="server">
            <asp:Label ID="lblDisplay" runat="server"></asp:Label>
    </form>

    <!--Go Back Button-->
        <input type="button" class="button button4" value="GO BACK" onclick="window.location.href='http://cis-iis2.temple.edu/Spring2019/CIS3342_tug51527/Project1/survey.html'"/>

    <!--footer-->
    <div id="footer" class="ng-scope">
        JOSEPH KIM ©2019 | JOSEPHKIM@TEMPLE.EDU
    </div>

</body>
</html>
