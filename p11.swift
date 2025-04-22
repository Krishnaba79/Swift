//  Create struct or class called ‘Song’ with following parameters:
// 1. songName, 2. artist, 3. Duration
// Create struct or class called ‘Playlist’ with following parameters:
// 1. songs ( array of ‘Song’ ), 2. playlistName, 3. playlistDuration
// Now take all the required input from the user in proper logical sequence in order to create different songs & to add them into a playlist in a continuous loop.
// Print the whole playlist with all details at the end of every loop iteration.
// Ask the user at the end of every iteration if they want to exit.

import Foundation

// MARK: - Song Struct
struct Song {
    var songName: String
    var artist: String
    var duration: Int  // Duration in seconds
}

// MARK: - Playlist Struct
struct Playlist {
    var playlistName: String
    var songs: [Song] = []

    var playlistDuration: Int {
        return songs.reduce(0) { $0 + $1.duration }
    }

    func printPlaylistDetails() {
        print("\n🎵 Playlist: \(playlistName)")
        print("Total Duration: \(playlistDuration) seconds")
        print("Songs:")
        for (index, song) in songs.enumerated() {
            print("\(index + 1). '\(song.songName)' by \(song.artist) - \(song.duration) sec")
        }
    }
}

// MARK: - Main Logic
print("Enter Playlist Name:")
guard let playlistName = readLine(), !playlistName.isEmpty else {
    print("Invalid playlist name.")
    exit(0)
}

var playlist = Playlist(playlistName: playlistName)

while true {
    print("\nAdd a New Song")

    print("Enter Song Name:")
    guard let songName = readLine(), !songName.isEmpty else {
        print("Invalid song name.")
        continue
    }

    print("Enter Artist Name:")
    guard let artist = readLine(), !artist.isEmpty else {
        print("Invalid artist name.")
        continue
    }

    print("Enter Duration (in seconds):")
    guard let durationInput = readLine(), let duration = Int(durationInput), duration > 0 else {
        print("Invalid duration.")
        continue
    }

    let newSong = Song(songName: songName, artist: artist, duration: duration)
    playlist.songs.append(newSong)

    // Print updated playlist
    playlist.printPlaylistDetails()

    // Ask to continue or exit
    print("\nDo you want to add another song? (yes/no):")
    if let choice = readLine(), choice.lowercased() == "no" {
        print("\nFinal Playlist Created Successfully 🎉")
        playlist.printPlaylistDetails()
        break
    }
}
