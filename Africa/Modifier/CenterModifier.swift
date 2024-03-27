//
//  CenterModifier.swift
//  Africa
//
//  Created by Imron Reviady on 27/03/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
