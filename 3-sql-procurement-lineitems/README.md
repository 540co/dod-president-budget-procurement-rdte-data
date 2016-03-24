### What is this?

All of the procurement line items in a ready to import set of Postgres SQL statements.

### To import

Create a new database to ensure no table collisions

```

# create database li;

# use li;

```

Create tables for line items

```

# \i /PathToYourFiles/dod-president-budget-procurement-rdte-data/3-sql-procurement-lineitems/lineitem-20160322T2306290700-DDL.sql


```


Import line items

```

# \i /PathToYourFiles/dod-president-budget-procurement-rdte-data/3-sql-procurement-lineitems/lineitem-20160322T2306290700-INSERTS-UPDATES.sql

```

> For a list of the tables / columns, refer to `lineitem-20160322T2306290700-README.md`