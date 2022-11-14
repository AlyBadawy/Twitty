  //
  //  ProfileView.swift
  //  twitty
  //
  //  Created by Aly Badawy on 11/14/22.
  //

import SwiftUI

struct ProfileView: View {
  @State private var selectedFilter: TweetFilterViewModel = .tweets
  var body: some View {
    VStack(alignment: .leading) {
      header
      actionButtons
      userInfoDetails
      tweetFilterBar
      tweetsView
      Spacer()
    }
  }
}

extension ProfileView {
  var header: some View {
    ZStack(alignment: .bottomLeading) {
      Color(.systemBlue)
        .ignoresSafeArea()
      
      VStack {
        Button {
            //
        } label: {
          Image(systemName: "arrow.left")
            .resizable()
            .frame(width: 20, height: 16)
            .foregroundColor(.white)
            .offset(x: 16, y: 12)
        }
        
        Circle()
          .frame(width: 72, height: 72)
          .offset(x: 16, y: 24)
      }
    }
    .frame(height: 96)
  }
  
  var actionButtons: some View {
    HStack(spacing: 12) {
      Spacer()
      
      Image(systemName: "bell.badge")
        .font(.title3)
        .padding(6)
        .overlay(Circle().stroke(Color.gray, lineWidth:0.75))
      
      Button {
        
      } label: {
        Text("Edit Profile")
          .font(.subheadline)
          .bold()
          .frame(width: 120, height: 32)
          .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color.gray, lineWidth: 0.75)
          )
      }
      .padding(.trailing)
      
    }
  }
  
  var userInfoDetails: some View {
    VStack(alignment: .leading, spacing: 4) {
      HStack {
        Text("Aly Badawy")
          .font(.title2)
          .bold()
        Image(systemName: "checkmark.seal.fill")
          .foregroundColor(Color(.systemBlue))
        
      }
      Text("@alybadawy")
        .font(.subheadline)
        .foregroundColor(.gray)
      Text("Your worst enemy")
        .font(.subheadline)
        .padding(.vertical)
      HStack(spacing: 24) {
        HStack {
          Image(systemName: "mappin.and.ellipse")
          Text("Manhattan, NY")
        }
        HStack {
          Image(systemName: "link")
          Text("https://alybadawy.com")
        }
      }
      .font(.caption)
      .foregroundColor(.gray)
      
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
    .padding(.horizontal)
  }
  
  var tweetFilterBar: some View {
    HStack {
      ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { filterOption in
        VStack {
          Text(filterOption.title)
            .font(.subheadline)
            .fontWeight(selectedFilter == filterOption ? .semibold : .regular)
            .foregroundColor(selectedFilter == filterOption ? .black : .gray)
          Capsule()
            .foregroundColor(selectedFilter == filterOption ? Color(.systemBlue) : Color(.clear))
            .frame(height: 3)
        }
        .onTapGesture {
          withAnimation(.easeInOut) {
            self.selectedFilter = filterOption
          }
        }
      }
    }
    .overlay(Divider()
      .offset(x: 0, y:16)
    )
  }
  
  var tweetsView: some View {
    ScrollView {
      LazyVStack {
        ForEach(0...9, id: \.self) { _ in
          TweetRowView()
        }
      }
    }
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
