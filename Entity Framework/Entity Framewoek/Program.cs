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
            using (DerjavadbContainer containerdb = new DerjavadbContainer()) 
            {
                YerevanMallKFC yerevanMallKFC = new YerevanMallKFC
                {
                    FirstName = "Avetik",
                    LAstName = "Martirosyan",
                    Gender = "Male",
                    Age = 45
                };
                Derjava derjava = new Derjava()
                {
                    ACCOUNTANT = "Aram",
                    ExecutiveDirector = "Anna"
                };
                
                containerdb.Derjavas.Add(derjava);
                DalmaMallKFC dalmaMallKFC = new DalmaMallKFC()
                {
                    FirstName = "Gurgen",
                    LastName = "Hambardzumyan",
                    Gender = "Male",
                    Age = 35
                };
                containerdb.DalmaMallKFCs.Add(dalmaMallKFC);
                RIOKFC rIOKFC = new RIOKFC()
                {
                    FirstName = "Nara",
                    LastName = "Avetisyan",
                    Gender = "Female",
                    Age = 28
                };
                containerdb.RIOKFCs.Add(rIOKFC);
                MoskovyanKFC moskovyanKFC = new MoskovyanKFC()
                {
                    FristName = "Mnacakan",
                    LastName = "Mnacakanyan",
                    Gender = "Male",
                    Age = 31
                };
                containerdb.MoskovyanKFCs.Add(moskovyanKFC);
                Delivary delivary = new Delivary()
                {
                    CarType = "BMW",
                    DriverName = "Artyom"
                };
                KomitasKFC komitasKFC = new KomitasKFC()
                {
                    FirstName = "Hrach",
                    LastName = "Martirosyan",
                    Gender = "Male",
                    Age = 33
                };
                Supplier supplier = new Supplier()
                {
                    CarType = "Ford Transit",
                    DriverName = "Narek"
                };

                yerevanMallKFC.Derjavas.Add(derjava);
                dalmaMallKFC.Derjavas.Add(derjava);
                rIOKFC.Derjavas.Add(derjava);
                moskovyanKFC.Derjavas.Add(derjava);
               // komitasKFC.Derjavas.Add(derjava);
                supplier.DalmaMallKFCs.Add(dalmaMallKFC);
                supplier.MoskovyanKFCs.Add(moskovyanKFC);
                supplier.RIOKFCs.Add(rIOKFC);
                supplier.KomitasKFCs.Add(komitasKFC);
                moskovyanKFC.Delivaries.Add(delivary);
                komitasKFC.Delivaries.Add(delivary);
                containerdb.SaveChanges();
                





            }
        }
    }
}
