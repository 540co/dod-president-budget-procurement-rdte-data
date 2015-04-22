#DoD President Budget Procurement / RDTE Justification Book Data Export

##What is this?

This repo contains a data extract of the **DoD [Procurement](https://dap.dau.mil/acquipedia/Pages/ArticleDetails.aspx?aid=9be81897-aae7-4b76-8887-f9334c6d77af) (P-1) and [RDTE](https://dap.dau.mil/acquipedia/Pages/ArticleDetails.aspx?aid=e933639e-b773-4039-9a17-2eb20f44cf79) (R-1) [justification book](http://comptroller.defense.gov/BudgetMaterials.aspx) exhibits** submitted by the US DoD Military Departments and Defense Agencies into simple flat files for analysts to download and use with their tool of choice (Excel, Access, Tableau, Qlikview, etc).


##What file formats are available in the repo?

For each exhibit a **CSV file** has been created as well as a **PostgresSQL script** if you want to import into your own database.

| Folder  | What is included?  |
|---------------|----------------|
| **rdte**    |   rdte csv files with file format of **fedapi\_rdte\_[budget description]\_[section of jbook]_\[year]** where **[budget description]** is either **basebudget** or **amended** (for years that had amended budget justifications) and **[section of jbook]** is a short description of what area of the jbook the flattened file was extracted from | 
| **procurement**    |   procurement csv files with file format of **fedapi\_procurement\_[budget description]\_[section of jbook]_\[year]** where **[budget description]** is either **basebudget** or **amended** (for years that had amended budget justifications) and **[section of jbook]** is a short description of what area of the jbook the flattened file was extracted from    |
| **postgresql**   |   All SQL import files for **procurement** and **rdte**  |

> NOTE:  Some files have been zipped since they are larger than 100 MB uncompressed

##How / why was this created?

As part of our [FedAPI](http://fedapi.com) effort, we had already done the heavy lifting of creating scripts to [download the PDF justification books from the DoD comptroller websites, extract the embedded XML files](https://github.com/search?q=justification+books) and [harvest / import line items / program elements into our FedAPI DoD Budget catalog](https://fedapi.io/www/overview/dodbudget).

**:-)** We found developers / data science folks who are comfortable using APIs loved the data and would simply use the APIs to access the data - usually calling the data at run time and doing more advanced searching across the data.

**:-(** However, we often found that business analysts that had more traditional analysis tools weren't able to use the APIs - and therefore, were looking for exports of the data resources to load / import into their tools.

While toying with our [API2Analyst "hack a thon" project](http://apps.fedapi.io/api2analyst-export/) (a tool designed to export and flatten data from APIs in bulk) we figured it made sense to simply take a snapshot of this data (since it doesn't change throughout the year and is only published annually, unless there is an amendment) and put it up on Github.

> While API2Analyst it is still a work in progress - you can technically use this to create a personal data warehouse in the cloud also with other data resources we have made available as well.  You just pick the data your want and it will export, flatten and create your own database on Amazon Web Services with the data selected. 

## Caveats / Recommendations

1.  The order of columns is NOT necessarily consistent across the various flat files so sometimes you might have to look thru the columns to find the field you are looking for (sorry, this is a result of the way partial objects are queried from FedAPI and flattened in a generic manner - and would require some additional fine tuning on each export)

2.  As the FedAPI JSON is flattened into the CSV files, the keys are flattened into a dot notation and then reversed.  

	>For example, **record.AppropriationTitle.value** would be represented in the CSV / SQL files as **value.AppropriateTitle.record**.  This is to help alleviate losing visibility when the depth of key / values is really deep and has to be truncated b/c of limitations of column names in tools such as PostgresSQL (only allows 60 chars by default)._
	
3. It might help at times to refer to the FedAPI DoD Budget catalog to review the various Data Elements and their typical values, distribution of values, etc.

	> For example, this is the breakdown of Appropriate Titles for 2016 Procurement Line Items - https://fedapi.io/www/records/dodbudget/procurement-base/2016/mapping/record.AppropriationTitle.value (don't forget the reverse dot notation noted above).

##Questions?
Open an issue on the repo and we will definitely try to help - or contact me at jobrieniii@540.co if you want to do something super secret.