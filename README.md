# Amazon Vine Analysis

Overview of analysis: technical analysis of the Pet Products review data set from Amazon. Includes extraction, transformation of data types where needed, connection to an AWS RDS instance, and loading the data into an SQL friendly database (pgAdmin). SQL was then used to determine if there is any bias towards favorable reviews from Vine members in my data set. 

## Total number of Vine reviews vs non-Vine reviews
Analysis shows that there are 10,215 Vine reviewers and 2,633,399 non-Vine reviewers in this data set. 

## 5-Star Reviews
The 5-star reviews are broken down by paid versus unpaid subscription type:
* 5-star Vine reviews: 4,343
* 5-star non-Vine reviews: 1,641,210

## Percentage of Reviews
The 5-star review percentages are broken down by paid versus unpaid subscription type:
* 5-star Vine reviews: 42.51%
* 5-star non-Vine reviews: 62.32%

## Conclusion
There does not appear to be a posivity bias for paid Vine reviews. Less than half of the reviews were 5 stars when grouping results by a paid Vine subscription only. Non-Vine users showed a bias toward positivity, with more than half rating products with 5 stars. Further analysis should be performed on the type of bad reviews left; for Vine subscribers, it is possible that poor service within the Vine program affected their review of the product, which does not reflect the product itself. Additionally, the numbers of 4-, 3-, 2-, and 1-star reviews should be assessed in each data set to determine the true spread of the data. 
