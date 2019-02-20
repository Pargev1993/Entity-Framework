using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity_Framewoek
{
    class Program
    {
        static void Main(string[] args)
        { 
           using (Model1Container containerdb = new  Model1Container())
            {
                YerevanMallKFC yerevanMallKFC = new YerevanMallKFC
                {
                    FirstName ="Vardan",
                    LAstName="Geyvandov",
                    Gender="Male",
                    Age=23
                };

                containerdb.YerevanMallKFCs.Add(yerevanMallKFC);
                





            }
        }
    }
}
