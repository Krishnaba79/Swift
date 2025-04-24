// original "House" (base struct)
struct House {
    let address: String
    let squareFeet:Double

    init(address:String,squareFeet:Double){
        self.address = address
        self.squareFeet = squareFeet
    }
}

// EXTENSION 1: ADDING COMPUTED PROPERTIES
// THINK OF THIS IS INSTALLING SMART HOME FEATURES - ADDING NEW CAPABILITIES
// WITHOUT CHANGING THE ORIGINAL STRUCTURE

extension House {
    var priceEstimate: Double {
        // Assuming $200 per square foot
        return squareFeet * 200
    }

    var sizeCategory: String{
        switch squareFeet {
        case 0...1500:return "Cozy"
        case 1501...2500:return "Medium"
        default:return "Spacious"
        }
    }
}

let house = House(address: "C-302,nikol",squareFeet: 2000.2)
print(house)
print("The size of House is \(house.squareFeet)")
print("The price Estimate of House is \(house.priceEstimate)")


// EXTENSION & COMPUTED PROPERTIES TASK
// CERATE STRUCT "Song" WITHE title, artist, duration use init
// create class "Playlsit" with noOfSongs
// create an extension for playlist which have computed property: called Duration 

struct Song {
    let title: String
    let artist: String
    let duration: Double // Duration in seconds
    
    init(title: String, artist: String, duration: Double) {
        self.title = title
        self.artist = artist
        self.duration = duration
    }
}

class Playlist {
    var songs: [Song] = []
    
    init(songs: [Song]) {
        self.songs = songs
    }
    
    var noOfSongs: Int {
        return songs.count
    }
}

extension Playlist {
    var totalDuration: Double {
        var totalDuration = 000.0
        for song in songs {
            totalDuration += song.duration
        }
        return totalDuration
    }
}

let song1 = Song(title: "Song One", artist: "Artist Arigit", duration: 210)
let song2 = Song(title: "Song Two", artist: "Artist Atif Aslam", duration: 180)
let song3 = Song(title: "Song Three", artist: "Artist Shreya", duration: 240)

let playlist = Playlist(songs: [song1, song2])

print("Number of songs: \(playlist.noOfSongs)")
print("Total duration: \(playlist.totalDuration) seconds")
