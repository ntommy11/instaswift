//
//  NotificationView.swift
//  instaclone
//
//  Created by 남세현 on 2021/05/22.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<3){ _ in
                    NotificationCell()
                        .padding(.top)
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
