//
//  ExerciseDetail.swift
//  Home1
//
//  Created by Ankit Singhal on 03.02.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI
import AVKit
import AVFoundation
import UIKit


struct PlayerView: UIViewRepresentable {
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) {
  }
  func makeUIView(context: Context) -> UIView {
    return PlayerUIView(frame: .zero)
  }
}


class PlayerUIView: UIView {
    var videoName: String = ""
  private let playerLayer = AVPlayerLayer()
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    let url = Bundle.main.path(forResource: videoName, ofType: "mov")!
    let player = AVPlayer(url: URL(fileURLWithPath: url))
    player.play()
    
    playerLayer.player = player
    layer.addSublayer(playerLayer)
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  override func layoutSubviews() {
    super.layoutSubviews()
    playerLayer.frame = bounds
  }
}


struct ExerciseDetail: View {
    
    let videoLocalNames = ["ArmRaisesAnim"]
    
    var body: some View {
        ZStack {
            PlayerView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .scaledToFill()
            timer()
                .padding(.top, 190)
        .padding(.leading, 500)
            NavigationLink(destination: ExerciseDetail2()){
                Text("")
                
            }
        }
    
    }
}

struct ExerciseDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetail()
    }
}
