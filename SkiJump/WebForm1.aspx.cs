using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkiJump
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //validation check
            if (Page.IsValid)
            {
                //replace . with , to prevent var type problems
                wind.Text = wind.Text.Replace(".", ",");
                stage.Text = stage.Text.Replace(".", ",");
                judge1.Text = judge1.Text.Replace(".", ",");
                judge2.Text = judge2.Text.Replace(".", ",");
                judge3.Text = judge3.Text.Replace(".", ",");
                judge4.Text = judge4.Text.Replace(".", ",");
                judge5.Text = judge5.Text.Replace(".", ",");

                //parse the text input to doubles
                var flength = double.Parse(length.Text);
                var fkpoint = double.Parse(cpoint.Text);
                var fwind = double.Parse(wind.Text);
                var fheigth = double.Parse(stage.Text);
                var ffirst = double.Parse(judge1.Text);
                var fsecond = double.Parse(judge2.Text);
                var fthird = double.Parse(judge3.Text);
                var fforth = double.Parse(judge4.Text);
                var ffifth = double.Parse(judge5.Text);

                //add up the score
                var result = SkiJump.Lenght(flength, fkpoint) + SkiJump.Style(ffirst, fsecond, fthird, fforth, ffifth) +
                             SkiJump.Wind(fwind, fkpoint) + SkiJump.Stage(fheigth);
                
                //print out the result as text
                Result.Text = result.ToString();
            }

        }
    }
}