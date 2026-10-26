# Stationery Store Management System

A role-based inventory and order management web app built with **ASP.NET Web Forms (VB.NET)** and **SQL Server**, developed as a semester project for a databases/web application development course.

## Overview

The system supports three roles — **Admin**, **Manager**, and **Salesperson** — each with a different dashboard and permission set, backed by a normalized SQL Server schema and session-based authentication.

## Features

- **Authentication & authorization** — SHA-256 password hashing, session-based login, role-based dashboard routing
- **Login audit trail** — every login attempt (success/failure) is logged with a timestamp
- **User management** — admins can create accounts and assign roles via a dynamic role dropdown sourced from the database
- **Employee management** — add/view employee records (name, contact info, hire date, salary)
- **Product management** — add products with category/supplier association
- **Order placement** — create orders linked to customers and line items
- **Search** — product lookup
- **Parameterized SQL throughout** — no raw string concatenation into queries

## Tech Stack

| Layer | Technology |
|---|---|
| Backend | ASP.NET Web Forms, VB.NET |
| Database | Microsoft SQL Server (T-SQL) |
| Frontend | Web Forms server controls, Bootstrap 5 |

## Project Structure

```
├── src/                # Application source (.aspx pages + VB.NET code-behind)
├── database/
│   ├── schema.sql       # Full table definitions (matches src/ code)
│   └── seed-data.sql    # Sample data for local testing
└── docs/
    └── UseCaseDiagram.drawio
```

## Database Schema

Core tables: `User_t`, `Role_t`, `Employee`, `Customer`, `Product`, `Category`, `Supplier`, `Order_T`, `Order_Item`, `Login_Audit`. Run `database/schema.sql` first, then optionally `database/seed-data.sql` for sample records.

## Getting Started

1. Open the `src/` folder as a Web Site project in Visual Studio (targets .NET Framework 4.8).
2. Run `database/schema.sql` against a local SQL Server instance to create `StationeryDB`.
3. Update the connection string in `src/Web.config` if your SQL Server instance name differs from `localhost`.
4. Run the project. `Login.aspx` is the entry point.
5. Create your first user directly in `User_t` (or seed one) since account creation itself requires an authenticated Admin session.

## Status / Known Limitations

This was built incrementally as coursework, so a few things are worth knowing before judging it as a finished product:

- The **Manager** and some **Admin** dashboard links (e.g. inventory reports, supplier management, order history) point to pages that were scoped but not implemented in this snapshot — only the pages listed under Features above are functional.
- Password hashing is unsalted SHA-256, which is fine for a coursework demo but not production-grade (would use bcrypt/PBKDF2 with per-user salts in a real deployment).
- Web Forms is a legacy framework; this project predates my current focus on the MERN stack and was built to satisfy a specific course's technology requirement.

## License

MIT
