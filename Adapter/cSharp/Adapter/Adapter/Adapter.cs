using System;




namespace Adapter
{

    public class Adaptee
    {
        public string MethodB()
        {
            return "methodB";
        }
    }

    public class Adapter : Adaptee
    {
        public Adapter()
        {
        }

        public string MethodA()
        {
            return MethodB();
        }
    }
}
