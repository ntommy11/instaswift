//
//  SearchView.swift
//  instaclone
//
//  Created by 남세현 on 2021/05/22.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State var inSearchMode = false
    
    var body: some View {
        ScrollView{
            // search bar
            SearchBar(text: $searchText, isEditing: $inSearchMode)
                .padding()
            // grid view/ userlist view
            ZStack {
                if inSearchMode{
                    UserListView()
                }else{
                    PostGridView()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
