# GBR-v2.0 Requirements and Specifications

## 1. Product Context

The Ghana Bus Route (GBR) application aims to digitize bus travel operations, providing robust online ticketing, digital fleet management, and secure administrative controls. The application requires an optimized, secure backend, and an intuitive user interface.

## 2. Technical Specifications

### 2.1 Backend (Server-Side)

- **Framework:** Laravel 12.x (PHP 8.2+)
- **Database:** MySQL 8.0+ / MariaDB
- **Authentication:** Laravel Breeze (Session/Cookie based for Web, Sanctum for future mobile API)
- **Authorization:** Role-Based Access Control (RBAC) via middleware and policies (Admin, Agent, User).
- **Payment Gateway:** Integration with Paystack or Hubtel (or similar aggregator supporting MTN, Telecel, AT Mobile Money).
- **Task Scheduling:** Laravel Task Scheduler (CRON) for expiring old tickets and updating trip statuses.

### 2.2 Frontend (Client-Side)

- **Framework:** Laravel Blade with Alpine.js (or Inertia.js with Vue 3).
- **Styling:** Tailwind CSS 3.x
- **Icons:** Heroicons or FontAwesome.
- **Responsiveness:** Mobile-first approach. The user portal must act and feel like a native mobile app for on-the-go travelers.

### 2.3 Server Environment

- **OS:** Linux (Ubuntu 22.04/24.04 recommended for deployment)
- **Web Server:** NGINX or Apache
- **PHP Version:** PHP 8.2 or 8.3 (matching Laravel 11 requirements)
- **Queue Worker:** Supervisor (for job processing like sending booking confirmation emails/SMS).

## 3. Functional Requirements

### 3.1 User Management Subsystem

- **User Registration & Login:** Users can create accounts using email and password.
- **Profile Management:** Users can update their name, phone number, physical address, and profile photo.
- **Roles:** The system must strictly separate interfaces for the `admin`, `agent`, and end-`user`.

### 3.2 Core Ticketing & Booking Subsystem

- **Trip Search:** Users can search for trips by selecting a starting region/terminal, destination, and departure date.
- **Trip Details:** Display ETA, price, bus type/capacity, and available seats.
- **Payment Processing:** Securely capture Mobile Money details and post the transaction as "Pending" until the callback from the provider confirms it is "Completed".
- **Ticket Generation:** Generate a unique digital ticket with an issue and expiry date upon successful payment.

### 3.3 Administration & Fleet Subsystem (Admin Access)

- **Region & Terminal CRUD:** Admins can manage the operational map (Regions and specific bus terminals).
- **Bus Management:** Register buses (Reg ID, Make, Model, Capacity) and manage their current status (Operational, Maintenance).
- **Driver Management:** Keep records of drivers and their license numbers.
- **Route & Trip Setup:** Define pricing for Routes (Start Terminal -> End Terminal) and schedule Trips by assigning a Route, Bus, and Driver, alongside the Departure Time.

### 3.4 Agent Operations Subsystem (Agent Access)

- **Walk-in Booking:** Station agents can rapidly book tickets for passengers who show up at the terminal without navigating the standard user search flow.
- **Ticket Validation:** Agents can view and validate ticket statuses.

### 3.5 Bus Hiring Services

- **Hiring Requests:** Public users can submit forms requesting private bus rentals (Excursions, Corporate Events).
- **Approval Workflow:** Admins can review hiring requests, see the purpose, dates, and required capacity, and mark them as `approved` or `declined`.

### 3.6 Interactive Map Display

- **Visual Route Map:** A map interface (via Google Maps API or Leaflet/OpenStreetMap) showing terminal locations and route connections across regions.
- **Trip Tracking (Optional/Future):** Simulated or real-time GPS tracking display of buses actively on a scheduled trip mapped out for users and agents.

## 4. Non-Functional Requirements

- **Performance:** Page load times should be under 2 seconds. Database queries must be optimized using eager loading (`with()`) to prevent N+1 queries.
- **Security:** CSRF protection on all forms. SQL injection prevention via Eloquent ORM. XSS protection via Blade escaping. Strict role authorization checks around Admin/Agent routes.
- **Scalability:** The architecture must allow for adding a REST API layer later for native Android/iOS applications.
- **Data Integrity:** Database transactions must be used during the booking flow to ensure a ticket is never generated if the payment record fails to save.

## 5. Phase 1 Deliverables

1. Clean Laravel 11 scaffold with Tailwind CSS UI.
2. Complete database migration and factory suite based on `02_Database_Schema.md`.
3. Authentication and Role-based dashboards.
4. CRUD interfaces for Regions, Terminals, Buses, Drivers, and Routes.
5. The core trip booking and ticketing flow.
