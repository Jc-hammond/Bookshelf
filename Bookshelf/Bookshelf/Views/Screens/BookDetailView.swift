//
//  BookDetailView.swift
//  Bookshelf
//
//  Created by Connor Hammond on 10/27/21.
//

import SwiftUI

struct BookDetailView: View {
    var body: some View {
        VStack {
            Image("bookPlaceholder")
                .resizable()
                .frame(width: 150, height: 180)
                .padding(.bottom)
            VStack {
                Text("Harry Potter and The Sorcer's Stone")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("Book Author")
                    .font(.title3)
                    .padding(.bottom)
                    
                ZStack {
                    Rectangle()
                        .fill(Color.appPrimary)
                        .cornerRadius(14)
                        .frame(width: 251, height: 41)
                    HStack(spacing: 37) {
                        DetailButton(buttonImage: "📝",
                                     buttonTitle: "Want")
                        DetailButton(buttonImage: "📖",
                                     buttonTitle: "Reading")
                        DetailButton(buttonImage: "📚",
                                     buttonTitle: "Read")
                    }
                }
                VStack {
                    Text("Description:")
                    Text("This is a book description explaining the plot, character introduction, and overview of what this book is about.")
                    
                    Button {
                        //JCH- Link to book site on google.com
                    } label: {
                        Text("View Online")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(20)
                            .background(Rectangle().fill(Color.appPrimary).cornerRadius(14))
                    }
                }
            }
        }
        .frame(width: 305, height: 621)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
    }
}

struct DetailButton: View {
    
    var buttonImage: String
    var buttonTitle: String
    
    var body: some View {
        Button {
            //JCH- Add Button action, link to sort books accordingly
        } label: {
            VStack(spacing: 2) {
                Text(buttonImage)
                Text(buttonTitle)
                    .lineLimit(2)
                    .foregroundColor(.white)
                    .font(.system(size: 10))
            }
        }
        .frame(width: 40, height: 40)
    }
}
