class BaseballGame {
    
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
    
    func start() {
        let answer = makeAnswer()
        print("게임을 시작합니다")
        
        
        while true {
            var strik = 0
            var ball = 0
            
            print("숫자를 입력하세요 :", terminator: " ")
          
            let input = readLine()!
            
            guard input.count == 3 else {
                print("세자리 숫자가 아닌 수는 올바르지 않은 입력값입니다")
                continue
            }
            guard input.allSatisfy({ $0.isNumber}) else {
                print("숫자가 아닌것은 올바르지 않은 입력값입니다")
                continue
            }
            if input.contains("0") {
                print("0은 올바르지 않은 입력값입니다")
                continue
            }
            let numberArray = input.map { String($0) }.compactMap { Int($0) }
   
            for (index,number) in numberArray.enumerated() {
                
                if number == answer[index] {
                    strik += 1
                    continue
                }
                if answer.contains(number) {
                    ball += 1
                    continue
                }
            }
           
            if strik == 0 && ball == 0 {
                print("nothing") }
            else if strik == 3 {
                print("정답입니다!")
                break
            } else {
            print("\(strik)스트라이크, \(ball)볼")
            }
        }
    }
}

