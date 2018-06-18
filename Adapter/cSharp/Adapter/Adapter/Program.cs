using System;

namespace Adapter
{
    class Program
    {
        static void Main(string[] args)
        {
            Adapter dependence = new Adapter();
            Console.WriteLine(dependence.MethodA());
        }
    }
}
