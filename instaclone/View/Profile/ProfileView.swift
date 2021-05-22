//
//  ProfileView.swift
//  instaclone
//
//  Created by 남세현 on 2021/05/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView{
            VStack{
                ProfileHeaderView()
                    .padding(.top)
                
                PostGridView()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
