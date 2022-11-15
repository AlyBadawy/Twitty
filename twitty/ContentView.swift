  //
  //  ContentView.swift
  //  twitty
  //
  //  Created by Aly Badawy on 11/14/22.
  //

import SwiftUI

struct ContentView: View {
  @State private var showSideMenu: Bool = false
  
  var body: some View {
    NavigationStack {
      ZStack(alignment: .topLeading) {
        MainTabView()
          .navigationBarHidden(showSideMenu)
        if showSideMenu {
          ZStack {
            Color(.black)
              .opacity(showSideMenu ? 0.25 : 0.0)
          }
          .onTapGesture {
            withAnimation(.easeInOut) {
              self.showSideMenu = false
            }
          }
          .ignoresSafeArea()
        }
        SideMenuView()
          .frame(width: 320)
          .offset(x: showSideMenu ? 0 : -320, y: 0)
          .background(showSideMenu ? Color.white : Color.clear)
      }
      .navigationTitle("Home")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button {
            withAnimation(.easeInOut) {
              showSideMenu.toggle()
            }
          } label: {
            Circle()
              .frame(width: 32, height: 32)
          }
        }
      }
      .onAppear {
        showSideMenu = false
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
