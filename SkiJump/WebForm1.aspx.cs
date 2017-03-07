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
            if (Page.IsValid)
            {
                var flength = double.Parse(length.Text);
                var fkpoint = double.Parse(kpoint.Text);
                var fwind = double.Parse(wind.Text);
                var fheigth = double.Parse(stage.Text);
                var ffirst = double.Parse(judge1.Text);
                var fsecond = double.Parse(judge2.Text);
                var fthird = double.Parse(judge3.Text);
                var fforth = double.Parse(judge4.Text);
                var ffifth = double.Parse(judge5.Text);
                var result = SkiJump.Lenght(flength, fkpoint) + SkiJump.Style(ffirst, fsecond, fthird, fforth, ffifth) +
                             SkiJump.Wind(fwind, fkpoint) + SkiJump.Stage(fheigth);
                Result.Text = result.ToString();
            }

        }
    }
}