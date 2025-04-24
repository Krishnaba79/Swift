import Foundation
import FoundationNetworking

struct JokeModel: Codable {
    let id: Int
    let type: String
    let setup: String
    let punchline:String
}

func fetchJokes(){

    let urlstr="https://official-joke-api.appspot.com/jokes/random/25"

    if let url=URL(string: urlstr){

        let session=URLSession.shared

        let dataTask=session.dataTask(with: url){ data, response, error in
        
            guard let jokeData = data else { return }

            do{
                let jsonData=try JSONDecoder().decode([JokeModel].self,from: jokeData)
                debugPrint(jsonData)

            }catch(let err){
                debugPrint("Error in decoding \(err)")
            }
        }
        dataTask.resume()
    }
    else{
        print("URL NoT valid")
    }
}

fetchJokes()
RunLoop.main.run()