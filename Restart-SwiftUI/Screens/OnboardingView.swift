//
//  OnboardingView.swift
//  Restart-SwiftUI
//
//  Created by WAGNER GOULART on 04/05/22.
//

import SwiftUI

struct OnboardingView: View {

  // MARK: - Properties

  @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

  // MARK: - Body
    var body: some View {
      VStack(spacing: 20) {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          .font(.largeTitle)

        Button(action: {
          isOnboardingViewActive = false
        }) {
          Text("Start")
        }
      }
    }
}


// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
