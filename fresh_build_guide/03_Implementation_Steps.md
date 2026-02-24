# Implementation Steps (Fresh Build)

Follow these steps to clean the slate and build the optimized architecture.

## Step 1: Initialize Fresh Project

To avoid the PHP 8.4 compatibility conflicts and start clean:

```bash
# Navigate out of the current folder
cd C:\Users\selasi\Desktop\LARAVEL

# Create a brand new Laravel 12 project
composer create-project laravel/laravel GBR-v2.0

# Enter the new project
cd GBR-v2.0

# Install Breeze (Vue/Inertia recommended for dynamic apps, or Blade/Alpine)
composer require laravel/breeze --dev
php artisan breeze:install
```

## Step 2: Configure Environment

Copy the database credentials from the old `.env` into the new `.env`. Set the DB name to `online-ticket`.

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=online-ticket
DB_USERNAME=root
DB_PASSWORD=
```

## Step 3: Scaffold Models and Migrations

Use Artisan to generate models, migrations, and controllers simultaneously.

```bash
php artisan make:model Region -mc
php artisan make:model Terminal -mc
php artisan make:model Bus -mc
php artisan make:model Driver -mc
php artisan make:model Route -mc
php artisan make:model Trip -mc
php artisan make:model Payment -mc
php artisan make:model Ticket -mc
php artisan make:model BusHiring -m
```

## Step 4: Write Improved Migrations

Use the guidance in `02_Database_Schema.md` to fill out the migration files. Pay special attention to:

- Changing price columns from `varchar(255)` to `decimal('price', 10, 2)`.
- Reordering migrations so `regions` creates before `terminals`, and `buses`, `drivers`, `routes` create before `trips`.

## Step 5: Migrate Data From SQL Dump (Optional)

If you want to keep the data from `online-ticket.sql`, you can import it into MySQL/PhpMyAdmin directly. **However**, it is highly recommended to run your new, clean migrations and use Laravel Seeders/Factories to populate fake testing data locally so the DB strictly adheres to the code constraints.

```bash
php artisan migrate:fresh --seed
```

## Step 6: Next Steps inside Laravel

1. Set up Admin/Agent layout vs User layout.
2. Integrate Mobile Money payment logic via an abstraction service (`App\Services\PaymentService`).
3. Build the frontend dashboard interfaces.
