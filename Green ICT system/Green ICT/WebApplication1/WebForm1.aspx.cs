using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //cir.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //cir.Visible = true;
            double degreeInside = 0;
            double houseArea = 0;
            bool noError = true;
            try
            {
                degreeInside = Convert.ToDouble(Request.Form["degInside"]);
              
            } catch (Exception)
            {
                Message1.Text ="please enter number";
                Message2.Text = "";
                noError = false;
            }
            try
            {
                houseArea = Convert.ToDouble(Request.Form["houseArea"]);
            }
            catch (Exception )
            {
                Message2.Text = "please enter number";
                Message1.Text = "";
                noError = false;
            }
            if (Request.Form["degInside"] == "," && Request.Form["houseArea"] == ",")
            {
                Message1.Text = "please enter number";
                Message2.Text = "please enter number";
            }
            else if  (Request.Form["degInside"] == "," && Request.Form["houseArea"] != ",")
            {
                Message2.Text = "";
                Message1.Text = "please enter number";
            }
            else if (Request.Form["degInside"] != "," && Request.Form["houseArea"] != ",")
            {
                Message2.Text = "please enter number";
                Message1.Text = "";
            }
            if (noError)
            {
                Message2.Text = "";
                Message1.Text = "";
                double energyEfficiency = Convert.ToDouble(Request.Form["energyEf"]);
                string city = Request.Form["cities"];
                Message.Text = getResult(city, degreeInside, houseArea, energyEfficiency);
            }
        }
            private string getResult(string city, double degreeInside, double houseArea, double energyEfficiency)
        {
            double celsius, result;
            StringWriter writer = new StringWriter();
            string weather = "http://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=e215c72486bc176e69502ad13a6b85b2";
            WebRequest myRequest = WebRequest.Create(weather);
            WebResponse response = myRequest.GetResponse();
            // Get the stream containing content returned by the server. 
            Stream dataStream = response.GetResponseStream();
            // Open the stream using a StreamReader for easy access. 
            StreamReader reader = new StreamReader(dataStream);
            // Read the content. 
            string responseFromServer = reader.ReadToEnd();
            //Now this string includes all data from the external web site for further use 
            int index_start = responseFromServer.IndexOf("temp") + 6;
            int index_end = responseFromServer.IndexOf("pressure");
            string subs = responseFromServer.Substring(index_start, index_end - index_start - 2);

            subs = subs.Replace(".", ",");
            celsius = double.Parse(subs) - 273.15;
            //Response.Write(celsius);

            result = (degreeInside - celsius) * (((energyEfficiency * houseArea) / 365) / (20 - 3.3));
            return "Energy consumption is " + Math.Round(result, 3) + " kWh";
        }
    }
}
    
