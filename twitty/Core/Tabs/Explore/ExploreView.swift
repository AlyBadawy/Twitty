  //
  //  ExploreView.swift
  //  twitty
  //
  //  Created by Aly Badawy on 11/14/22.
  //

import SwiftUI

struct ExploreView: View {
  var body: some View {
    NavigationStack {
      VStack {
        ScrollView {
          LazyVStack {
            ForEach(0 ... 25, id: \.self) { _ in
              NavigationLink {
                ProfileView()
              } label: {
                UserRowView()
              }
            }
          }
        }
      }
      .navigationBarTitle("Explore")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct ExploreView_Previews: PreviewProvider {
  static var previews: some View {
    ExploreView()
  }
}
