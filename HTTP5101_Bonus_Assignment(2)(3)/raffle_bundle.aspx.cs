using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_Bonus_Assignment_2__3_ {

    public partial class raffle_bundle : System.Web.UI.Page {

        protected void Page_Load (object sender, EventArgs e) {
            if (Page.IsPostBack) {
                Page.Validate ();
                if (Page.IsValid) { //getting values
                    int Raffle_Ticket_check = Convert.ToInt32 (raffle_ticket_check.Text);
                    float ticket_cost = 0.25f;
                    display_ticket_summary.InnerHtml = "";
                    if (Raffle_Ticket_check <= 50) {
                        for (int i = 1; i <= Raffle_Ticket_check; i++) {
                            display_ticket_summary.InnerHtml += "You received a bundle of 1! That’s " + i + "  ticket(s)!<br>";
                        }
                        display_ticket_summary.InnerHtml += "<br><strong>Your total ticket(s) is " + Raffle_Ticket_check + " and your cost is " + (Raffle_Ticket_check * ticket_cost) + "</strong><br><br>";
                    } else if (Raffle_Ticket_check > 50 && Raffle_Ticket_check <= 150) {
                        for (int i = 2; i <= Raffle_Ticket_check; i = i + 2) {
                            display_ticket_summary.InnerHtml += "You received a bundle of 2! That’s " + i + "  ticket(s)!<br>";
                        }
                        if (Raffle_Ticket_check % 2 != 0) {
                            display_ticket_summary.InnerHtml += "<em>Your leftover is " + Raffle_Ticket_check % 2 + " ticket(s). That’s " + Raffle_Ticket_check + " ticket(s)! </em><br>";
                        }
                        display_ticket_summary.InnerHtml += "<br><strong>Your total ticket(s) is " + Raffle_Ticket_check + " and your cost is " + (Raffle_Ticket_check * ticket_cost) + "<br>";
                    } else if (Raffle_Ticket_check > 150 && Raffle_Ticket_check <= 300) {
                        for (int i = 3; i <= Raffle_Ticket_check; i = i + 3) {
                            display_ticket_summary.InnerHtml += "You received a bundle of 3! That’s " + i + "  ticket(s)!<br>";
                        }
                        if (Raffle_Ticket_check % 3 != 0) {
                            display_ticket_summary.InnerHtml += "<em>Your leftover is " + Raffle_Ticket_check % 3 + " ticket(s). That’s " + Raffle_Ticket_check + " ticket(s)! </em><br>";
                        }
                        display_ticket_summary.InnerHtml += "<br><strong>Your total ticket(s) is " + Raffle_Ticket_check + " and your cost is " + (Raffle_Ticket_check * ticket_cost) + "</strong><br><br>";
                    } else {
                        for (int i = 5; i <= Raffle_Ticket_check; i = i + 5) {
                            display_ticket_summary.InnerHtml += "You received a bundle of 5! That’s " + i + "  ticket(s)!<br>";
                        }
                        if (Raffle_Ticket_check % 5 != 0) {
                            display_ticket_summary.InnerHtml += "<em>Your leftover is " + Raffle_Ticket_check % 3 + " ticket(s). That’s " + Raffle_Ticket_check + " ticket(s)! </em><br>";
                        }
                        display_ticket_summary.InnerHtml += "<br><strong>Your total ticket(s) is " + Raffle_Ticket_check + " and your cost is " + (Raffle_Ticket_check * ticket_cost) + "</strong><br><br>";
                    }
                }
            }
        }
    }
}