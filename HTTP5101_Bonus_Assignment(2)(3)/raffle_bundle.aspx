<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="raffle_bundle.aspx.cs" Inherits="HTTP5101_Bonus_Assignment_2__3_.raffle_bundle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Raffle Bundle</title>
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

        .btn_submit {
            color: #fff;
            padding: 6px 20px 6px 20px;
            background-color: #d65630;
            font-size: 18px;
            font-family: Cambria Math;
            margin: 1em 0 15px 6em;
            border: 2px solid #111311;
            border-radius: 3px;
            font-weight: 700;
            box-shadow: 4px 6px 12px #aaa;
        }

        .btn_submit:hover {
            cursor: pointer;
            background-color: #aaaaaa29;
            color: #171515;
            box-shadow: 4px 4px 9px #aaa;
            transition-timing-function: ease-in-out;
            transition: 1.0s;
        }

        .compare_validation {
            font-size: 19px;
            margin: 0px 0 0 -10.5em;
        }

        .row-space h1 {
            border-bottom: 2px solid #aaa;
            margin-right: 1em;
        }

        #raffle_ticket_check {
            border: 2px solid #fff;
            width: 3.5em;
            border-bottom: 2px solid #aaa;
            border-radius: 5px;
            font-size: 19px;
            text-align: center;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="row-space">
            <h1>Raffle Bundle :</h1>
            <p><strong>Ticket cost :</strong> 25 cents each.</p>
            <section>
                <label>How many tickets do you want to buy </label>
                <asp:TextBox TextMode="Number" runat="server" ID="raffle_ticket_check"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="required_x_validator"
                    ErrorMessage="Please enter some value" ControlToValidate="raffle_ticket_check" ForeColor="#ff210a">
                </asp:RequiredFieldValidator>
                <!-- link https://forums.asp.net/t/1111443.aspx?RegularExpression+Validator+for+number+greater+than+zero -->
                <!-- author -- Aaron -->
                <asp:CompareValidator ID="ticket_compare_zero" runat="server" ValueToCompare="0"
                    ControlToValidate="raffle_ticket_check" ErrorMessage="Please enter value greater then 0"
                    Operator="GreaterThan" ForeColor="#ff210a" class="compare_validation" Type="Integer">
                </asp:CompareValidator>
            </section>

            <asp:Button runat="server" class="btn_submit" Text="Submit" />

            <div id="display_ticket_summary" runat="server"></div>
        </div>
    </form>
</body>

</html>