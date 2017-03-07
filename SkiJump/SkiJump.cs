using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SkiJump
{
    public class SkiJump
    {
        public static Double Lenght(Double length, Double kpoint)
        {
            Double difference = length - kpoint;
            Double points = 60 + difference * 1.8;
            return points;
        }
        public static Double Style(Double first, Double second, Double third, Double forth, Double fifth)
        {
            Double[] arr = new Double[] { first, second, third, forth, fifth };
            Double sum = arr.Sum();
            Double min = arr.Min();
            Double max = arr.Max();
            Double points = sum - min - max;
            return points;
        }
        public static Double Wind(Double wind, Double kpoint)
        {
            Double rough = wind * (kpoint - 36) / 20;
            Double r = rough * 2;
            Double points = 1.8 * (Math.Round(r, MidpointRounding.ToEven) / 2);
            return points;
        }
        public static Double Stage(Double height)
        {
            Double points = -height * 5 * 1.8;
            return points;
        }
    }
}