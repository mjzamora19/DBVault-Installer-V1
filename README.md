-- The DBVault Installer

-- The DBVault - A Lightweight, Secure, Browser-Based Database Management Tool

---

-- Download

| File | Size | OS |
|---|---|---|
| **`DBVault_v1.0.3_Windows.zip`** | 27 MB | Windows 10/11 (rebranded to The DBVault, hexagon icon, ODBC bundled) |
| **`DBVault_v1.0.1_Mac.zip`** | 110 KB | macOS |

---

-- Windows Install

1. Download `DBVault_v1.0.3_Windows.zip`
2. Extract to any folder
3. Double-click `DBVault_Start_Run.bat`
4. On first launch, a Windows admin prompt installs the Microsoft ODBC Driver 18 for SQL Server (~5 MB, one-time, ~30 sec)
5. Browser opens automatically

No Python install needed. No MSSQL/PostgreSQL/MySQL/MongoDB/CouchDB install needed. Just connect to your existing servers.

Optional: Run `Install.bat` to create a desktop shortcut.

-- Mac Install

1. Download `DBVault_v1.0.1_Mac.zip`
2. Extract to any folder
3. Open Terminal in that folder
4. Run: `chmod +x DBVault.command && ./Install.command`
5. Double-click **The DBVault** on your desktop

Requires: Python 3 (Install.command will guide you)

---

-- Features

-- Database Support
- Microsoft SQL Server
- PostgreSQL
- MySQL, MariaDB, Oracle, SQLite

-- Object Explorer
- Databases, Schemas, Tables, Views
- Stored Procedures, Functions, Triggers
- Columns with data types and primary keys

-- Query Editor
- Multi-tab query support
- IntelliSense (tables, columns, databases, schemas, keywords, functions)
- Ctrl+Enter to execute
- Ctrl+R to toggle results panel
- GO batch separator support
- USE database command support

-- Scripting
- Select Top 1000 Rows (auto-execute)
- View Data (data grid)
- Script Table as CREATE
- Script Table as SELECT
- Script Table as INSERT
- Script Table as UPDATE

-- Data Grid
- Server-side pagination (100 rows per page)
- Handles 10,000,000+ rows 
- Sorting by column
- CSV / JSON export

-- User System
- User registration and login

-- UI / UX
- Light theme / Dark theme toggle
- Password show/hide toggle
- Tabler Icons throughout the app
- CodeMirror SQL editor

---

&copy; 2026 The DBVault v1.0.3 — All Rights Reserved
