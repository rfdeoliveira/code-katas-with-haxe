import utest.Runner;
import utest.ui.Report;

class AllTests {
    public static function main() {
        var runner = new Runner();
        runner.addCases(katas);
        Report.create(runner);
        runner.run();
    }
}
