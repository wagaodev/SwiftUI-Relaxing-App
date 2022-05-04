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
    ZStack {
      Color("ColorBlue")
        .ignoresSafeArea(.all, edges: .all)

      VStack(spacing: 20) {
        Spacer()

        VStack(spacing: 0) {
          Text("Compartilhe")
            .font(.system(size: 50))
            .fontWeight(.heavy)
            .foregroundColor(.white)

          Text("""
               Não é o quanto compartilhamos, mas quanto amor colocamos nessa ação.
               """)
          .font(.system(size: 22))
          .fontWeight(.light)
          .foregroundColor(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 10)
        }

        ZStack {
          ZStack {
            Circle()
              .stroke(.white.opacity(0.2), lineWidth: 80)
              .frame(width: 300, height: 300, alignment: .center)
            Circle()
              .stroke(.white.opacity(0.2), lineWidth: 80)
              .frame(width: 250, height: 250, alignment: .center)
          }
          Image("character-1")
            .resizable()
            .scaledToFit()

        }

        Spacer()
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
