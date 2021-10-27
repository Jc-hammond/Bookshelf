//
//  BookshelfButton.swift
//  Bookshelf
//
//  Created by Connor Hammond on 10/27/21.
//

import SwiftUI

struct BSButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.appPrimary)
            .cornerRadius(10)
    }
}

struct BookshelfButton_Previews: PreviewProvider {
    static var previews: some View {
        BSButton(title: "Test Title")
    }
}
