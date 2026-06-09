# Attendance Tracker App

A simple Flutter attendance tracking application using Provider State Management.

## Features

- Manage attendance of 10 students
- Checkbox based attendance marking
- Attendance summary screen
- Provider state management
- ChangeNotifier implementation

## Run Project

1. Clone repository

git clone <repository-url>

2. Install packages

flutter pub get

3. Run application

flutter run

## Why ChangeNotifier?

ChangeNotifier is used because it provides a simple way to manage state in Flutter.

Whenever attendance data changes, notifyListeners() informs all listening widgets to rebuild automatically.

This keeps UI synchronized with application state without manually refreshing screens.