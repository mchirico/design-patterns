using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.CompilerServices;
[assembly: InternalsVisibleToAttribute("xUnitTestStuff")]

namespace ConsoleWithTest
{

    public class TestClass
    {
        private int testValue = 42;

        private int TestMethod(int numberToAdd)
        {
            return this.testValue + numberToAdd;
        }
    }


    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Console.WriteLine("Enter text:");
            var a = Console.ReadLine();
            Console.WriteLine($"You entered: {a}");

            var parent =
              System.IO.Directory.GetParent(Directory.
                                            GetCurrentDirectory()).Parent.
                    Parent.
                    FullName;


            var lines = ReadFrom(parent + "/SampleQuotes.txt");

            using (System.IO.StreamWriter file =
                   new System.IO.StreamWriter(parent + "/garbo.txt"))
                foreach (var line in lines)
                {
                    //Console.WriteLine(line);
                    file.WriteLine(line);
                }

        }

        private int Do(int a)
        {

            var parent =
             System.IO.Directory.GetParent(Directory.
                                           GetCurrentDirectory()).Parent.

                   Parent.
                   FullName;

            var lines = ReadFrom(parent + "/SampleQuotes.txt");

            using (System.IO.StreamWriter file =
                   new System.IO.StreamWriter(parent + "/garbo.txt"))
                foreach (var line in lines)
                {
                    Console.WriteLine(line);
                    file.WriteLine(line);
                }
            return a;
        }


        public double M(double n)
        {
            Func<double, double> f = (x) => x + 2;
            return f(n);
        }


        static IEnumerable<string> ReadFrom(string file)
        {
            string line;
            using (var reader = File.OpenText(file))
            {
                while ((line = reader.ReadLine()) != null)
                {
                    yield return line;
                }
            }
        }
    }
}
