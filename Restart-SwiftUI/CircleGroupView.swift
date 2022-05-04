//
//  CircleGroupView.swift
//  Restart-SwiftUI
//
//  Created by WAGNER GOULART on 04/05/22.
//

import SwiftUI

struct CircleGroupView: View {

  // MARK: - Properties

  @State var ShapeColor: Color
  @State var ShapeOpacity: Double
  @State var ShapeLineWidth: Int
  @State var ShapeWidth: Int
  @State var ShapeHeight: Int

  // MARK: - Body

    var body: some View {
      ZStack {
        Circle()
          .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: CGFloat(ShapeLineWidth))
          .frame(width: CGFloat(ShapeWidth), height: CGFloat(ShapeHeight), alignment: .center)
        Circle()
          .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: CGFloat(ShapeLineWidth))
          .frame(width: CGFloat(ShapeWidth), height: CGFloat(ShapeHeight), alignment: .center)
      }
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
      ZStack {
        Color("ColorBlue")
          .ignoresSafeArea(.all, edges: .all)

        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2, ShapeLineWidth: 80, ShapeWidth: 300, ShapeHeight: 300)
      }
    }
}
