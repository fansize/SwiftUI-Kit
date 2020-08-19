//
//  CoursesList.swift
//  SwiftUI Kit iOS
//
//  Created by 唐浪 on 2020/8/18.
//

import SwiftUI

struct CoursesList: View {
    @State var matching: String = "Button()"
    @State var matching2: String = "struct"
    
    var codeView: some View {
        VStack {
            HighlightedText(buttonCode, matching: self.matching, caseInsensitiv: true)
                .font(.system(size: 13, weight: .bold, design: .monospaced))
                .foregroundColor(Color.black.opacity(0.8))
        }
    }
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                codeView
                    .frame(maxWidth: .infinity)
                    .frame(height: 250)
                    .background(Color.blue)
                NavigationView {
                    Grouping(title: "Buttons", icon: "capsule", content: { ButtonsGroup() })
                }
            }
            
            CloseButton()
                .padding(20)
        }
        .ignoresSafeArea(.all)
    }
}

struct CoursesList_Previews: PreviewProvider {
    static var previews: some View {
        CoursesList()
    }
}
