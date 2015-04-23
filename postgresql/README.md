#postgreSQL import files

## What to do?

- Uncompress the **sql_files.zip** bundle.

- Using **pgdump** or SQL interface import the desired files into your postgreSQL database.

- Connect your favorite BI tool to database and start analyzing.

## Notes

All .sql files have a starting line setting the schema to **f7abd40e3249b9e51eba7de0d45cbd0f** which was randomly created by the API2Analyst tool during export. 

**For example**
```
SET SCHEMA 'f7abd40e3249b9e51eba7de0d45cbd0f';
/* fedapi_procurement_amended_codebpelist_2015 - created 2015-04-22T10:15:41+00:00 */
```

You can change it as necessary, however, realize it is at the start of each .sql file.

