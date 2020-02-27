package katas;

using Sys;

class FizzBuzz {
    public function new() {}

    public static function demo() {
        var robot = new FizzBuzz();

        Sys.println("====================");
        Sys.println("| Fizzbuzzer Robot |");
        Sys.println("====================");

        Sys.print("What's the position number? ");

        var position = Sys.stdin().readLine();
        var number = Std.parseInt(position);
        var answer = robot.say(number);

        Sys.println('Robot says: $answer');
        Sys.exit(0);
    }

    static inline function multipleOf(base : Int, number : Int) : Bool
        return number % base == 0;

    public function say(pos : Int) : String {
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
}
