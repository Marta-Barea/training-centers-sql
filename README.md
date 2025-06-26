# SQL Project - Training Center Database

This repository contains an SQL project built around a fictional **training center database**, used to explore essential query techniques and database structures with MySQL.

---

# How to use

1. Clone the repository

```bash
git clone https://github.com/yourusername/trining-ceneters-sql.git
cd trining-ceneters-sql
```

2. Set your credentials in .env

Create a file named `.env` with your database credentials:

```dotenv
MYSQL_ROOT_PASSWORD=your_password
MYSQL_PORT=mysql_port_here
MYSQL_HOST=127.0.0.1
MYSQL_DATABASE=training_centers
MYSQL_USER=your_user
MYSQL_PASSWORD=your_password
```
3. Start de Project

Make sure [Docker](https://www.docker.com) is running, then run:

```bash
docker-compose up -d
make all-insert

```
This will:

- Launch a MySQL 8.0 container
- Create the database
- Generate the schema
- Insert fictional data
- Run all queries in `queries/`
- Export results as .csv files in `results/`

# Requirements

- [Docker](https://www.docker.com/products/docker-desktop) 
- [Docker Compose](https://docs.docker.com/compose/) 
- `make`(preinstalled on macOS/Linux)

# Project Structure

```
training-centers-sql/
├── .env                    
├── .gitignore
├── .dockerignore    
├── Makefile
├── docker-composo.yaml                    
├── README.md        
├── schema/
│   ├── create_tables.sql
│   ├── insert_sample_data.sql
│   └── load_data.sql
├── data/
│   ├── centers.csv
│   └── courses.csv
├── queries/
│   ├── 01_active_courses.sql
│   ├── 02_distinct_categories.sql
│   ├── ...
└── results/
    ├── 01_active_courses.csv
    ├── 02_distinct_categories.csv
    └── ...
```
# Queries Overview

| Query                                  | Description                                                                 |
|----------------------------------------|-----------------------------------------------------------------------------|
| `01_cheapest_course.sql`               | Selects courses with a defined price, sorted ascendingly                   |
| `02_distinct_categories.sql`           | Lists unique course categories                                             |
| `03_courses_by_level_and_duration.sql`              | Filters beginner/intermediate courses with 20–40 hours                     |
| `04_courses_with_missing_prices.sql`                | Selects courses where price is not null                                    |
| `05_courses_related_to_sql.sql`              | Finds courses with "SQL" in their name                                     |
| `06_price_categories.sql`              | Categorizes price ranges using CASE WHEN                                   |
| `07_courses_under_150_or_free.sql`     | Filters courses under 150 or with free label                               |
| `08_duration_in_days.sql`              | Converts course hours to days (8h/day assumption)                          |
| `09_filter_by_category_and_level.sql`  | Selects non-advanced courses in specific categories                        |
| `10_courses_with_safe_prices.sql`      | Uses COALESCE to display 'Pending' for null prices                         |
| `11_avg_price_by_category.sql`         | Calculates average course price per category                               |
| `12_courses_count_by_level.sql`         | Counts how many entries there are per course level                          |
| `13_avg_duration_by_center.sql`        | Calculates average course duration by training center                      |
| `14_categories_with_multiple_courses.sql`| Finds categories offering two or more courses                            |
| `15_centers_with_multiple_courses.sql` | Finds centers offering at least one course                                 |
| `16_avg_price_center.sql`              | Calculates average course price per center                                 |
| `17_data_categories_multiple_courses.sql`| Finds categories with multiple "Data"-related courses                     |
| `18_intermediate_hours_by_center.sql`  | Sums duration of Intermediate-level courses per center                     |
| `19_course_levels_per_center.sql`      | Counts how many courses each center offers per level                       |
| `20_centers_avg_price_above_100.sql`   | Lists centers where the average course price exceeds 100                   |

# Notes 

All data is fictional and anonymized.
