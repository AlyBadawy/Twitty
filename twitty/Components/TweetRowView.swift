//
//  TweetRowView.swift
//  twitty
//
//  Created by Aly Badawy on 11/14/22.
//

import SwiftUI

struct TweetRowView: View {
  var body: some View {
    VStack(alignment: .leading) {
      HStack(alignment: .top, spacing: 12) {
        Circle()
          .frame(width: 56, height: 56)
          .foregroundColor(Color(.systemBlue))
        
        VStack(alignment: .leading, spacing: 4) {
          HStack {
            Text("Aly Badawy")
              .font(.subheadline)
              .bold()
            
            Text("@alybadawy")
              .foregroundColor(.gray)
              .font(.caption)
            
            Text("2w")
              .foregroundColor(.gray)
              .font(.caption)
          }
          
          Text("I believe I can fly!!!! ")
            .font(.subheadline)
            .multilineTextAlignment(.leading)
        }
      }
      
      HStack {
        Button {
            //
        } label: {
          Image(systemName: "bubble.left")
            .font(.subheadline)
        }
        Spacer()
        Button {
            //
        } label: {
          Image(systemName: "arrow.2.squarepath")
            .font(.subheadline)
        }
        Spacer()
        Button {
            //
        } label: {
          Image(systemName: "heart")
            .font(.subheadline)
        }
        Spacer()
        Button {
            //
        } label: {
          Image(systemName: "bookmark")
            .font(.subheadline)
        }
      }
      .padding()
      .foregroundColor(.gray)
      
      Divider()
    }.padding()
    
  }
    
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
