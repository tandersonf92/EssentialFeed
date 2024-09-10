import XCTest

final class FeedStore {
    var deleteCachedFeedCallCount = 0
}

final class LocalFeedLoader {
    init(store: FeedStore) {

    }
}

final class CacheFeedUseCaseTests: XCTestCase {

    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        let sut = LocalFeedLoader(store: store)

        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }

}
