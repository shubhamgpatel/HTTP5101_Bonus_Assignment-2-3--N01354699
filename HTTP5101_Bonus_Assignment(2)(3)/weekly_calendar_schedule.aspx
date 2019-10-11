<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="weekly_calendar_schedule.aspx.cs" Inherits="HTTP5101_Bonus_Assignment_2__3_.weekly_calendar_schedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>October Month Plan</title>
    <style>
        .row-space {
            margin: 6px 8em 2em 8em;
            border: 2px solid #868e96;
            border-radius: 4px;
            padding: 0px 0px 10px 11px;
            background-color: #fff;
        }

        body {
            margin: 0;
            font-size: 19px;
            font-family: Palatino Linotype;
            background-color: #d8c9c9;
        }

        .btn-submit {
            padding: 6px 20px 6px 20px;
            color: #fff;
            background-color: #d65630;
            font-size: 18px;
            font-family: Cambria Math;
            margin: 15px 25px 0 25px;
            border: 2px solid #111311;
            border-radius: 3px;
            font-weight: 700;
            box-shadow: 4px 6px 12px #aaa;
        }

        .btn-submit:hover {
            cursor: pointer;
            background-color: #aaaaaa29;
            color: #171515;
            box-shadow: 4px 4px 9px #aaa;
            transition-timing-function: ease-in-out;
            transition: 1.7s;
        }

        .row-space h1 {
            border-bottom: 2px solid #aaa;
            margin: 15px 1em 0 22px;
        }

        .row-space h2 {
            margin: 15px 0px 0 25px;
        }

        .checkboxes_style {
            margin: 15px 25px 0 25px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="row-space">
            <h1>October Month Plan :</h1>

            <section>
                <h2>Select how many days you want to work ?</h2>
                <div class="checkboxes_style">
                    <!-- class for style -->
                    <asp:CheckBoxList runat="server" ID="week_days">
                        <asp:ListItem Value="1">Monday</asp:ListItem>
                        <asp:ListItem Value="2">Tuesday</asp:ListItem>
                        <asp:ListItem Value="3">Wednesday</asp:ListItem>
                        <asp:ListItem Value="4">Thursday</asp:ListItem>
                        <asp:ListItem Value="5">Friday</asp:ListItem>
                        <asp:ListItem Value="6">Saturday</asp:ListItem>
                        <asp:ListItem Value="7">Sunday</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </section>
            <section>
                <asp:Button runat="server" class="btn-submit" Text="Submit" />
            </section>
            <!-- display result -->
            <section>
                <div id="month_summary" runat="server"></div>
            </section>
        </div>
    </form>
</body>

</html>