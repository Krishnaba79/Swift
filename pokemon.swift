import Foundation
import FoundationNetworking

struct pokemonModel: Codable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [pokemonDataModel]
}

struct pokemonDataModel: Codable {
    let name: String
    let url: String
}

func fetchpokemon() {
    let urlStr = "https://pokeapi.co/api/v2/pokemon/?offset=15&limit=15"
    
    guard let url = URL(string: urlStr) else {
        return
    }

    let session = URLSession.shared
    let dataTask = session.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error:", error)
            return
        }

        guard let pokemonData = data else {
            print("No data received")
            return
        }

        do {
            let jsonData = try JSONDecoder().decode(pokemonModel.self, from: pokemonData)
            
            for pokemon in jsonData.results {
                print("Name: \(pokemon.name), URL: \(pokemon.url)")
            }
        } catch {
            print("Decoding error:", error)
        }
    }
    dataTask.resume()
}

fetchpokemon()
RunLoop.main.run()