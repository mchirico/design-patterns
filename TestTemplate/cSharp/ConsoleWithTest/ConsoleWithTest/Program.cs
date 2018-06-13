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
            
            var lines = ReadFrom(@"/Users/mchirico/SampleQuotes.txt");

            using (System.IO.StreamWriter file =
                   new System.IO.StreamWriter(@"/Users/mchirico/garbo.txt"))
            foreach (var line in lines)
            {
                Console.WriteLine(line);
                file.WriteLine(line);
            }
            
        }

         private int Do(int a){
            var lines = ReadFrom(@"/Users/mchirico/SampleQuotes.txt");

            using (System.IO.StreamWriter file =
                   new System.IO.StreamWriter(@"/Users/mchirico/garbo.txt"))
                foreach (var line in lines)
                {
                    Console.WriteLine(line);
                    file.WriteLine(line);
                }
            return a;
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
