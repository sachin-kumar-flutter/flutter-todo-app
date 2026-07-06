# 📝 Flutter Todo App

A clean and responsive Todo application built with **Flutter** that helps users manage their daily tasks efficiently. The app supports creating, completing, and deleting tasks with persistent local storage using **Hive**, ensuring that tasks remain saved even after the application is closed.

---

## ✨ Features

- ✅ Add new tasks
- ✅ Mark tasks as completed
- ✅ Delete tasks with swipe gesture
- ✅ Persistent local storage using Hive
- ✅ Clean and responsive UI
- ✅ Custom reusable widgets
- ✅ Simple and intuitive user experience

---

## 📱 Screenshots

| Home Screen | Add Task | Delete Task |
|-------------|----------|-------------|
| *(Add Screenshot)* | *(Add Screenshot)* | *(Add Screenshot)* |

> Add your screenshots inside:
>
> ```
> assets/screenshots/
> ```

Example:

```markdown
![Home](assets/screenshots/home.png)
```

---

## 🛠 Tech Stack

- **Flutter**
- **Dart**
- **Hive** (Local NoSQL Database)
- **flutter_slidable**

---

## 📂 Project Structure

```
lib/
│
├── data/
│   └── database.dart
│
├── utils/
│   ├── my_button.dart
│   ├── my_dialog.dart
│   └── todotile.dart
│
├── homepage.dart
└── main.dart
```

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Android Studio / VS Code
- Emulator or Physical Device

### Installation

Clone the repository

```bash
git clone https://github.com/sachin-kumar-flutter/flutter-todo-app.git
```

Navigate to the project

```bash
cd flutter-todo-app
```

Install dependencies

```bash
flutter pub get
```

Run the application

```bash
flutter run
```

---

## 📦 Dependencies

```yaml
flutter_slidable
hive
hive_flutter
```

---

## 💾 Local Storage

The application uses **Hive** for offline data persistence.

Stored task format:

```dart
[
  {
    "task": "Wake Up",
    "completed": false
  }
]
```

Tasks are automatically saved after every add, delete, or update operation and restored when the app is reopened.

---

## 🎯 Future Improvements

- ✏️ Edit existing tasks
- 📅 Due dates
- ⭐ Priority levels
- 🔍 Search tasks
- 🌙 Dark mode
- 📂 Task categories
- ☁️ Firebase synchronization
- 🔔 Local notifications

---

## 👨‍💻 Author

**Sachin Kumar**

- GitHub: https://github.com/sachin-kumar-flutter
- LinkedIn: *(Add your LinkedIn profile here)*

---

## ⭐ If you found this project helpful

Give this repository a ⭐ to support the project!
