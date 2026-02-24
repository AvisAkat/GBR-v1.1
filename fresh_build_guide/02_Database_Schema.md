# Optimized Database Schema Guide

Based on the `online-ticket.sql` dump, here is the structured database schema plan. We will recreate these correctly in Laravel 12 using modern migration techniques, using native Enums, explicit Foreign ID methods, and proper cascading.

## Entities and Relationships

### 1. Users

Roles: `admin`, `agent`, `user`.  
Fields: `name`, `email`, `password`, `phone`, `role`, `status` (`active`/`inactive`), `photo`, `address`.

### 2. Regions & Terminals

**Region**: `name`, `city`, `city_code` (e.g. ACC, KSI).  
**Terminal**: `name`, `reg_id` (belongsTo Region), `location`.  
*A Region has many Terminals.*

### 3. Routes & Trips

**Route**: `name` (e.g. Accra - Wa), `price`, `st_tem_id` (Start Terminal), `end_terminal`.  
**Trip**: `route_id`, `driver_id`, `bus_id`, `departure` (datetime), `eta` (datetime), `status` (`pending`, `on`, `cancelled`, `completed`).

### 4. Fleet Management

**Bus**: `reg_number`, `capacity`, `model`, `make`, `year`, `color`, `condition` (`operational`, `maintenance`, `damaged`), `status` (`available`, `not-available`).  
**Driver**: `surname`, `firstName`, `otherName`, `licenseNo`.  

### 5. Bookings & Payments

**Payment**: `amount`, `mobile_money_provider` (`mtn`, `at`, `telecel`), `mobile_money_account`, `status` (`Pending`, `Completed`, `Failed`), `transaction_date`.  
**Ticket**: `issue_date`, `expiry_date`, `price`, `status` (`active`, `inactive`), `user_id` (Customer), `trip_id`, `payment_id`.  

### 6. Special Services

**Bus Hiring**: `company_name`, `contacts_name`, `email`, `phone`, `additional_phone`, `start_location`, `end_location`, `depart_date`, `number_of_busses`, `bus_capacity`, `number_of_days`, `purpose`, `status` (`pending`, `approve`, `decline`).

## Migration Improvements for Fresh Build

- **Strict Data Types**: Use `$table->decimal('price', 8, 2)` instead of `varchar(255)` for prices and amounts!
- **Foreign Keys**: Use `$table->foreignId('bus_id')->constrained()->cascadeOnDelete();`.
- **Enums**: Leverage `$table->enum('status', ['active', 'inactive'])` paired with PHP backed Enums on the Eloquent models.
- **Indexes**: Ensure `city_code`, `reg_number`, and `licenseNo` are `unique()`.
