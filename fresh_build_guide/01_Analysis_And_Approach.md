# Codebase Analysis & Rebuild Strategy

## Current State Analysis

1. **Empty Logic Shell**: The current `app/Models` and `app/Http/Controllers` are basically empty (default User model and Breeze Auth/Profile controllers). There's no custom application logic implemented in the PHP code.
2. **Database Mismatch**: The existing `database/migrations` (from Jan 2024) do not align perfectly with the structure found in `online-ticket.sql` (migrations from Feb/March 2024). The SQL dump reflects a more evolved but separate state of the app.
3. **Dependency Issues**: `composer install` fails because the current packages in `composer.json` (Laravel 10, older versions of `nette/schema`) are incompatible with your installed PHP version (8.4.16).
4. **Current Stack**: Laravel 10 + Laravel Breeze (Alpine, Tailwind CSS, Blade).

## The New Optimized Approach

Building a fresh version will ensure compatibility with PHP 8.4, provide a cleaner architectural foundation, and fix the mismatch between the SQL dump and the actual codebase.

### 1. Technology Stack Upgrade

- **Framework**: Upgrade to **Laravel 12** (the latest version natively supports PHP 8.2+ and will resolve your PHP 8.4 compatibility issues).
- **Frontend Stack**: Use Laravel Breeze with **Livewire 3** (TALL stack: Tailwind, Alpine, Laravel, Livewire) or **Vue/Inertia.js** for a more interactive SPA-like feel without writing an isolated API.
- **Styling**: Tailwind CSS (already present, but we will structure a proper design system).

### 2. Architectural Patterns

Instead of dumping all logic into controllers or huge models:

- **Service Classes**: E.g., `TicketService`, `PaymentService`, `BookingService` to handle core business logic.
- **Form Requests**: Use strict Request Validation classes for all form submissions to keep controllers clean.
- **Enums**: Use native PHP 8.1+ Enums for states (e.g. `TicketStatusEnum::Active`, `PaymentStatusEnum::Pending`) as defined in your SQL.

### 3. Separation of Concerns

- **Admin Portal**: For managing Buses, Drivers, Terminals, Routes, Trips.
- **Agent Portal**: For booking tickets at the station for walk-in customers.
- **User Portal**: PWA / Web-app for end users to browse trips, book tickets online, and track bus hires.
