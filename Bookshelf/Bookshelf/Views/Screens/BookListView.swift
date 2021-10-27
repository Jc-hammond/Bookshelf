//
//  BookListView.swift
//  Bookshelf
//
//  Created by Connor Hammond on 8/27/21.
//

import SwiftUI

struct BookListView: View {
    
    var body: some View {
        VStack {
            List {
                BookCell()
                BookCell()
                BookCell()
            }
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}

struct BookCell: View {
    var body: some View {
        HStack{
            Image(systemName: "book")
                .foregroundColor(.blue)
            VStack {
                Text("Book Title")
                Text("Book Description")
            }
        }
    }
}
