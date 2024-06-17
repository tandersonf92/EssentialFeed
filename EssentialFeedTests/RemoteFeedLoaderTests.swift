import XCTest
@testable import EssentialFeed

class RemoteFeedLoader {

}

class HTTPClient {
    var requestedURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let _ = RemoteFeedLoader()
        let client = HTTPClient()

        XCTAssertNil(client.requestedURL)
    }
}
