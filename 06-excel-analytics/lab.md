# Lab: Excel for Analysts – KPIs and Dashboards

## Goal:
Learn how to use Excel to analyze sales data, track KPIs, and 
create a dashboard.

---

## Step 1: Open the `sales_data.xlsx` file

The `sales_data.xlsx` file contains data on product sales, 
regions, and months.  
Download it from the bootcamp repository and open it in Excel.

---

## Step 2: Calculate Total Sales

Create a new column for total sales (Quantity * Price) using 
this formula:

= B2 * C2

Then copy this formula down the column.

---

## Step 3: Calculate Average Sales by Region

Use Excel’s `AVERAGEIF` function to calculate the average sales 
for each region.

Example:

= AVERAGEIF(D:D, "North", E:E)

---

## Step 4: Create a Pivot Table

1. Select the data range  
2. Go to `Insert > PivotTable`  
3. Drag **Region** into the Rows  
4. Drag **Total Sales** into the Values  
5. Format it to show total sales per region

---

## Step 5: Build a Chart

1. Select your Pivot Table  
2. Go to `Insert > Chart` and choose a bar chart  
3. Customize chart title and labels

---

## Step 6: Stretch Goals

- Add a filter for Month  
- Highlight top-selling regions with conditional formatting  
- Create a line chart for monthly trends

---

## ✅ Done!

You just built a professional dashboard using Excel — pivot 
tables, formulas, and visualizations.  
This is what real analysts do every day 💜


