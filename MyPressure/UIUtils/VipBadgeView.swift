//
//  VipBadgeView.swift
//  MyPressure
//
//  Created by fozza on 2023/9/3.
//

import Foundation
import SwiftUI

struct VipBadgeView : View {
    var body: some View {
        Text("V")
            .bold()
            .font(.system(size:11))
            .frame(width: 15, height: 15)
            .foregroundColor(.yellow)
            .background(Color.red)
            .clipShape(Circle())
            .overlay(
                RoundedRectangle(cornerRadius: 7.5)
                    .stroke(Color.white, lineWidth: 1)
            )
    }
}

#Preview {
    VipBadgeView()
}
