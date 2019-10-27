
# Project: Data Cleaning and Manipulation with Pandas

* **A detailed explanation of the process followed in the importing, cleaning, manipulation, and exporting of your data as well as your results, obstacles encountered, and lessons learned.

1. Importing pandas, numpy, re
2. Reading the downloaded GSAF5.csv file containing very messy data about shark attacks
3. Creating a working copy (throughout entire data cleaning process)
4. Cleaning the column names by capitalizing and text simplification
5. Reasigning the cleaned column names
6. Checking general content of the dataframe
7. Check how the 'Time' column is structured
8. Defining function to categorize the time in categories:
    a) 'Early Morning: 4am-8am
    b) 'Morning': 8am-12pm
    c) 'Afteroon': 12pm-4pm
    d) 'Evening': 4pm-8pm
    e) 'Night': 8pm-12am
    f) 'Late Night': 12am-4am
9. Long and complicated process of cleaning the 'Time' column
10. Removing potential duplicated columns
11. Checking how many NaN, empty values there are in the dataset
12. Removing columns with empty values:'Type','Age','Species', 'Unnamed 22', 'Unnamed 23' and 'Original order', which is just pointless column
13. Removing rows with NaNs and missing info
14. Checking the 'Country' column
15. Cleaning the 'Country' column
16. Reasigning the 'Country' column
17. Checking the 'Sex' column
18. Cleaning up the 'Sex' column 
19. Reasigning the 'Sex' column
20. Checking the 'Activity' column:
    Itis not very informative, all victims where somehow swimming :)
21. Removing 'Activity' column
22. Checking the 'Pdf', 'Href formula' and 'Href' columns,
    as they seem to contain the same information
23. Removing the 'Pdf' and 'Href' columns since the information is redundant
24. Renaming the "Href formula" column into 'Link'
25. Checking the 'Case number', 'Case number 1' and 'Case number 2' columns
    Seems like they contain redundant informations, with a couple of mismatches
26. Cleaning up that mess by using the 'Link' column to extract the real Case numbers
27. Adding a new column 'Case nr' as the first column
28. Deleting the 3 Case number columns
29. Checking which Case nrs are duplicated
30. Converting the non unique Case Nrs to unique
31. Making the unique case nr column the index
32. Checking the 'Injury' column
33. Creating a list with body parts to categorize the injuries
34. Cleaning up the 'Injury' column
35. Creating a dictionary with body parts to categorize the injuries even better 
36. Updating the 'Injury' column with cleaned data
37. Saving the cleaned data as csv file


