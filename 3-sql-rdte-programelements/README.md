### What is this?

All of the rdte program elements in a ready to import set of Postgres SQL statements.

### To import

Create a new database to ensure no table collisions

```

# create database pe;

# use pe;

```

Create tables for line items

```

# \i /PathToYourFiles/dod-president-budget-procurement-rdte-data/3-sql-rdte-programelements/programelement-20160322T2305520700-DDL.sql


```


Import line items

```

# \i /PathToYourFiles/dod-president-budget-procurement-rdte-data/3-sql-rdte-programelements/programelement-20160322T2305520700-INSERTS-UPDATES.sql

```

> For a list of the tables / columns, refer to `programelement-20160322T2305520700-README.md`