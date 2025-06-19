//
//  ViewModel.swift
//  MVVM+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import Foundation
import Combine

@MainActor
class ViewModel: ObservableObject {
    @Published var users:[User] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    private let apiClient: APIClientProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(apiClient: APIClientProtocol = APIClient()) {
        self.apiClient = apiClient
    }
    
    func fetchUsers() async {
        isLoading = true
        errorMessage = nil
        
        apiClient.request(User.self, "users")
            .sink {[weak self] completion in
                self?.isLoading = false
                if case .failure(let error) = completion {
                    self?.errorMessage = "\(error)"
                }
            } receiveValue: {[weak self] users in
                self?.users = users
            }
            .store(in: &cancellables)

    }
}
