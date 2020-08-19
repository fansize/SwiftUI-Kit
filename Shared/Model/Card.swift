//
//  Card.swift
//  SwiftUI Kit
//
//  Created by 唐浪 on 2020/8/19.
//

import SwiftUI

struct Card: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var subtitle: String
    var color: Color
    var image: String
    var logo: String
    var show: Bool
    var index: Double
}

var cards = [
    Card(
        title: "Buttons",
        subtitle: "按钮",
        color: Color(#colorLiteral(red: 0, green: 0.5217629075, blue: 1, alpha: 1)),
        image: "Illustration 1",
        logo: "capsule",
        show: false,
        index: -1
    ),
    Card(
        title: "Colors",
        subtitle: "颜色",
        color: Color(#colorLiteral(red: 0.3150139749, green: 0, blue: 0.8982304931, alpha: 1)),
        image: "Illustration 2",
        logo: "paintpalette",
        show: false,
        index: -1
    ),
    Card(
        title: "Controls",
        subtitle: "控制",
        color: Color(#colorLiteral(red: 0.3150139749, green: 0, blue: 0.8982304931, alpha: 1)),
        image: "Illustration 2",
        logo: "slider.horizontal.3",
        show: false,
        index: -1
    ),
    Card(
        title: "Fonts",
        subtitle: "字体",
        color: Color(#colorLiteral(red: 0.3150139749, green: 0, blue: 0.8982304931, alpha: 1)),
        image: "Illustration 2",
        logo: "textformat",
        show: false,
        index: -1
    ),
    Card(
        title: "Haptics",
        subtitle: "震动",
        color: Color(#colorLiteral(red: 0.3150139749, green: 0, blue: 0.8982304931, alpha: 1)),
        image: "Illustration 2",
        logo: "waveform",
        show: false,
        index: -1
    )
]


//#if os(iOS)
//Group{
//Grouping(title: "Haptics", icon: "waveform", content: { HapticsGroup() })
//Grouping(title: "Gestures", icon: "hand.tap", content: { GesturesGroup() })
//}
//#endif
//Grouping(title: "Images", icon: "photo", content: { ImagesGroup() })
//Grouping(title: "Indicators", icon: "speedometer", content: { IndicatorsGroup() })
//Grouping(title: "Shapes", icon: "square.on.circle", content: { ShapesGroup() })
//Grouping(title: "Text", icon: "text.aligncenter", content: { TextGroup() })
//#if !os(watchOS)
//Grouping(title: "Map", icon: "map", content: { MapGroup() })
//#endif
