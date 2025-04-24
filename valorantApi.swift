import Foundation
import FoundationNetworking

struct valorantModel: Codable {
    let status: Int
    let data: [valorantDataModel]   
}

struct valorantDataModel: Codable {
    let uuid: String
    let displayName: String
    let description: String
    let developerName: String
    let releaseDate: String?
    let displayIcon: String?
    let displayIconSmall: String?
    let bustPortrait: String?
    let fullPortrait: String?
    let fullPortraitV2:String?
    let killfeedPortrait: String?
    let background: String?  
    let isFullPortraitRightFacing: Bool
    let role: Role?
    let abilities: [Ability]
}

struct Role: Codable{
    let uuid: String
    let displayName: String
    let description: String
    let displayIcon: String?
}

struct Ability: Codable{
    let slot: String
    let displayName: String
    let description: String
    let displayIcon: String?
}

func valorantApi(){
    
    let urlStr="https://valorant-api.com/v1/agents"

    guard let url = URL(string: urlStr) else {
        return
    }

    let session = URLSession.shared
    let dataTask=session.dataTask(with: url) { data , response , error in 
    
        if let error=error{
            print("Error: ",error)
            return
        }

        guard let valorantData=data else{
            print("No dtaa received")
            return
        }

        do{
            let jsonData=try JSONDecoder().decode(valorantModel.self, from: valorantData)

            for valorant in jsonData.data{
                print("uuid: \(valorant.uuid), DisplayName: \(valorant.displayName),\ndescription: \(valorant.description)") //, developerName: \(valorant.developerName), releaseDate: \(valorant.releaseDate), displayIcon: \(valorant.displayIcon), displayIconSmall: \(valorant.displayIconSmall), bustPortrait: \(valorant.bustPortrait), fullPortrait: \(valorant.fullPortrait), fullPortraitV2: \(valorant.fullPortraitV2), killfeedPortrait: \(valorant.killfeedPortrait), background: \(valorant.background), isFullPortraitRightFacing: \(valorant.isFullPortraitRightFacing)")
                print("\n")
            }
            
        }catch{
            print("Deocding errro:" ,error)
        }
    } 
    dataTask.resume()
}

valorantApi()
RunLoop.main.run()