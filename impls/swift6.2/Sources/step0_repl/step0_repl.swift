// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct step0_repl {
    func READ(string: String) -> String {
        return string
    }

    func EVAL(string: String) -> String {
        return string
    }

    func PRINT(_ string: String) -> String {
        return string
    }

    func rep(string: String) -> String {
        let readResult = READ(string: string)
        let evalResult = EVAL(string: readResult)
        let printResult = PRINT(evalResult)
        return printResult
    }

    static func main() {
        let repl = step0_repl()
        repeat {
            print("user> ", terminator: "")
            guard let input = readLine() else { break }
            let output = repl.rep(string: input)
            print(output)
        } while true;
    }
}
