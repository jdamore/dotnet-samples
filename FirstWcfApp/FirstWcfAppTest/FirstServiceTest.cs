namespace FirstWcfAppTest
{
    using NUnit.Framework;
    using FirstWcfApp;

    public class FirstServiceTest
    {
        private IFirstService service;

        [SetUp]
        public void SetUp()
        {
            service = new FirstService();
        }

        [TearDown]
        public void TearDown()
        {
        }

        [Test]
        public void GetReturnsTheExpectedResult()
        {
            Assert.AreEqual("You entered ID: test", service.Get("test"));
        }
    }
}
