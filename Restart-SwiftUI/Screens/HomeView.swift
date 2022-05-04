//
//  HomeView.swift
//  Restart-SwiftUI
//
//  Created by WAGNER GOULART on 04/05/22.
//

import SwiftUI

struct HomeView: View {

  // MARK: - Properties

  @AppStorage("onboarding") var isOnboardingViewActive: Bool = false

  // MARK: - Body

    var body: some View {
      ZStack {
        Color("ColorBlue")
          .ignoresSafeArea(.all, edges: .all)
        VStack(spacing: 20) {
          Text("Home")
            .font(.largeTitle)

          Button(action: {
            isOnboardingViewActive = true
          }) {
            Text("Restart")
          }
        } //MARK: - VSTACK

      } //MARK: - ZSTACK
    }
}

// MARK: - Preview

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
