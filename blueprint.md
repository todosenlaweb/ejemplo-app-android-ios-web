
# Project Overview

This is a Flutter application that functions as a dashboard to visualize data from the "Insotools Data Graphics API". It displays various metrics and audit logs in a clear and interactive way.

## Implemented Features

*   Initial project setup.
*   Added `fl_chart` and `http` dependencies for charting and API communication.

## Current Plan

1.  **Create API Service:** Implement `lib/api_service.dart` to handle all GET requests to the Insotools Data Graphics API endpoints.
2.  **Create Data Models:** Define Dart classes in `lib/models.dart` to represent the JSON responses for audits, licenses, statuses, etc. This ensures type safety.
3.  **Design Dashboard (`home_screen.dart`):** Create a responsive dashboard screen that will display:
    *   **KPI Cards:** Key metrics like "Licencias activas" and "Players con Stripe" will be shown in prominent summary cards.
    *   **Bar Chart:** Visualize "Licencias de juego por fecha".
    *   **Pie Chart:** Display the distribution of "Estados de lotes".
    *   **Line Chart:** Show the trend of "Compras completadas".
    *   **Data Table:** List the "Auditorías" in a structured table.
4.  **Update `main.dart`:** Set the new `HomeScreen` as the main entry point of the application.
5.  **Cleanup:** Remove the obsolete `login_screen.dart` as the login flow is no longer part of the current scope.
