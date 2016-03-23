#DoD President Budget Procurement / RDTE Justification Book Data Export

##What is this?

This repo contains an extract of the public **DoD [Procurement](https://dap.dau.mil/acquipedia/Pages/ArticleDetails.aspx?aid=9be81897-aae7-4b76-8887-f9334c6d77af) (P-1) and [RDTE](https://dap.dau.mil/acquipedia/Pages/ArticleDetails.aspx?aid=e933639e-b773-4039-9a17-2eb20f44cf79) (R-1) [justification book](http://comptroller.defense.gov/BudgetMaterials.aspx) exhibits** submitted by the US DoD Military Departments and Defense Agencies into **multiple data formats** to allow analysts / users to use their tool of choice when analyzing and/or merging with other data sources.

The extract includes:

- 2013 base budget
- 2014 base / amended budget
- 2015 base / amended budget
- 2016 base budget
- 2017 base budget

>Unfort, prior to 2013, there were no machine readable files available to fetch / parse the data

##Why was this done?

1. Many people don't even know that this data exists in a machine readable format, and
2. The people who do are spending too much time downloading and extracting only the data they need.  

Since we had already done the heavy lifting of downloading / parsing the Justification Books into resources for [FedAPI](http://fedapi.com) - and not all analysts know how to consume APIs (yet) - we figured it was a good idea to also publish in other formats to minimize time harvesting / parsing the data and maximize analysis time.


## What steps were taken to parse the Justification Books into the various formats?

- Each PDF was downloaded and the XML files attached to the PDF were extracted

- Each XML file was parsed to pull out **procurement line items** / **rdte program elements** from the various exhibits and each item / element was converted into individual unique JSON objects

- Each JSON object was uploaded to our [FedAPI](https://fedapi.com) platform to expose via an API

- Each JSON object was converted to CSV and SQL (coming soon)

- The SQL was loaded into Amazone Redshift (coming soon)


##Ok, that was boring - can't I just have the data?

Sure... just like Burger King, have it any way you like...

### PDF

You want the PDF files?  Uggh...

While you could go download them from each MilDep site, that is painful - and since we have already done that… here ya go:

[2013 Base](https://github.com/540co/dod-2013-basebudget-justification-books) | [2014 Base](https://github.com/540co/dod-2014-basebudget-justification-books) | [2015 Base](https://github.com/540co/dod-2015-basebudget-justification-books) | [2014/2015 Amended](https://github.com/540co/dod-amended-budget-justification-books) | [2016 Base](https://github.com/540co/dod-2016-basebudget-justification-books) | [2017 Base](https://github.com/540co/dod-2017-basebudget-justification-books)


### XML

You still love XML and want to do all the XPath ninja work on the original Justification Book XMLs?  

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

A unique JSON object exists for each line item and program element - and can be found in the [1-json-procurement-lineitems](https://github.com/540co/dod-president-budget-procurement-rdte-data/tree/master/1-json-rdte-programelements) and [1-json-procurement-lineitems](https://github.com/540co/dod-president-budget-procurement-rdte-data/tree/master/1-json-rdte-programelements).

**procurement line item snippet**

```
{
    "id": "0099dc6c4d5fc0e18f8a144e6d4cf2c9fca70374",
    "meta": {
        "filename": "dod-2017_PROCUREMENT_2017_ARMY_MISSLE_U_PROCUREMENT_JustificationBook_Army_PB_2017.zzz_unzipped_U_PROCUREMENT_JustificationBook_Army_PB_2017.xml",
        "budget_year": "2017",
        "budget_cycle": "PB",
        "submission_date": "2016-02",
        "service_agency_name": "Army",
        "appropriation_code": "2032A",
        "appropriation_name": "Missile Procurement, Army"
    },
    "record": {
        "@quantityUnits": "Each",
        "@unitCostUnits": "Thousands",
        "@totalCostUnits": "Millions",
        "@manufacturerRateUnits": "Monthly",
        "@classification": "UNCLASSIFIED",
        "LineItemNumber": {
            "val": "C59300"
        },
        "LineItemTitle": {
            "val": "TOW 2 System Summary"
        },
        "P1LineNumber": {
            "val": "8"
        },
        "BudgetYear": {
            "val": "2017"
        },
        "BudgetCycle": {
            "val": "PB"
        },
        "SubmissionDate": {
            "val": "2016-02"
        },
        "ServiceAgencyName": {
            "val": "Army"

     -lots more-

```

**rdte program element snippet**
```

{
    "id": "0014d538cb79e15df062650ea1e04d0856a36fef",
    "meta": {
        "filename": "dod-2017_RDTE_2017_AIRFORCE_V1_U_RDTE_MasterJustificationBook_Air_Force_PB_2017.zzz_unzipped_U_RDTE_MasterJustificationBook_Air_Force_PB_2017.xml",
        "budget_year": "2017",
        "budget_cycle": "PB",
        "submission_date": "2016-02",
        "service_agency_name": "Air Force",
        "appropriation_code": "3600",
        "appropriation_name": "Research, Development, Test & Evaluation, Air Force"
    },
    "record": {
        "@monetaryUnit": "Millions",
        "@format": "R2Long",
        "@classification": "UNCLASSIFIED",
        "ProgramElementNumber": {
            "val": "0305258F"
        },
        "ProgramElementTitle": {
            "val": "Advanced Evaluation Program"
        },
        "R1LineNumber": {
            "val": "213"
        },
        "BudgetYear": {
            "val": "2017"
        },
        "BudgetCycle": {
            "val": "PB"
        },
        "SubmissionDate": {
            "val": "2016-02"
        },
        "ServiceAgencyName": {
            "val": "Air Force"
        },

	-lots more-
```


### API

![fedapi-dod-budget-catalog-screenshot]
(https://s3.amazonaws.com/jbooks-misc-images/fedapi-dod-budget-catalog-screenshot.png)

If you would like to consume the data via an API, with numerous ways of querying / searching the resources, you can access the resources at [FedAPI](https://fedapi.com) where we have indexed all of data:

[https://fedapi.io/www/overview/dodpresbud](https://fedapi.io/www/overview/dodpresbud)

Below are various example calls, or checkout the [API docs](https://fedapi.io/www/apidocs/dodpresbud) for more information.

> BTW, if you like doing it this way, also reach out and let me know your [540](https://540.co) start date.  We most definitely want you to join our [team](https://540.co/jobs.html).

**count of 2017 line items (procurement) for each service**
```
$ curl "https://fedapi.io/api/catalog/dodpresbud/procurement-base/2017/record/search?q=record.ServiceAgencyName.val:Army&size=0"

{"total_count_match":300,"record":[]}

$ curl "https://fedapi.io/api/catalog/dodpresbud/procurement-base/2017/record/search?q=record.ServiceAgencyName.val:Air+Force&size=0"

{"total_count_match":502,"record":[]}

$ curl "https://fedapi.io/api/catalog/dodpresbud/procurement-base/2017/record/search?q=record.ServiceAgencyName.val:Navy&size=0"

{"total_count_match":333,"record":[]}

```

**2017 procurement line items and rdte program exhibits that mention F-35 anywhere in the line item or program element**
```

$ curl "https://fedapi.io/api/catalog/dodpresbud/procurement-base/2017/record/search?q=F-35"

$ curl "https://fedapi.io/api/catalog/dodpresbud/rdte-base/2017/record/search?q=F-35"

```

> Use the `&size` query parameter to get more results in the response (default size = 10)


### CSV

If you want a collection of CSV files to load into your tool of choice (Tableau, Qlikview, etc.), here they are: [1-csv-procurement-lineitems](https://github.com/540co/dod-president-budget-procurement-rdte-data/tree/master/2-csv-procurement-lineitems) and [2-csv-rdte-programelements](https://github.com/540co/dod-president-budget-procurement-rdte-data/tree/master/2-csv-rdte-programelements)

> **NOTES**

>The **line items** and **program elements** resources have n-number of exhibits contained within each object, and n-number of different rows of data within each exhibit.  

> Therefore, representing the resources into 2-dimensional tables requires a collection of tables that are joined.

> - Each file contained in the folder represents an array of data
> - Each row has a unique `@ROWID` that acts as the unique primary key
> - If a row has a parent and should be joined to a table / row, the column `@PARENT` and `@PARENTROWID` will have the **name of the table** and **rowid to join to**
> - Since the paths of the filenames (tables) is auto generated, the values have been trimmed to ~200 chars to minimize file system issues - but in some cases
> - To get started, we highly recommend taking a look at the **README.md** in each folder.

### Tableau (RDTE done, PROC in process)

If you like using [Tableau](http://www.tableau.com/) and don't feel like importing / joining the CSV files, here are some already ready to rock [Tableu Data Extract (.TDE) files](https://github.com/540co/dod-president-budget-procurement-rdte-data/tree/master/4-tableau).


### SQL (Postgres)

COMING SOON

### Database / Datawarehouse

COMING SOON

## REFERENCES

[Budget Info] (http://acqnotes.com/acqnote/acquisitions/budget-exhibits)
[RDTE Exhibit Overview](http://acqnotes.com/acqnote/acquisitions/rdte-programs-budget-exhibit)
