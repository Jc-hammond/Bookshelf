//
//  BookListView.swift
//  Bookshelf
//
//  Created by Connor Hammond on 8/27/21.
//

import SwiftUI

struct BookListView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            ZStack {
                TextField("Search for a book...", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            NavigationView {
                VStack {
                    List {
                        BookCell()
                        BookCell()
                        BookCell()
                    }
                }
                .navigationTitle("Books")
            }
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
