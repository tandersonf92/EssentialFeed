enum FeedCachePolicy {
    private static var maxCacheAgeIndays: Int { 7 }
    private static let calendar = Calendar(identifier: .gregorian)

    static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCacheAge = calendar.date(byAdding: .day, value: maxCacheAgeIndays, to: timestamp) else  {
            return false
        }
        return date < maxCacheAge
    }
}
