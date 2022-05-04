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

        ZStack {

          Capsule()
            .fill(Color.white.opacity(0.2))

          Capsule()
            .fill(Color.white.opacity(0.2))
            .padding(8)

          Text("Vamos lá")
            .font(.system(.title3, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .offset(x: 23)

          HStack {
            Capsule()
              .fill(Color("ColorRed"))
              .frame(width: 80)

            Spacer()
          }
          HStack {
            ZStack {
              Circle()
                .fill(Color("ColorRed"))
              Circle()
                .fill(.black.opacity(0.15))
                .padding(8)
              Image(systemName: "chevron.right.2")
                .font(.system(size: 24, weight: .bold))
            }
            .foregroundColor(.white)
            .frame(width: 80, height: 80, alignment: .center)
            .onTapGesture {
              isOnboardingViewActive = false
            }
            Spacer()
          }
        }


        .frame(height: 80, alignment: .center)
        .padding()
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
