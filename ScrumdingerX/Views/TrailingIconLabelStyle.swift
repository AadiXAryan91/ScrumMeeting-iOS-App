//
//  TrailingIconLabelStyle.swift
//  ScrumdingerX
//
//  Created by Aditya Singh on 04/04/24.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self()  }
}
