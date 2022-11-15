  //
  //  SideMenuRowView.swift
  //  twitty
  //
  //  Created by Aly Badawy on 11/15/22.
  //

import SwiftUI

struct SideMenuRowView: View {
  let option: SideMenuViewModel
  
  var body: some View {
    HStack(spacing: 16) {
      Image(systemName: option.imageName)
        .font(.headline)
        .foregroundColor(.gray)
      Text(option.title)
        .foregroundColor(.black)
        .font(.subheadline)
      Spacer()
    }
    .frame(height: 40)
    .padding(.horizontal)
  }
}

struct SideMenuRowView_Previews: PreviewProvider {
  static var previews: some View {
    SideMenuRowView(option: SideMenuViewModel.profile)
  }
}
