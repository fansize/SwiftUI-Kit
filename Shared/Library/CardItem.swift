//
//  CardItem.swift
//  SwiftUI Kit
//
//  Created by 唐浪 on 2020/8/19.
//

import SwiftUI

struct CardItem: View {
    var card: Card = cards[0]
    #if os(iOS)
    var cornerRadius: CGFloat = 22
    #else
    var cornerRadius: CGFloat = 10
    #endif
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image(systemName: card.logo)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 100)
//                    .foregroundColor(.white)
                Spacer()
            }
            Text(card.title)
                .bold()
                .foregroundColor(.white)
            Text(card.subtitle)
                .font(.footnote)
                .foregroundColor(Color.white.opacity(0.7))
        }
        .padding(16)
        .background(card.color)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
        .shadow(color: card.color.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct CardItem_Previews: PreviewProvider {
    static var previews: some View {
        CardItem()
    }
}
