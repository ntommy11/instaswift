//
//  ProfileHeaderView.swift
//  instaclone
//
//  Created by 남세현 on 2021/05/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                Spacer()
                
                HStack(spacing: 16){
                    UserStatView(value: 1,title:"Posts")
                    UserStatView(value: 2,title:"Followers")
                    UserStatView(value: 3,title:"Following")
                }
                .padding(.trailing)
            }
            Text("Bruce Wayne")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading,.top])
            Text("Gotham's Dark Knight | Billionaire")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top,2)
            HStack {
                Spacer()
                ProfileActionButtonView()
                Spacer()
            }.padding(.vertical)
        }
    }
}




struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
