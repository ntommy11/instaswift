//
//  FeedCell.swift
//  instaclone
//
//  Created by 남세현 on 2021/05/22.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading){
            // user info
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width:36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("joker")
                    .font(.system(size: 14, weight: .semibold))
            }
            .padding([.leading, .top], 8)
            // post image
            Image("batman")
                .resizable()
                .scaledToFit()
                //.frame(maxHeight:340)
                .clipped()
                //.cornerRadius(18)
            // action buttons
            HStack(spacing: 12) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width:20, height: 20)
                        .font(.system(size: 20))
                })
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width:20, height: 20)
                        .font(.system(size: 20))
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width:20, height: 20)
                        .font(.system(size: 20))
                })
            }
            .padding(.leading, 8)
            .foregroundColor(.black)
            Text("3 likes")
                .font(.system(size: 14, weight:  .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 4)
            // caption
            HStack{
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))
                + Text(" All man have limits")
                    .font(.system(size: 14))
            }
            .padding(.horizontal, 8)
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding([.leading, .top], 8)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
