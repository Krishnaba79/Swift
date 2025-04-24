import Foundation
import FoundationNetworking


struct launchModel: Codable{
    let rocket: String?
    let details: String?
    let launchpad: String?
    let flight_number: Int?
    let name: String?
    let date_utc: String?
    let date_unix: Int?
    let date_local: String?
    let date_precision: String?
    let upcoming: Bool?
    let id: String?
    let link: LinkModel?
    
}

struct LinkModel: Codable{
    let webcast: String?
    let youtube_id: String?
    let article: String?
    let wikipedia: String?
    let patch: PatchModel?

} 

struct PatchModel: Codable{
    let small: String?
    let large: String?
}

func spacexdataApi(){

    let urlStr="https://api.spacexdata.com/v4/launches"

    guard let url = URL(string: urlStr) else {
        return
    }

    let session=URLSession.shared
    let dataTask=session.dataTask(with: url) { data , response , error in 
    
        if let error=error{
            print("Error: ",error)
            return
        }
    
        guard let spacexData=data else{
            print("No data received")
            return
        }

        do{
            let jsonData=try JSONDecoder().decode([launchModel].self, from: spacexData)

            for spacex in jsonData {
                print("id: \(spacex.id) , name: \(spacex.name)")
            }
            
        }catch{
            print("Decoding error: ", error)
        }
    
    }
    dataTask.resume()

}

spacexdataApi()
RunLoop.main.run()