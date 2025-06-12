# Item List App

A simple Flutter application that displays a list of items loaded from a local JSON file, with a detail screen for each item. The app uses the Provider package for state management and features a clean, modern UI.

## Features
- **Item List Screen**: Displays a list of items with title, description, price, and image.
- **Item Detail Screen**: Shows detailed information for a selected item, including a larger image.
- **State Management**: Uses Provider to manage the item data and loading state.
- **Local Data**: Loads item data from a local `assets/data.json` file.
- **Error Handling**: Handles JSON loading errors and image loading failures gracefully.
- **Responsive UI**: Clean and modern design with cards, rounded corners, and proper spacing.

## Screenshots
<div align="center">
  <img src="https://github.com/user-attachments/assets/432ea878-b83a-4a98-a3b8-4f12a0f5ad39" width="150" alt="Screen 1">
  <img src="https://github.com/user-attachments/assets/a7366618-9b90-422e-b9de-4a52c9699e7f" width="150" alt="Screen 3">
  <img src="https://github.com/user-attachments/assets/fba52cff-2103-409f-acf9-75d1c8a95c88" width="150" alt="Screen 2">
</div>

## Getting Started

### Prerequisites
- Flutter SDK (version 3.0 or higher recommended)
- Dart SDK (included with Flutter)
- A code editor (e.g., Visual Studio Code, Android Studio)
- An emulator or physical device for testing

### Installation
1. **Clone the repository**:
   ```bash
   git clone https://github.com/basuru07/item_list_app.git
   cd item_list_app
   ```

2. **Install dependencies**:
   Run the following command to install the required packages:
   ```bash
   flutter pub get
   ```

3. **Configure assets**:
   Ensure the `pubspec.yaml` includes the following asset declarations:
   ```yaml
   flutter:
     assets:
       - assets/data.json
       - assets/images/
   ```

4. **Add assets**:
   - Place the `data.json` file in the `assets/` directory.
   - Place image files (e.g., `T-Shirt.webp`, `Black Denim Jeans.jpg`) in the `assets/images/` directory.

5. **Run the app**:
   Start an emulator or connect a device, then run:
   ```bash
   flutter run
   ```

## Project Structure
```
item_list_app/
├── assets/
│   ├── data.json                     # JSON file with item data
│   ├── images/                       # Image assets for items
├── lib/
│   ├── models/
|   │   ├── item.dart                 # Defines the Item data model class        
│   ├── providers/
|   │   ├── item_provider.dart        # Manages application state for items using Provider
│   ├── screens/
|   │   ├── getstarted.dart           # Initial welcome/splash screen
|   │   ├── item_detail_screen.dart   # Shows detailed view of a single item
|   │   ├── item_list_screen.dart     # Displays list of all available items  
├── pubspec.yaml                      # Project dependencies and assets
├── README.md                         # This file
```

## Dependencies
- `provider: ^6.1.2` - For state management
- `flutter` - Core Flutter framework

Add to `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.1.2
```

## Data Format
The `data.json` file contains an array of items with the following structure:
```json
[
  {
    "id": 1,
    "title": "Blue Cotton T-Shirt",
    "description": "Comfortable blue cotton t-shirt, perfect for casual wear.",
    "imageUrl": "assets/images/T-Shirt.webp",
    "price": "1499.00"
  },
  ...
]
```

## Usage
- **List Screen**: Displays a list of items in a scrollable `ListView`. Tap an item to view its details.
- **Detail Screen**: Shows the item's title, price, description, and image.
- **Error Handling**: Displays a loading indicator while fetching data, an error message if JSON loading fails, or an error icon if an image fails to load.

## Potential Improvements
- Replace the local JSON file with a dummy API (e.g., `jsonplaceholder.typicode.com`) for dynamic data.
- Add pull-to-refresh functionality using `RefreshIndicator`.
- Implement animations (e.g., hero animations for image transitions).
- Add unit and widget tests for reliability.
- Support multiple currencies by formatting prices dynamically.

## Troubleshooting
- **Images not loading**: Ensure image files are in `assets/images/` and correctly referenced in `data.json`. Verify `pubspec.yaml` includes the assets.
- **JSON loading error**: Check that `assets/data.json` exists and is valid JSON.
- **Provider errors**: Ensure the `provider` package is installed (`flutter pub get`).

## Contributing
Contributions are welcome! Please open an issue or submit a pull request with improvements or bug fixes.

## License
This project is licensed under the MIT License.
