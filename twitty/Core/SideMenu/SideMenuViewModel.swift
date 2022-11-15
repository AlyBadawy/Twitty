  //
  //  SideMenuViewModel.swift
  //  twitty
  //
  //  Created by Aly Badawy on 11/15/22.
  //

import Foundation

enum SideMenuViewModel : Int, CaseIterable {
  case profile
  case twittylists
  case favs
  case logout
  
  var title: String {
    switch self {
      case .profile: return "Profile"
      case .twittylists: return "Lists"
      case .favs: return "Bookmarks"
      case .logout: return "Logout"
    }
  }
  
  var imageName: String {
    switch self {
      case .profile: return "person"
      case .twittylists: return "list.bullet"
      case .favs: return "bookmark"
      case .logout: return "arrow.left.square"
    }
  }
}
