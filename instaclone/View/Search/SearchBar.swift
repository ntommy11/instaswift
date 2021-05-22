//
//  SearchBar.swift
//  instaclone
//
//  Created by 남세현 on 2021/05/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack{
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal,24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(
                                minWidth: 0,
                                maxWidth: .infinity,
                                alignment: .leading
                            )
                            .padding(.leading, 8)
                    }
                )
                .onTapGesture {
                    isEditing = true
                }
                .transition(.scale)
                .animation(.default)
            ZStack {
                if isEditing{
                    Button(
                        action: {
                            isEditing = false
                            text = ""
                            UIApplication.shared.endEditing()
                        },
                        label: {
                            Text("cancel")
                        }
                    )
                    .padding(.trailing, 8)
                    .transition(AnyTransition
                        .opacity.animation(.easeInOut(duration: 0.3))
                        .combined(with: .move(edge: .trailing)))
                    .animation(.default)
                }
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(
            text: .constant("Search..."),
            isEditing: .constant(true)
        )
    }
}
