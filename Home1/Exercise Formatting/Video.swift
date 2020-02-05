//
//  Video.swift
//  Home1
//
//  Created by Ankit Singhal on 03.02.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI
import AVKit
import UIKit

struct Video: View {
     let videoLocalNames = ["ArmRaisesAnim"]
        
        var body: some View {
            VStack{
                Spacer()
                player(videoName: videoLocalNames[0]).scaledToFit()
                Spacer()
            }
        }
    }

struct Video_Previews: PreviewProvider {
    static var previews: some View {
        Video()
    }
}

struct player : UIViewControllerRepresentable {
    
    var videoName: String = ""
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<player>) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        let url = Bundle.main.path(forResource: videoName, ofType: "mov")!
        let player1 = AVPlayer(url: URL(fileURLWithPath: url))
        controller.player = player1
        player1.play()
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<player>) {
        
    }
}
