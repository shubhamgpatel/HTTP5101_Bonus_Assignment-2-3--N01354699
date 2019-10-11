<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coordinate_validation.aspx.cs" Inherits="HTTP5101_Bonus_Assignment_2__3_.coordinate_validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Coordinate check</title>
    <style>
        body {
            margin: 0;
            font-family: Palatino Linotype;
            background-color: #808080;
        }

        .row {
            margin: 1em 8em 0 8em;
            background-color: #fff;
            padding: 1em 0 3em 3em;
            border-radius: 7px;

        }

        .row h1 {
            border-bottom: 2px solid #aaa;
            margin: 1em 40px 3px 0;
        }

        #result_summary {
            font-size: 19px;
            padding: 20px 0 0 0;

        }

        .btn_submit {
            color: #fff;
            padding: 6px 20px 6px 20px;
            background-color: #d65630;
            font-size: 18px;
            font-family: Cambria Math;
            border: 2px solid #111311;
            border-radius: 3px;
            font-weight: 700;
            box-shadow: 4px 6px 12px #aaa;
            margin-left: 8em;
            display: block;
        }

        .btn_submit:hover {
            cursor: pointer;
            background-color: #aaaaaa29;
            color: #171515;
            box-shadow: 4px 4px 9px #aaa;
            transition-timing-function: ease-in-out;
            transition: 1.7s;
        }

        .row label {
            font-size: 20px;
        }

        /*--css for input type text---*/
        .input_textbox {
            -webkit-box-sizing: content-box;
            padding: 6px 10px;
            border: 2px solid #9a82828c;
            -webkit-border-radius: 13px;
            border-radius: 13px;
        }

        section {
            margin: 20px 0 0 0;
            width: 60%;
        }

        #display_summary {
            font-size: 19px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="row">
            <h1>Coordinate check : </h1>

            <!--asking user for x axis value -->
            <section>
                <label>Input a X - axis value</label>
                <asp:TextBox TextMode="Number" runat="server" CssClass="input_textbox" ID="coordinate_check_x">
                </asp:TextBox>
                <!-- required field validation-->
                <asp:RequiredFieldValidator runat="server" ID="required_x_validator"
                    ErrorMessage="Please enter a X axis value" ControlToValidate="coordinate_check_x"
                    ForeColor="#ff210a">
                </asp:RequiredFieldValidator>
                <!-- custom validation for checking value if it is zero or not -->
                <asp:CustomValidator ID="customValidation_check_zero_x" runat="server"
                    OnServerValidate="custom_axis_validation" ControlToValidate="coordinate_check_x">
                </asp:CustomValidator>
            </section>

            <!--asking user for y axis value -->
            <section>
                <label>Input a Y - axis value</label>
                <asp:TextBox runat="server" TextMode="Number" CssClass="input_textbox" ID="coordinate_check_y">
                </asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="required_y_validator"
                    ErrorMessage="Please enter a Y axis value" ControlToValidate="coordinate_check_y"
                    ForeColor="#ff210a">
                </asp:RequiredFieldValidator>
                <!-- custom validation for checking value if it is zero or not -->
                <asp:CustomValidator ID="customValidation_check_zero_y" runat="server"
                    OnServerValidate="custom_axis_validation" ControlToValidate="coordinate_check_y">
                </asp:CustomValidator>
            </section>

            <section>
                <asp:Button runat="server" class="btn_submit" Text="Submit" />
            </section>

            <section>
                <div id="display_summary" runat="server"></div>
            </section>

            <section>
                <div id="result_summary" runat="server"></div>
            </section>

        </div>
    </form>
</body>

</html>