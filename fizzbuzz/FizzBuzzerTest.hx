class FizzBuzzerTest extends haxe.unit.TestCase {
    var robot:FizzBuzzer;

    override function setup(){
        robot = new FizzBuzzer();
    }

    // Testing numbers which aren't multiples of both 3 and 5
    public function testSay1WhenNumberIs1() {
        assertEquals('1', robot.say(1));
    }

    public function testSay2WhenNumberIs2() {
        assertEquals('2', robot.say(2));
    }

    public function testSay4WhenNumberIs4() {
        assertEquals('4', robot.say(4));
    }

    // Testing multiples of 3
    public function testSayFizzWhenNumberIs3() {
        assertEquals('Fizz', robot.say(3));
    }

    public function testSayFizzWhenNumberIs6() {
        assertEquals('Fizz', robot.say(6));
    }

    public function testSayFizzWhenNumberIs9() {
        assertEquals('Fizz', robot.say(9));
    }

    // Testing multiples of 5
    public function testSayBuzzWhenNumberIs5() {
        assertEquals('Buzz', robot.say(5));
    }

    public function testSayBuzzWhenNumberIs10() {
        assertEquals('Buzz', robot.say(10));
    }

    public function testSayBuzzWhenNumberIs20() {
        assertEquals('Buzz', robot.say(20));
    }

    // Testing multiples of 3 and 5
    public function testSayFizzBuzzWhenNumberIs15() {
        assertEquals('FizzBuzz', robot.say(15));
    }

    public function testSayFizzBuzzWhenNumberIs30() {
        assertEquals('FizzBuzz', robot.say(30));
    }

    public function testSayFizzBuzzWhenNumberIs45() {
        assertEquals('FizzBuzz', robot.say(45));
    }

    static function main() {
        var runner = new haxe.unit.TestRunner();
        runner.add(new FizzBuzzerTest());
        var success = runner.run();

        #if sys
        Sys.exit(success ? 0 : 1);
        #end
    }
}
