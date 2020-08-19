//
//  CloseButton.swift
//  SwiftUI Kit
//
//  Created by 唐浪 on 2020/8/19.
//

import SwiftUI

struct CloseButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .font(.system(size: 17, weight: .bold))
            .foregroundColor(.white)
            .padding(.all, 10)
            .background(Color.black.opacity(0.6))
            .mask(Circle())
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CloseButton()
    }
}
