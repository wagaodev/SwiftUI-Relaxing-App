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
  @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
  @State private var buttonOffset: CGFloat = 0
  @State private var isAnimating: Bool = false

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
        .opacity(isAnimating ? 1 : 0)
        .offset(y: isAnimating ? 0 : -40)
        .animation(.easeOut(duration: 1), value: isAnimating)

        ZStack {
          CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2, ShapeLineWidth: 80, ShapeWidth: 300, ShapeHeight: 300)
          CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2, ShapeLineWidth: 80, ShapeWidth: 250, ShapeHeight: 250)
          Image("character-1")
            .resizable()
            .scaledToFit()
            .opacity(isAnimating ? 1 : 0)
            .animation(.easeOut(duration: 0.5), value: isAnimating)

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
              .frame(width: buttonOffset + 80)

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
            .offset(x: buttonOffset)
            .gesture(
              DragGesture()
                .onChanged { gesture in
                  if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80 {
                    buttonOffset = gesture.translation.width
                  }
                }
                .onEnded { _ in
                  withAnimation(Animation.easeOut(duration: 0.4)) {
                    if buttonOffset > buttonWidth / 2 {
                      buttonOffset = buttonWidth - 80
                      isOnboardingViewActive = false
                    } else {
                      buttonOffset = 0
                    }
                  }
                }
            ) //MARK: - Button Gesture
            Spacer()
          }
        }


        .frame(width: buttonWidth, height: 80, alignment: .center)
        .padding()
        .opacity(isAnimating ? 1: 0)
        .offset(y: isAnimating ? 0 : 40)
        .animation(.easeOut(duration: 1), value: isAnimating)
      }
    }
    .onAppear(perform: {
      isAnimating = true
    })
  }
}


// MARK: - Preview

//struct OnboardingView_Previews: PreviewProvider {
//  static var previews: some View {
//    OnboardingView()
//  }
//}
