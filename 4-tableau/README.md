The following files are [Tableau Data Extract (.TDE)](http://www.tableau.com/about/blog/2014/7/understanding-tableau-data-extracts-part1) files that can be used with [Tableau](http://www.tableau.com/).

###PROCURMENT Line Items

Coming soon!

###RDTE Program Elements

| File  | Description  |
|---------------|----------------|
| **rdte-projects-and-changesummary-only.tde**   |  Tableau Data Extract file that joins program element root (header), project list and change summary  |
| **rdte-r2exhibits.tde**   |  Tableau Data Extract file that joins program element root (header), project list and the R2 Exhibits  |
| **rdte-r3exhibits.tde**   |  Tableau Data Extract file that joins program element root (header), project list and the R3 Exhibits  |
| **rdte-r4exhibits.tde**   |  Tableau Data Extract file that joins program element root (header), project list and the R4 Exhibits  |

> The extracts were manually created using Tableau Desktop for Mac (9.2.6) and were done by importing the .csv files and creating left joins between parent tables (file) and child joining `@PARENTROWID` on the CHILD table to the `@ROWID` on the PARENT table.
