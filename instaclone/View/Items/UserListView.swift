//
//  UserListView.swift
//  instaclone
//
//  Created by 남세현 on 2021/05/23.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<10){ _ in
                    NavigationLink(
                        destination: ProfileView(),
                        label:{
                            UserCell()
                                .padding(.leading, 8)
                        }
                    )
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
