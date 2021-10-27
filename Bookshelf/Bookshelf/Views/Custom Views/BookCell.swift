//
//  BookCell.swift
//  Bookshelf
//
//  Created by Connor Hammond on 10/27/21.
//

import SwiftUI

struct BookCell: View {
    var body: some View {
        HStack {
            Image("bookPlaceholder")
                .resizable()
                .frame(width: 60, height: 80)
            VStack(alignment: .leading, spacing: 5) {
                Text("Harry Potter Book Title")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .padding(.top)
                    .lineLimit(1)
                Text("The Author Name Here")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .lineLimit(1)
                Text("This is where the description of the book will load. This is to allow users to see a brief summary of the plot.")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                    .lineLimit(3)
            }
            Image(systemName: "chevron.right")
                .foregroundColor(.blue)
                .frame(width: 10, height: 10)
                .padding(.leading)
        }
        .padding()
    }
}

struct BookCell_Previews: PreviewProvider {
    static var previews: some View {
        BookCell()
    }
}
