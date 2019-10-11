using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_Bonus_Assignment_2__3_ {
    public partial class weekly_calendar_schedule : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            if (Page.IsPostBack) {
                Page.Validate ();
                if (Page.IsValid) {
                    // initialising list with Working_Days and data will store boolean value i.e true or false
                    List<Boolean> Working_Days = new List<Boolean> ();
                    //pushing 7 values as false reason there are 7 week days. and will be mapping with that 
                    Working_Days.Add (false);
                    Working_Days.Add (false);
                    Working_Days.Add (false);
                    Working_Days.Add (false);
                    Working_Days.Add (false);
                    Working_Days.Add (false);
                    Working_Days.Add (false);

                    List<String> Week_Days = new List<String> ();
                    Week_Days.Add ("Monday");
                    Week_Days.Add ("Tuesday");
                    Week_Days.Add ("Wednesday");
                    Week_Days.Add ("Thursday");
                    Week_Days.Add ("Friday");
                    Week_Days.Add ("Saturday");
                    Week_Days.Add ("Sunday");

                    month_summary.InnerHtml = "<br><strong>You've selected the following:</strong><br><br>";
                    //running foreach loop to grab the checkbox selected values
                    foreach (ListItem Week_day in week_days.Items) {
                        //reason for subracting 1 is october month starts on tuesday
                        Working_Days[Convert.ToInt32 (Week_day.Value) - 1] = Week_day.Selected;
                    }

                    for (int oct = 2; oct <= 32; oct++) { //range we have taken is 2 to 32 
                        int day_of_the_week = oct % 7;
                        // we are doing modulus with 7 because this will split the week
                        if (day_of_the_week == 0) {
                            day_of_the_week = 7;
                        }

                        if (Working_Days[day_of_the_week - 1] == true) {
                            month_summary.InnerHtml += "<strong>October " + (oct - 1) + ", " + Week_Days[day_of_the_week - 1] + "&emsp; Time to work...</strong> <br> ";
                        } else {
                            month_summary.InnerHtml += "October " + (oct - 1) + ", " + Week_Days[day_of_the_week - 1] + "&emsp; Time to have fun! <br>";
                        }

                    }
                }
            }

        }
    }
}