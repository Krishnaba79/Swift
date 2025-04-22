//  challenge title: FixxeBuzz
//  challenge statment: given an Int 'n', return an array of String [1-indexed] called 'answer' where:-
//     CONDITIONS:- 
//         answer[i] == "FizzeBuzz" IF 'i' is dvisible by 3 and 5
//         answer[i] == "Fizz" IF 'i' is dvisible by 3
//         answer[i] == "Buzz" IF 'i' is dvisible by 5
//         answer[i] == "\(i)" IF of the above condition are true


var answer: [String] = []
func fizzbuzz(num: Int){
    for i in Range(1...num){
        answer.append(String(i))
    }
    for i in Range(1...answer.count){
        let num = i + 1
        if (num%3 == 0 && num%5 == 0){
            answer[i] = "FizzBuzz"
        }
        else if(num%3 == 0){
            answer[i] = "Fizz"
        }
        else if(num%5 == 0){
            answer[i] = "Buzz"
        }
        // else{
        //     answer[i] = String(i)
        // }
    }

}

fizzbuzz(num: 15)
print(answer)