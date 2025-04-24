import Foundation
import FoundationNetworking

struct jsonModel: Codable{
    let id: Int
    let name: String
    let username: String
    let email: String
    let phone: String
    let website:String
    let address: Address?
    let company: Company?
}

struct Address: Codable{
    let street: String
    let suite: String
    let city: String
    let zipcode: String
}

struct Company: Codable{
    let name: String
    let catchPhrase: String
    let bs: String
}

func jsonApi(){

    let urlstr="https://jsonplaceholder.typicode.com/users"

    if let url=URL(string: urlstr){

        let session=URLSession.shared

        let dataTask=session.dataTask(with: url){ data , response , error in 
        
            guard let jsonApiData=data else{ return }

            do{
                let jsonData=try JSONDecoder().decode([jsonModel].self,from: jsonApiData)
                debugPrint(jsonData)
            }catch(let err){
                debugPrint("Eror in decoding \(err)")
            }
        }
        dataTask.resume()
    }
    else{
        print("URL not valid")
    }
    
}

jsonApi()
DispatchQueue.main.asyncAfter(deadline: .now() + 15){exit(0)}
RunLoop.main.run()