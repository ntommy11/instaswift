//
//  PostGridView.swift
//  instaclone
//
//  Created by 남세현 on 2021/05/23.
//

import SwiftUI

struct PostGridView: View {
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width/3
    var body: some View {
        LazyVGrid(columns: items, spacing: 2) {
            ForEach(0..<10){ _ in
                NavigationLink(
                    destination: FeedView(),
                    label: {
                        Image("batman")
                            .resizable()
                            .scaledToFill()
                            .frame(width: width, height: width)
                            .clipped()
                    })
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
