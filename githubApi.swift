import Foundation
import FoundationNetworking

struct githubModel: Codable{
    let type: String
    let setup: String
    let punchline: String
    let id: Int
}

func gitHub(){

    // let urlstr="https://official-joke-api.appspot.com/random_ten"
    // let urlstr="https://official-joke-api.appspot.com/types"
    let urlstr="https://official-joke-api.appspot.com/jokes/programming/random"


    if let url=URL(string: urlstr){

        let session=URLSession.shared

        let dataTask=session.dataTask(with: url){ data , response, error in
        
            guard let githubData = data else { return }

            do{
                let jsonData = try JSONDecoder().decode([githubModel].self,from: githubData)
                //  let jsonData = try JSONDecoder().decode([String].self,from: githubData)
                debugPrint(jsonData)
            }catch(let err){
                debugPrint("Error in decoding \(err)")
            }
        }
        dataTask.resume()
    }
    else{
        print("URL NOT VALID")
    }
}

gitHub()
RunLoop.main.run()