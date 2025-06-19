//
//  ViewModelTests.swift
//  MVVM+SWIFTUITests
//
//  Created by Prabhat Pankaj on 19/06/25.
//
import XCTest
@testable import MVVM_SWIFTUI

@MainActor
final class ViewModelTests: XCTestCase {

    func testFetchUsers_Success() async {
        // Given
        let mockClient = MockAPIClient()
        mockClient.usersToReturn = [
            User(id: 1, name: "Prabhat Pankaj", username: "prabhat.pankaj", email: "prabhat.pankaj@munafauniya.com", phone: "+91-9818595165", website: "https://www.munafaduniya.com", address: Address(street: "NA", suite: "NA", city: "KANPUR", zipcode: "208025", geo: Geo(lat: "NA", lng: "NA")), company: Company(name: "MUNAFADUNIYA", catchPhrase: "CATCH", bs: "BS"))
        ]
        let viewModel =  ViewModel(apiClient: mockClient)

        // When
        await viewModel.fetchUsers()

        // Then
        XCTAssertFalse(viewModel.isLoading)
        XCTAssertNil(viewModel.errorMessage)
        XCTAssertEqual(viewModel.users.count, 1)
        XCTAssertEqual(viewModel.users.first?.name, "Prabhat Pankaj")
    }

    func testFetchUsers_Failure() async {
        // Given
        let mockClient = MockAPIClient()
        mockClient.shouldReturnError = true
        let viewModel =  ViewModel(apiClient: mockClient)

        // When
        await viewModel.fetchUsers()

        // Then
        XCTAssertFalse(viewModel.isLoading)
        XCTAssertNotNil(viewModel.errorMessage)
        XCTAssertTrue(viewModel.users.isEmpty)
    }

}
