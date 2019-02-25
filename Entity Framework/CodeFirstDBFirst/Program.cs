using System;

namespace FirstProject
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(TryFinally());
            Console.ReadKey();
        }

        static int TryFinally()
        {
            try
            {
                return 5;
            }
            finally
            {
                Console.WriteLine("6"); ;
            }
        }
    }
}