  //
  //  SideMenuView.swift
  //  twitty
  //
  //  Created by Aly Badawy on 11/15/22.
  //

import SwiftUI

struct SideMenuView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 16) {
      VStack(alignment: .leading) {
        Circle()
          .frame(width: 48, height: 48)
        VStack(alignment: .leading, spacing: 4) {
          Text("Aly Badawy")
            .font(.headline)
          Text("@alybadawy")
            .font(.caption)
            .foregroundColor(.gray)
        }
        UserFollowStatsView()
      }
      .padding(.leading)
      ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
        if option == .profile {
          NavigationLink {
            ProfileView()
          } label: {
            SideMenuRowView(option: option)
          }
        } else if option == .logout {
          Button {
            print("DEBUG: Handle logout button!")
          } label: {
            SideMenuRowView(option: option)
          }
        } else {
          SideMenuRowView(option: option)
        }
      }
      Spacer()
    }
  }
}

struct SideMenuView_Previews: PreviewProvider {
  static var previews: some View {
    SideMenuView()
  }
}
