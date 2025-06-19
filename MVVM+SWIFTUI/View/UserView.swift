//
//  UserView.swift
//  MVVM+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import SwiftUI

struct UserView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                if viewModel.isLoading {
                    ProgressView("Loading...")
                        .font(.title3)
                        .foregroundColor(.gray)
                } else if viewModel.errorMessage != nil {
                    Text(viewModel.errorMessage!)
                        .font(.title)
                        .foregroundColor(.red)
                }else {
                    List(viewModel.users) { user in
                        NavigationLink {
                            UserDetailView(user: user)
                        } label: {
                            VStack(alignment: .leading, spacing: 5){
                                Text(user.name)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                Text(user.username)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
                
            }
            .navigationTitle("Users")
            .task {
                await viewModel.fetchUsers()
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
