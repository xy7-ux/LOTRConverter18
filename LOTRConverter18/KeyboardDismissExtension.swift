//
//  KeyboardDismissExtension.swift
//  LOTRConverter18
//
//  Created by Patryk Ostrowski on 28/10/2024.
//

import SwiftUI

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
