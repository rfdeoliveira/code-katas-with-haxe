package katas;

import katas.FizzBuzz;
import utest.Assert;

class FizzBuzzTest extends utest.Test {
    var robot : FizzBuzz;

    function setup() {
        robot = new FizzBuzz();
    }

    function test_say_number_when_number_is_not_multiple_of_3_and_5() {
        Assert.equals('1', robot.say(1));
        Assert.equals('2', robot.say(2));
        Assert.equals('4', robot.say(4));
    }

    function test_say_fizz_when_number_is_multiple_of_3() {
        Assert.equals('Fizz', robot.say(3));
        Assert.equals('Fizz', robot.say(6));
        Assert.equals('Fizz', robot.say(9));
    }

    function test_say_buzz_when_number_is_multiple_of_5() {
        Assert.equals('Buzz', robot.say(5));
        Assert.equals('Buzz', robot.say(10));
        Assert.equals('Buzz', robot.say(20));
    }

    function test_say_fizzbuzz_when_number_is_multiple_of_3_and_5() {
        Assert.equals('FizzBuzz', robot.say(15));
        Assert.equals('FizzBuzz', robot.say(30));
        Assert.equals('FizzBuzz', robot.say(45));
    }
}
