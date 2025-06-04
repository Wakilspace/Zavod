PROJECT OVERVIEW
This is a Flutter demo application built using MVVM architecture and Riverpod for state management. The app includes a dynamic Menu system, integrated Google Maps, and clean component separation for scalability.

---

## 📱 Features

- 📌 **2 Main Tabs**:
  - **Menu**: Access to profile, support chat, and navigation history
  - **Map**: Google Maps with 7 interactive markers and live navigation

- 🧩 **MVVM Architecture**:
  - Separation of View, ViewModel (Provider), and Model layers
  - Organized into screens, models, services, and providers

- 🔁 **Custom Drawer Navigation**:
  - Profile
  - Support
  - History

- 🗺️ **Google Maps Integration**:
  - Shows 7 fixed points
  - Tapping opens external Google Maps for navigation from current location

- 📦 **State Management**:
  - Built using [Riverpod]
  - Clean separation between services and UI


---

## 🗂️ Project Structure
   lib/
└── src/
    ├── models/         -> Data classes
    ├── providers/      -> Riverpod state logic
    ├── services/       -> Logic classes (maps, support)
    ├── screens/        -> UI components
    └── widgets/        -> Shared widgets (e.g. CustomDrawer)


---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (v3.16+)
- Dart (v3+)
- Google Maps API key (enable Maps SDK)

### Install Packages

bash
flutter pub get

**Run App
**flutter run

**Dependencies**
  google_maps_flutter
  
  flutter_riverpod
  
  url_launcher
  
  flutter_hooks (optional for refactor)
  


📄 License
This project is licensed under the MIT License.







  
  




