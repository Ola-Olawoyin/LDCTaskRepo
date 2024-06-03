
using NUnit.Framework;
using Shouldly;
using System.Collections.Generic;

namespace StringParser.UnitTests
{
    [TestFixture]
    public class StringParserTest
    {
        private StringProcessor _stringProcessor;

        [SetUp]
        public void SetUp()
        {
            _stringProcessor = new StringProcessor();
        }

        [Test]
        public void ProcessStrings_InputIsNull_ShouldThrowArgumentNullException()
        {
            Should.Throw<ArgumentNullException>(() => _stringProcessor.ProcessStrings(null));
        }

        [Test]
        public void ProcessStrings_InputContainsNullOrEmptyStrings_ShouldReturnNonEmptyStrings()
        {
            var input = new List<string> { "valid", "", null, "anotherValid" };
            var result = _stringProcessor.ProcessStrings(input);
            result.ShouldBe(new List<string> { "valid", "anotherValid" });
        }

        [Test]
        public void ProcessStrings_InputContainsDollarSign_ShouldReplaceWithPoundSign()
        {
            var input = new List<string> { "test$ing" };
            var result = _stringProcessor.ProcessStrings(input);
            result.ShouldBe(new List<string> { "test£ing" });
        }

        [Test]
        public void ProcessStrings_InputContainsUnderscore_ShouldRemoveUnderscore()
        {
            var input = new List<string> { "test_ing" };
            var result = _stringProcessor.ProcessStrings(input);
            result.ShouldBe(new List<string> { "testing" });
        }

        [Test]
        public void ProcessStrings_InputContainsNumber4_ShouldRemoveNumber4()
        {
            var input = new List<string> { "test4ing" };
            var result = _stringProcessor.ProcessStrings(input);
            result.ShouldBe(new List<string> { "testing" });
        }

        [Test]
        public void ProcessStrings_InputContainsContiguousDuplicates_ShouldReduceToSingleCharacter()
        {
            var input = new List<string> { "aaabbbccc" };
            var result = _stringProcessor.ProcessStrings(input);
            result.ShouldBe(new List<string> { "abc" });
        }

        [Test]
        public void ProcessStrings_InputExceedsMaxLength_ShouldTruncate()
        {
            var input = new List<string> { "thisisaverylongstringthatexceedsfifteencharacters" };
            var result = _stringProcessor.ProcessStrings(input);
            result.ShouldBe(new List<string> { "thisisaverylong" });
        }

        [Test]
        public void ProcessStrings_ComplexExample_ShouldProcessCorrectly()
        {
            var input = new List<string> { "AAAc91%cWwWkLq$1ci3_848v3d__K" };
            var result = _stringProcessor.ProcessStrings(input);
            result.ShouldBe(new List<string> { "Ac91%cWkLq£1ci3" });
        }
    }
}

