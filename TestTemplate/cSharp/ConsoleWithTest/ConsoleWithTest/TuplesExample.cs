using System;
namespace ConsoleWithTest
{
    public class TuplesExample
    {
        public TuplesExample()
        {
        }

        public (string name, int age) GetInfo()
        {
            return (name: "bob", age: 7);
        }
    }
}
