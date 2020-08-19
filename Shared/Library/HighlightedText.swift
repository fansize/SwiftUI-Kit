//
//  HighlightedText.swift
//  SwiftUI Kit
//
//  Created by 唐浪 on 2020/8/19.
//

import SwiftUI

struct HighlightedText: View {
    let text: String
    let matching: String
    let caseInsensitiv: Bool

    init(_ text: String, matching: String, caseInsensitiv: Bool = false) {
        self.text = text
        self.matching = matching
        self.caseInsensitiv = caseInsensitiv
    }

    var body: some View {
        guard  let regex = try? NSRegularExpression(pattern: NSRegularExpression.escapedPattern(for: matching).trimmingCharacters(in: .whitespacesAndNewlines).folding(options: .regularExpression, locale: .current), options: caseInsensitiv ? .caseInsensitive : .init()) else {
            return Text(text)
        }

        let range = NSRange(location: 0, length: text.count)
        let matches = regex.matches(in: text, options: .withTransparentBounds, range: range)

        return text.enumerated().map { (char) -> Text in
            guard matches.filter( {
                $0.range.contains(char.offset)
            }).count == 0 else {
                return Text( String(char.element) ).foregroundColor(.red)
            }
            return Text( String(char.element) )

        }.reduce(Text("")) { (a, b) -> Text in
            return a + b
        }
    }
}
