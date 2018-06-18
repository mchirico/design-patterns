using System;
using Xunit;

namespace TestAdapter
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {
            Adapter.Adapter depencence = new Adapter.Adapter();
            Assert.Equal("methodB", depencence.MethodA());
        }
    }
}
