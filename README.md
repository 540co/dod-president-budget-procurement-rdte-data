#DoD President Budget Procurement / RDTE Justification Book Data Export

##What is this?

This repo contains a data extract of the public **DoD [Procurement](https://dap.dau.mil/acquipedia/Pages/ArticleDetails.aspx?aid=9be81897-aae7-4b76-8887-f9334c6d77af) (P-1) and [RDTE](https://dap.dau.mil/acquipedia/Pages/ArticleDetails.aspx?aid=e933639e-b773-4039-9a17-2eb20f44cf79) (R-1) [justification book](http://comptroller.defense.gov/BudgetMaterials.aspx) exhibits**  submitted by the US DoD Military Departments and Defense Agencies into various data formats for analysts to use in various tools.

Includes extracts of:
- 2013 base
- 2014 base / amended
- 2015 base / amended
- 2016 base
- 2017 base

## What steps taken to parse the Justification Books?

- Each PDF was downloaded and the XML files attached to the PDF were extracted

- Each XML file was parsed to pull out **procurement line items** / **rdte program elements** and each item / element was converted into individual unique JSON objects

- Each JSON object was uploaded to our [FedAPI](https://fedapi.com) platform to expose via an API

- Each JSON object was converted to CSV and SQL

- The SQL was loaded into a Amazon RDS instance


##Ok, that was boring - can't I just have the data?

### PDF

You want the PDF files?  Uggh...

While you could go download them from each MilDep site,  that is painful - and since we have already done that… here ya go:

[2013 Base](https://github.com/540co/dod-2013-basebudget-justification-books)

[2014 Base](https://github.com/540co/dod-2014-basebudget-justification-books)

[2015 Base](https://github.com/540co/dod-2015-basebudget-justification-books)

[2014/2015 Amended](https://github.com/540co/dod-amended-budget-justification-books)

[2016 Base](https://github.com/540co/dod-2016-basebudget-justification-books)

[2017 Base](https://github.com/540co/dod-2017-basebudget-justification-books)


### XML

You still love XML and want to do all the XPath ninja work on the original Justification Book XML?  

Just grab all the files in the XML folder.  

> BTW, if you like doing it this way, reach out to me at jobrieniii@540.co and let me know your [540](https://540.co) start date.  We most definitely want you to join our [team](https://540.co/jobs.html).


```
<?xml version="1.0" encoding="UTF-8"?>
<jb:JustificationBook xmlns:jb="http://www.dtic.mil/comptroller/xml/schema/022009/jb" targetSchemaVersion="1.0">
    <jb:Title>Justification Book</jb:Title>
    <jb:BudgetYear>2013</jb:BudgetYear>
    <jb:BudgetCycle>PB</jb:BudgetCycle>
    <jb:SubmissionDate>2012-02</jb:SubmissionDate>
    <jb:ServiceAgencyName>Air Force</jb:ServiceAgencyName>
    <jb:AppropriationCode>3010F</jb:AppropriationCode>
    <jb:AppropriationName>Aircraft Procurement, Air Force</jb:AppropriationName>
    <jb:CoverPage/>
    <jb:ExternalDocuments>
        <jb:IntroductionDoc>
            <jb:Title>Introduction and Explanation of Contents</jb:Title>
            <jb:FileName>3010_APPN_Language_insert_Aircraft_2013_PB.pdf</jb:FileName>
        </jb:IntroductionDoc>
```


### JSON (line items / program elements)

You want to download all the JSON files to load up in [R](https://www.r-project.org/) or you just <3 JSON as much as we do?  

A unique JSON object exists for each line item and program element - and can be found in the JSON folder.


```

```

```

```


### API

If you are building an API, or simply feel more comfortable consuming an API - you can access them at FedAPI:

[https://fedapi.io/www/overview/dodpresbud](https://fedapi.io/www/overview/dodpresbud)

####Examples


```

```

> BTW, if you like doing it this way, also reach out and let me know your [540](https://540.co) start date.  We most definitely want you to join our [team](https://540.co/jobs.html).

### CSV

If you want a collection of CSV files to load into your tool of choice, here ya go.

### SQL (Postgres)

Want to spin your own datawarehouse.  Just download the SQL and have fun.

### Database / Datawarehouse

Want to connect your tool to a datawarehouse, but don’t feel like setting up your own DB?  We have the data loaded into an Amazon RDS instance - so shoot us a quick email and we will  a user for you.
