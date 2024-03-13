class BaseballGame {
    
    
    func start() {
        let answer = makeAnswer()
        print("게임 start")
    }
    
    func makeAnswer() -> [Int] {
        var numbers = [Int]()
        while numbers.count < 3{
            let number = Int.random(in: 1...9)
            if !numbers.contains(number){
                numbers.append(number)
            }
        }
        return numbers
    }
}
