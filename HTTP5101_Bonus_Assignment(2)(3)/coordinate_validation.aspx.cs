using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Check 0 and negative validation
namespace HTTP5101_Bonus_Assignment_2__3_ {
    public partial class coordinate_validation : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            if (Page.IsPostBack) {
                Page.Validate ();
                if (Page.IsValid) {
                    result_summary.InnerHtml = "";  // making the result summary as null because if a user submit again again it will append
                    //grab text box value of x and convert into integar
                    int Quadrant_check_x = Convert.ToInt32 (coordinate_check_x.Text);
                    //grab textbox value of y and converting.
                    int Quadrant_check_y = Convert.ToInt32 (coordinate_check_y.Text);
                    // displaying the values using ID display_summary
                    display_summary.InnerHtml = " Your Coordinates (X, Y) are " + "(" + Quadrant_check_x + "," + Quadrant_check_y + " ) <br>";
                    //check conditions for the coordinates lie
                    if (Quadrant_check_x > 0 && Quadrant_check_y > 0) {
                        result_summary.InnerHtml += "Your points line in <strong>Quadrant 1</strong><br>";
                    } else if (Quadrant_check_x > 0 && Quadrant_check_y < 0) {
                        result_summary.InnerHtml += "Your points line in <strong>Quadrant 4</strong><br>";
                    } else if (Quadrant_check_x < 0 && Quadrant_check_y > 0) {
                        result_summary.InnerHtml += "Your points line in <strong>Quadrant 2</strong><br>";
                    } else {
                        result_summary.InnerHtml += "Your points line in <strong>Quadrant 3</strong> <br> maitri";
                    }
                }
            }

        }
        //class lecture validation of candidate
        protected void custom_axis_validation (object source, ServerValidateEventArgs args) { //this function will check for both x and y values
            if (Convert.ToInt32 (args.Value) == 0) // check if entered value is 0. then return
            {
                display_summary.InnerHtml = "<span style='color:red;'>Please enter a value more then zero as we are unable to get the quadrant.</span><br>";
                args.IsValid = false; //if it is false then return false. and above main function wont get executed.
            } // if close
        } // custom function close
    }
}