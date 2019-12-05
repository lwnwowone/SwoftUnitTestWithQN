//© Copyright 2014 – 2019 Micro Focus or one of its affiliates

// The only warranties for products and services of Micro Focus and its affiliates and licensors (“Micro Focus”) are as may be set forth in the express warranty statements accompanying such products and services. Nothing herein should be construed as constituting an additional warranty. Micro Focus shall not be liable for technical or editorial errors or omissions contained herein. The information contained herein is subject to change without notice.

import UIKit

enum GameResult {
    case Number1
    case Number2
    case Both
    case Neither
    case Invalid
}

class Game: NSObject {

    let number1: Int
    let number2: Int

    init(num1: Int, num2: Int) {
        number1 = num1
        number2 = num2
        super.init()
    }
    
    func reslove(num: Int) -> GameResult {
        if(num <= 0) {
            return GameResult.Invalid
        }
        
        let flagFor1 = 0 == num % number1
        let flagFor2 = 0 == num % number2
        
        if flagFor1 {
            if flagFor2 {
                return GameResult.Both
            }
            return GameResult.Number1
        }
        else if flagFor2 {
            return GameResult.Number2
        }
        
        return GameResult.Neither
    }
    
}
