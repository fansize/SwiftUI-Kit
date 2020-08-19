//
//  HomeView.swift
//  SwiftUI Kit
//
//  Created by 唐浪 on 2020/8/19.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 160), spacing: 16)],
                spacing: 16) {
                ForEach(cards) { card in
                    #if os(iOS)
                    NavigationLink(destination: CoursesList()) {
                        CardItem(card: card)
                            .frame(maxHeight: 240)
                    }
                    #else
                    CardItem(card: card)
                        .frame(maxHeight: 240)
                    #endif
                }
            }
            .padding()
        }
        .navigationTitle("Tutorials")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
