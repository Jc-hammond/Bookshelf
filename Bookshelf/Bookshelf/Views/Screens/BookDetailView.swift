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
            SheetButtons()
            
            Image("bookPlaceholder")
                .resizable()
                .frame(width: 150, height: 180)
                .padding(.bottom)
            VStack {
                Text("Harry Potter and The Sorcer's Stone")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .padding(6)
                
                Text("Book Author")
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                    
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
                    Text("This is a book description explaining the plot, character introduction, and overview of what this book is about.")
                        .fontWeight(.semibold)
                        .font(.system(size: 14))
                        .padding()
                    //JCH- This spacer may ruin the layout based on the length of the book description. revisit in testing
                    Spacer()
                    Button {
                        //JCH- add link to website
                    } label: {
                        BSButton(title: "View Online")
                    }
                }
            }
        }
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
                    .lineLimit(1)
                    .foregroundColor(.white)
                    .font(.system(size: 10))
            }
        }
        .frame(width: 40, height: 40)
    }
}

struct SheetButtons: View {
    var body: some View {
        HStack {
            Button {
                //JCH- Dismiss sheet
            } label: {
                Image(systemName: "chevron.left")
                    .frame(width: 10, height: 10)
                    .padding()
            }
            Spacer()
            
            Button {
                //JCH- add favoriting functionality
                //JCH- Switch .fill based on favorite status
            } label: {
                Image(systemName: "star.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
            }
        }
    }
}
