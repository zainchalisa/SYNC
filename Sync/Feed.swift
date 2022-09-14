//
//  Feed.swift
//  Sync
//
//  Created by Zain Chalisa on 9/9/22.
//

import SwiftUI

struct FeedScreen: View {
    var body: some View {
        Button("Post"){
            // initiate pop up window with text field and attachment add ons
            PostPopUp()
        }
        .foregroundColor(.white)
        .frame(width: 100, height: 20)
        .background(Color.orange)
        .cornerRadius(10)
        
    }
}

struct PostPopUp: View{
    var body: some View{
        Text("Write Post")
        
    }
}
