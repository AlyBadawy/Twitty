  //
  //  UserFollowStatsView.swift
  //  twitty
  //
  //  Created by Aly Badawy on 11/15/22.
  //

import SwiftUI

struct UserFollowStatsView: View {
  var body: some View {
    HStack(spacing: 24) {
      HStack(spacing: 4) {
        Text("807")
          .font(.subheadline)
          .bold()
        Text("Following")
          .font(.caption)
          .foregroundColor(.gray)
      }
      HStack {
        HStack(spacing: 4) {
          Text("6.9M")
            .font(.subheadline)
            .bold()
          Text("Followers")
            .font(.caption)
            .foregroundColor(.gray)
        }
      }
      .padding(.vertical)
    }
  }
}

struct UserFollowStatsView_Previews: PreviewProvider {
  static var previews: some View {
    UserFollowStatsView()
  }
}
