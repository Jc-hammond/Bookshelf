//
//  AppTabView.swift
//  Bookshelf
//
//  Created by Connor Hammond on 8/22/21.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            BookListView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Books")
                }
            CategoriesView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Categories")
                }
            ScannerView()
                .tabItem {
                    Image(systemName: "barcode.viewfinder")
                    Text("Scanner")
                }
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
