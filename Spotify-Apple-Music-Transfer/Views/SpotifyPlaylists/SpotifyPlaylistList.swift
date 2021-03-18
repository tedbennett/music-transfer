//
//  SpotifyPlaylistList.swift
//  Spotify-Apple-Music-Transfer
//
//  Created by Ted Bennett on 26/10/2020.
//

import SwiftUI

struct SpotifyPlaylistList: View {
    @ObservedObject var viewModel = SpotifyPlaylistsViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.playlists) { playlist in
                    NavigationLink(
                        destination: SpotifyPlaylistDetailView(playlist: playlist),
                        label: {
                            PlaylistItem(name: playlist.name, imageUrl: playlist.images.first?.url)
                        })
                }
            }.navigationTitle("Spotify Playlists")
        }
    }
}

struct SpotifyPlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        SpotifyPlaylistList()
    }
}