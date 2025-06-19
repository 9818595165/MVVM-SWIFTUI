//
//  MockAPIClient.swift
//  MVVM+SWIFTUITests
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import Foundation
import Combine
import XCTest
@testable import MVVM_SWIFTUI

class MockAPIClient: APIClientProtocol {
    var shouldReturnError = false
    var usersToReturn: [User] = []
    
    func request<T>(_ type: T.Type, _ endpoint: String) -> AnyPublisher<[T], Error> where T : Decodable {
        if shouldReturnError {
            return Fail(error: URLError(.badServerResponse)).eraseToAnyPublisher()
        }else {
            return Just(usersToReturn as! [T])
                .setFailureType(to: Error.self)
                .eraseToAnyPublisher()
        }
    }
    
    
}

