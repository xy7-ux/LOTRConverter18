//
//  ExchangeRate.swift
//  LOTRConverter18
//
//  Created by Patryk Ostrowski on 19/10/2024.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let exchangeRateText: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            //Imageleft
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            // Exchange rate Text
            Text(exchangeRateText)
            
            //Imageright
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpiece, exchangeRateText: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}
