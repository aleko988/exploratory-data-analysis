# Exploratory Data Analysis on University Rankings

This project performs exploratory analysis on university ranking data over time, focusing on countries, universities, and various ranking metrics.

## 🔍 Analysis Goals

- Understand trends over time in university performance
- Identify top-performing universities and countries
- Explore student demographics and academic environments

---

## 📊 Key Insights & Queries

1. **Top Countries by Average Overall Score**
   - Aggregated scores per country per year.
   - Used `DENSE_RANK` to get top 5 countries annually.

2. **Top Universities Per Year**
   - Identified universities with the highest `overall score` for each year.
   - Included handling of score ties using `DENSE_RANK`.

3. **Student Demographics**
   - Calculated number and percentage of international students by country.
   - Evaluated female-to-male ratios.

4. **Score Distribution Categories**
   - Created score labels like "Excellent", "Good", "Normally", and "Low" using CASE statements.

5. **Trends by Year**
   - Count of universities per year
   - Staff-to-student ratios over time

---

## 🛠️ Tools Used

- MySQL
- SQL Aggregation and Ranking Functions (`DENSE_RANK`)
- Common Table Expressions (CTEs)
- Conditional Statements (CASE)

---

## 📁 Files Included

- `exploratory_data_cleaning.sql` — SQL script containing all EDA queries.
- (Optional) Visualization notebooks or exported charts *(if added later)*

---

## 📌 Usage

1. Make sure you’re using the **cleaned dataset** from the data cleaning project.
2. Run queries one-by-one to explore the data, or use them as templates for visualizations in Python or Tableau.
3. Adjust filters (e.g., year or country) as needed to focus on specific time periods or regions.

---

## 📈 Future Enhancements

- Visualize the results in Python or Tableau
- Compare trends between teaching, research, and industry impact
- Build dashboards using the output of these queries

---

## 🧠 Author

This project is part of my SQL learning path and EDA practice.  
It demonstrates how to explore datasets using SQL only, before jumping into visualization tools.

