
# 📱 MVVM-SWIFTUI

A clean and scalable **MVVM (Model-View-ViewModel)** architecture implementation in **SwiftUI** using **Combine** for reactive data handling. This project demonstrates a modular and testable design for modern iOS app development.

![SwiftUI](https://img.shields.io/badge/SwiftUI-%F0%9F%93%9A-blue?style=for-the-badge)
![MVVM](https://img.shields.io/badge/MVVM-Architecture-4CAF50?style=for-the-badge)
![Combine](https://img.shields.io/badge/Combine-Reactive%20Programming-7952B3?style=for-the-badge)

---

## 🧱 Architecture

This project implements the **MVVM** pattern:

- **Model**: Represents the data and business logic
- **View**: SwiftUI-based user interface
- **ViewModel**: Handles presentation logic and binds the View with the Model

## 🛠 Features

- ⚡️ **Combine** for reactive programming
- 🧪 **Unit Testing** for ViewModels
- 🔍 **Dependency Injection** for testability
- 📦 Clean folder structure for modularity
- 🌐 Integration with [JSONPlaceholder API](https://jsonplaceholder.typicode.com/users)

## 📷 Preview

![App Preview](https://github.com/9818595165/MVVM-SWIFTUI/assets/preview.gif)

## 📁 Folder Structure

```
MVVM-SWIFTUI/
│
├── Model/
│   └── User.swift
│
├── View/
│   └── UserListView.swift
│
├── ViewModel/
│   └── UserViewModel.swift
│
├── Service/
│   └── APIClient.swift
│
└── Tests/
    └── UserViewModelTests.swift
```

## 🧪 Testing

- XCTest used for ViewModel testing
- Mock API service for isolated unit tests
- Combine expectations handled with `XCTestExpectation`

## 🧰 Requirements

- iOS 14+
- Swift 5.9+
- Xcode 15+

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/9818595165/MVVM-SWIFTUI.git
   ```

2. Open in Xcode:
   ```bash
   open MVVM-SWIFTUI.xcodeproj
   ```

3. Run the app on simulator or device.

## 🙌 Contributions

Feel free to fork this repo and submit pull requests. Any contributions are appreciated!

## 📜 License

This project is licensed under the MIT License.

---

### 💬 Feedback

For suggestions or bug reports, please [open an issue](https://github.com/9818595165/MVVM-SWIFTUI/issues).
