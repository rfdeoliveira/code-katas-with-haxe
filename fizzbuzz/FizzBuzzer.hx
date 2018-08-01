/*
    FizzBuzzer Robot

    An instance of this class represents a robot player,
    which receives a integer number and answers:

    * 'Fizz', for multiple of 3
    * 'Buzz', for multiple of 5
    * 'FizzBuzz', for multiple of 3 and 5
    * The very same number as a String, when it is not multiple of both 3 and 5.

*/
class FizzBuzzer {
    public function new() {}

    static function multipleOf(base:Int, number:Int):Bool
        return number % base == 0;

    public function say(pos:Int) {
        var multipleOf3 = multipleOf.bind(3);
        var multipleOf5 = multipleOf.bind(5);
        var answer = Std.string(pos);

        if (multipleOf3(pos) && multipleOf5(pos)) {
            answer = 'FizzBuzz';
        } else if (multipleOf3(pos)) {
            answer = 'Fizz';
        } else if (multipleOf5(pos)) {
            answer = 'Buzz';
        }

        return answer;
    }

    static function main() {
        // Creates a new FizzBuzzer Robot
        var robot = new FizzBuzzer();

        // Makes it play from position 1 to 100
        for (i in 1...101) {
            trace('$i -> ' + robot.say(i));
        }
    }
}
