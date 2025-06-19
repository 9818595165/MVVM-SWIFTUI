//
//  UserDetailView.swift
//  MVVM+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import SwiftUI

struct UserDetailView: View {
    let user: User

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Name: \(user.name)")
                .font(.title2)
                .bold()

            Text("Username: \(user.username)")
                .font(.headline)
                .foregroundColor(.secondary)

            Text("Email: \(user.email)")
                .font(.subheadline)
                .foregroundColor(.blue)

            Text("Lat: \(user.address.geo.lat)")
                .font(.headline)
                .foregroundColor(.secondary)
            Text("Lng: \(user.address.geo.lng)")
                .font(.headline)
                .foregroundColor(.secondary)

            Text("Compnay Name: \(user.company.name)")
                .font(.headline)
                .foregroundColor(.secondary)
            Text("Compnay BS: \(user.company.bs)")
                .font(.headline)
                .foregroundColor(.secondary)
            Text("Compnay catchPhrase: \(user.company.catchPhrase)")
                .font(.headline)
                .foregroundColor(.secondary)
            
            Spacer()

        }
        .padding()
        .navigationTitle("User Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

