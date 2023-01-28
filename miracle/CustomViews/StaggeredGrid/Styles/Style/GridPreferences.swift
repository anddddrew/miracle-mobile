import CoreGraphics
import Foundation

public struct GridPreferences: Equatable {
    public struct Item: Equatable {
        public let idVal: AnyHashable
        public let bounds: CGRect

        public init(idVal: AnyHashable, bounds: CGRect) {
            self.idVal = idVal
            self.bounds = bounds
        }
    }

    public var items: [Item]

    public var size: CGSize

    public init(size: CGSize = .zero, items: [Item]) {
        self.size = size
        self.items = items
    }

    subscript(idVal: AnyHashable) -> Item? {
        items.first(where: { $0.idVal == idVal })
    }

    mutating func merge(with preferences: GridPreferences) {
        items.append(contentsOf: preferences.items)
        size = CGSize(width: (items.map { $0.bounds.origin.x + $0.bounds.size.width }.max() ?? 0.0)
            .rounded(),
            height: (items.map { $0.bounds.origin.y + $0.bounds.size.height }
                .max() ?? 0.0)
                .rounded())
    }
}
