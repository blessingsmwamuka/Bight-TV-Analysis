Bright TV Viewership Analysis
Bright TV Viewership Analysis Project

1. Project Overview

The Bright TV Viewership Analysis Project focuses on analysing user profile data and viewing records to generate meaningful business insights and support strategic decision-making.

The project was developed to assist the Customer Value Management (CVM) team at Bright TV in understanding its audience, identifying the channels, provinces and audience groups that matter most, and evaluating when viewers are most active in order to improve customer acquisition, engagement and retention.

By applying data analytics, SQL querying and data visualisation techniques, the project transforms raw user and viewing data into meaningful information that can support content planning, marketing strategy and scheduling decisions.

The analysis follows a structured data analytics workflow, beginning with project planning and data preparation, followed by data exploration, visualisation and the development of actionable business recommendations.

2. Project Objectives

The primary objective is to use data analytics and visualisation to evaluate Bright TV's audience and viewing behaviour and provide actionable recommendations.

The specific objectives are to:

- Identify the channels that attract the most viewers.
- Analyse the audience across provinces.
- Examine the audience profile by gender and race.
- Analyse viewing behaviour across different times of the day.
- Develop interactive visualisations to communicate analytical findings.
- Provide data-driven recommendations to grow the audience and improve customer engagement.

3. Business Questions

The analysis is guided by the following business questions:

1. Which channels attract the most viewers, and which attract the fewest?
2. Which provinces have the largest and smallest audiences?
3. Which gender and race groups make up the audience?
4. At what time of day is viewing highest?
5. What recommendations can grow the audience and improve customer engagement?

These questions provide direction for the SQL queries, Excel analysis and dashboard development.

4. Tools and Technologies

The project uses the following technologies:

Data Processing and Analysis

- SQL: Querying, cleaning, transforming and analysing the viewing data.
- Databricks: Loading and processing the datasets, storing the processed table in the catalog and hosting a dashboard.

Data Analysis and Visualisation

- Microsoft Excel: Data analysis, pivot tables and graphical representations.
- Microsoft Power BI: Developing an interactive report with slicers and presenting business insights.
- Databricks Dashboards: Dashboard development directly on the processed table.

Project Planning and Presentation

- Miro: Designing the project workflow and data architecture.
- Microsoft PowerPoint: Presenting project findings and recommendations.
- Canva: Supporting the visual design and the project timeline (Gantt chart).
- GitHub: Version control and storage of all project files.

5. Project Methodology

The project follows a structured data analytics process consisting of the following stages.

Task 1: Project Planning and Architecture

The initial stage focused on establishing the project's objectives, scope and analytical requirements.

Activities included:

- Defining the business problem and project objectives.
- Identifying the key business questions.
- Developing the project workflow and flowchart using Miro.
- Creating a Gantt chart to sequence the tasks.
- Establishing the analytical tasks and expected deliverables.

Task 2: Data Preparation and Processing

The second stage involved preparing the original datasets for analysis. Two datasets were provided and joined using the user identifier (UserID). The user profiles contain gender, race, age, province and contact details. The viewing records contain the channel watched, the date and time of viewing and the session duration.

Activities included:

- Loading the CSV files into Databricks by creating a schema and tables.
- Examining the dataset structure and identifying relevant fields.
- Checking row counts, missing values, duplicate records and data types.
- Handling missing values, such as blank or None genders and provinces.
- Creating new fields: Age_Group, Time_Of_Day and View_Duration.
- Preparing the dataset for SQL-based analysis.

Task 3: SQL Data Analysis

SQL was used to investigate the viewing dataset and answer the identified business questions.

The analysis focused on:

- Joining the user profiles to the viewing records using UserID.
- Analysing viewership by channel.
- Investigating viewership across provinces.
- Evaluating the audience by gender and race.
- Analysing viewing across different times of the day.
- Saving the final processed table in the Databricks catalog for further interpretation and visualisation.

Task 4: Excel Analysis and Visualisation

Microsoft Excel was used to summarise and visualise relevant information from the dataset.

Activities included:

- Creating pivot tables to summarise viewership by gender, race and time of day.
- Developing titled charts to communicate viewing patterns.
- Placing all graphs on one sheet for easy comparison.
- Using visual representations to identify important trends.

Task 5: Dashboard Development

Dashboard development focused on presenting the analytical findings through accessible and interactive visualisations.

The project uses data visualisation tools to:

