using System;
using Xunit;

using System.Runtime.CompilerServices;
using System.Reflection;

using System.IO;

using Moq;

namespace xUnitTestStuff
{
    public class UnitTestTuples
    {
        [Fact]
        public void TestTuple()
        {
            var a = new ConsoleWithTest.TuplesExample();
             Assert.Equal("bob", a.GetInfo().name);
            Assert.Equal(2, a.GetInfo().age);

        }
    }
}
