//
//  VideoListView.swift
//  Africa
//
//  Created by Felipe Lobo on 20/04/21.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    let hapitcImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List(videos) {item in
                NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                    VideoListItemView(video: item)
                        .padding(.vertical,8)
                }
            }//List
            .navigationBarTitle("Videos", displayMode: .large)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        videos.shuffle()
                        hapitcImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }//Navigation
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