- Present important viewership indicators.
- Compare channels, provinces and audience groups.
- Display viewing patterns across different times of the day.
- Improve the accessibility and interpretation of analytical findings.
- Support business monitoring and decision-making.

Task 6: Interpretation and Business Recommendations

The final analytical stage involved interpreting the results and translating the findings into practical business recommendations.

Activities included:

- Reviewing the SQL analysis and visualisations.
- Identifying important viewing trends.
- Evaluating channel, province and audience performance.
- Developing recommendations based on the analytical findings.
- Preparing the final project presentation.

6. Analysis Areas

The analysis investigates the following areas:

- Channel viewership.
- Provincial audience distribution.
- Gender profile of the audience.
- Race profile of the audience.
- Viewing patterns by time of day.

7. Project Outcomes

The project provides a structured analysis of Bright TV's viewership data. The key findings are:

- Channels: Supersport Live Events is the most watched channel with 1,662 viewers (17 percent of 10,000), followed by ICC Cricket World Cup 2011 with 1,465. These two sport channels draw 31 percent of all viewers. Channel O (1,050) and Trace TV (952) lead the non-sport channels, and four channels have fewer than 50 viewers.
- Provinces: Gauteng is the core market with 1,704 viewers (32 percent of 5,375), followed by Western Cape with 791. Northern Cape (86) and Free State (156) have the lowest reach, and 17 percent of viewers have no province recorded.
- Gender: Males account for 83 percent of views (9,190 of 11,074) and females only 10 percent (1,056). Gender is not recorded for 7 percent of views.
- Race: Black viewers are the largest group with 4,516 views (48 percent of 9,386), followed by Coloured (20 percent), Indian and Asian (17 percent), White (15 percent) and Other (1 percent).
- Time of day: Afternoon is the busiest period with 3,807 views (34 percent of 11,295), followed by morning with 3,563 (32 percent). Together they account for 65 percent of views, while evening has 2,352 (21 percent) and night is the quietest with 1,573 (14 percent).

Note on the data: channel and province figures are total viewers, while race, gender and time of day figures are the number of views (viewing records). Totals differ between analyses because some records have missing values, so each percentage uses its own total.

The findings are communicated through SQL analysis, Excel visualisations and dashboard reporting.

8. Business Recommendations

Based on the findings, the project recommends the following business strategies:

1. Lead with Live Sport: Sport channels top the ratings, so prioritise and promote live sport to attract new subscribers and keep existing ones engaged.
2. Grow Beyond Gauteng: Run targeted marketing campaigns in low-reach provinces such as Northern Cape and Free State to reduce reliance on a single market.
3. Win More Female Viewers: Women make up only 10 percent of views. Add lifestyle, drama and family content and market it directly to women. This is a suggestion to test, not a result proven by the data.
4. Schedule for the Peaks: Place headline content in the afternoon and morning, when 65 percent of viewing happens, and test promotions for evening and night.
5. Improve Data Capture: Make gender and province compulsory at sign-up, because province is missing for 17 percent of viewers and gender for 7 percent of views.

9. Skills Demonstrated

This project demonstrates practical skills in:

- SQL querying and data analysis.
- Data cleaning and transformation.
- ETL workflow planning.
- Exploratory data analysis.
- Microsoft Excel and pivot tables.
- Data visualisation.
- Dashboard development in Databricks and Power BI.
- Business intelligence.
- Analytical problem-solving.
- Communicating business insights.
- Developing data-driven recommendations.

10. Project Deliverables

The project includes the following deliverables:

- Project workflow diagram.
- Project planning and Gantt chart.
- Project description and raw dataset.
- SQL scripts and analytical queries.
- Excel analysis workbook containing pivot tables and charts.
- Power BI dashboard.
- Databricks dashboard.
- Final project presentation.
- Project documentation and README file.

11. Conclusion

The Bright TV Viewership Analysis Project demonstrates how data analytics can be used to transform user and viewing data into meaningful business insights.

Through SQL, Databricks, Microsoft Excel, Power BI and data visualisation techniques, the project investigates channel performance, provincial reach, audience profile and viewing patterns.

The structured analytical approach provides a foundation for understanding the audience and identifying opportunities for growth and improvement.

Ultimately, the project highlights the importance of using data-driven insights to support content planning, marketing strategy and overall business performance.

Project: Bright TV Viewership Analysis
Author: Blessings Mwamuka
Focus: Data Analytics | SQL | Data Visualisation | Business Intelligence

Mechanical Engineering Student | Aspiring Data Analyst
