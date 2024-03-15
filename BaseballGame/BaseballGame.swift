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
            
            print("숫자를 입력하세요")
            // 1. 유저에게 입력값을 받음
            let input = readLine()!
            // 2. 정수로 변환되지 않는 경우 반복문 처음으로 돌아가기
            if let inputnumber = Int(input){
            }
            // 3. 세자리가 아니거나, 0을 가지거나 특정 숫자가 두번 사용된 경우 반복문 처음으로 돌아가기
            guard input.count == 3 else {
                print("올바르지 않은 입력값입니다")
                continue
            }
            guard input.allSatisfy({ $0.isNumber}) else {
                print("올바르지 않은 입력값입니다")
                continue
            }
            if input.contains("0") {
                print("올바르지 않은 입력값입니다")
                continue
            }
            //특정 숫자가 두번 사용된 경우 array로 만들어서 비교
            let samenumber = Array(input)
//            //원볼이나 스트라이크 판단문
//            for i in 0..<2 {
//
//                strik += 1
//                else {
//                ball += 1
//                }
//              }

            
          // 4. 정답과 유저의 입력값을 비교하여 스트라이크/볼을 출력하기/ 숫자가 들어왔지만 안맞는경우 nothing
            if strik == 0 && ball == 0 {
                print("nothing")
            } else {
                print("\(strik)스트라이크, \(ball)볼")
            }
//           만약 정답이라면 break 호출하여 반복문 탈출
            if strik == 3 {
                print("정답입니다")
                break
            }
        }
    }
}
