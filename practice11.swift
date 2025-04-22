// Create struct or class called ‘Song’ with following parameters:
//      1. songName, 2. artist, 3. Duration
//      Create struct or class called ‘Playlist’ with following parameters:
//      1. songs ( array of ‘Song’ ), 2. playlistName, 3. playlistDuration
//      Now take all the required input from the user in proper logical sequence in order to create different songs & to add them into a playlist in a continuous loop.
//      Print the whole playlist with all details at the end of every loop iteration.
//      Ask the user at the end of every iteration if they want to exit. 


struct Song {
    var name: String
    var artist: String
    var duration: Double

}
struct Playlist {
    var playlistName: String
    var songs: [Song]
    var totalDuration: Double
}

func getUserInput(promptText: String) -> String {
    print(promptText, terminator: "")
    return readLine() ?? ""
}

func createPlaylist() {

    var continueLoop: Bool = true
    var tDuration = 0.0

    while continueLoop == true {
        //var allPlaylist: [Playlist] = []

        var allSongs: [Song] = []
        var playlistName = getUserInput(promptText: "Enter name of playlist: ")
        var songName = getUserInput(promptText: "Enter name of song: ")
        var artistName = getUserInput(promptText: "Enter name of artist: ")
        var songDuration =
            Double(getUserInput(promptText: "Enter duration of song (eg: 2.13): ")) ?? 0.0

        tDuration = tDuration + songDuration
        var song = Song(name: songName, artist: artistName, duration: songDuration)
        allSongs.append(song)

        var playListObj = Playlist(
            playlistName: playlistName, songs: allSongs, totalDuration: tDuration)
        print("current playlist details: \(playListObj)")

        var ans = getUserInput(promptText: "Do you want to enter more songs? (y/n): ")
        if ans == "y" {
            continueLoop = true
        } else {
            continueLoop = false
            //break
        }
    }

}
createPlaylist()