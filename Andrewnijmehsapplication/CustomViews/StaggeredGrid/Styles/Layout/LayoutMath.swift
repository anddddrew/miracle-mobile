import SwiftUI

func itemLength(tracks: Tracks, spacing: CGFloat, availableLength: CGFloat) -> CGFloat {
    switch tracks {
    case let .count(count):
        return itemLength(tracksCount: count, spacing: spacing, availableLength: availableLength)
    case let .fixed(length):
        return length
    case .min:
        let suggestedTracksCount = tracksCount(tracks: tracks, spacing: spacing,
                                               availableLength: availableLength)
        return itemLength(tracksCount: suggestedTracksCount, spacing: spacing,
                          availableLength: availableLength)
    }
}

func tracksCount(tracks: Tracks, spacing: CGFloat, availableLength: CGFloat) -> Int {
    switch tracks {
    case let .count(count):
        return count
    case let .fixed(length):
        precondition(length > 0, "Minimum track length should be greated than 0")
        let columnCount = Int(availableLength / length)

        for columns in (0 ... columnCount).reversed() {
            let suggestedItemWidth = itemLength(tracksCount: columns, spacing: spacing,
                                                availableLength: availableLength)
            if (suggestedItemWidth * CGFloat(columns)) + (CGFloat(columns - 1) * spacing) <=
                availableLength
            {
                return columns
            }
        }
        return 1
    case let .min(length):
        precondition(length > 0, "Minimum track length should be greated than 0")
        let columnCount = Int(availableLength / length)

        for columns in (0 ... columnCount).reversed() {
            let suggestedItemWidth = itemLength(tracksCount: columns, spacing: spacing,
                                                availableLength: availableLength)
            if (suggestedItemWidth * CGFloat(columns)) + (CGFloat(columns - 1) * spacing) <=
                availableLength
            {
                return columns
            }
        }
        return 1
    }
}

func itemLength(tracksCount: Int, spacing: CGFloat, availableLength: CGFloat) -> CGFloat {
    let width = availableLength - (spacing * (CGFloat(tracksCount) - 1))
    return (width / CGFloat(tracksCount))
}
