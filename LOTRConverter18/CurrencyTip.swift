//
//  CurrencyTip.swift
//  LOTRConverter18
//
//  Created by Patryk Ostrowski on 28/10/2024.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap left or right currency to bring up the Select currency screen.")
}
