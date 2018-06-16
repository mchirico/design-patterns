using System;
using Xunit;

using System.Runtime.CompilerServices;
using System.Reflection;

using System.IO;

using Moq;



namespace xUnitTestStuff
{


    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {

            Type testType = typeof(ConsoleWithTest.TestClass);
            ConstructorInfo ctor = testType.GetConstructor(System.Type.EmptyTypes);
            if (ctor != null)
            {
                object instance = ctor.Invoke(null);
                MethodInfo methodInfo =
                    testType.GetMethod("TestMethod", BindingFlags.NonPublic | BindingFlags.Instance);
                Console.WriteLine(methodInfo.Invoke(instance, new object[] { 10 }));
            }

        }

        [Fact]
        public void Test2()
        {

            var output = new StringWriter();
            Console.SetOut(output);

            var input = new StringReader("Somebody");
            Console.SetIn(input);


            Type testType = typeof(ConsoleWithTest.Program);
            ConstructorInfo ctor = testType.GetConstructor(System.Type.EmptyTypes);
            if (ctor != null)
            {
                object instance = ctor.Invoke(null);
                MethodInfo methodInfo =
                    testType.GetMethod("Main", BindingFlags.Public | BindingFlags.NonPublic |
                              BindingFlags.Static | BindingFlags.Instance);

                string[] args = { "one", "two" };
                Console.WriteLine(methodInfo.Invoke(instance, new object[] { args }));
            
                // Test input

                Assert.Equal(output.ToString(),
                             string.Format("Hello World!\nEnter text:\nYou entered: {0}",
                                      "Somebody\n\n"));
            
            
            }

        }

        [Fact]
        public void TestFunction(){
            var p = new ConsoleWithTest.Program();
            Assert.Equal(14, p.M(12));
        }


    }
}
