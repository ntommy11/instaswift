//
//  UserCell.swift
//  instaclone
//
//  Created by 남세현 on 2021/05/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            //image
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            
            //Vstack -> username, fullname
            VStack(alignment: .leading) {
                Text("batman")
                    .font(.system(size: 14, weight:  .semibold))
                Text("Bruce Wayne")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
