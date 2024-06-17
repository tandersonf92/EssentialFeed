import XCTest
@testable import EssentialFeed

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")!
    }
}

class HTTPClient {
    static let shared =  HTTPClient()
    var requestedURL: URL?

    private init() {}
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let _ = RemoteFeedLoader()
        let client = HTTPClient.shared

        XCTAssertNil(client.requestedURL)
    }

    func test_load_requestDataFromURL() {
        let sut = RemoteFeedLoader()
        let client = HTTPClient.shared

        sut.load()

        XCTAssertNotNil(client.requestedURL)
    }
}
