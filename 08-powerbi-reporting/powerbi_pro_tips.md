# Power BI Pro Tips – For Analysts, Engineers & Power Users

You’ve mastered the dashboard basics — now it’s time to become a 
Power BI SME.  
These are real-world best practices, use cases, and performance 
tips used by analysts, data engineers, and BI leads. 💼⚡

---

## 🔹 1. Use DAX Measures, Not Calculated Columns

✅ DAX measures are computed on the fly  
❌ Calculated columns are stored in memory (slower + larger file 
size)

**Example:**

Total Revenue = SUMX(Sales, Sales[Units Sold] * Sales[Price])

---

## 🔹 2. Star Schema > Flat Files

Design your model like a star:

- 🟨 Fact Table → numeric metrics  
- 🟦 Dimension Tables → categories (Product, Date, Region)

Use relationships, not LOOKUPVALUE when possible. This keeps 
your model lean and fast.

---

## 🔹 3. Optimize Report Performance

- Disable auto date/time (File > Options > Current File > Data 
Load)  
- Use slicers only where needed  
- Avoid visuals that query many rows (e.g. full tables)  
- Use `Top N` filters in charts

---

## 🔹 4. Dynamic Titles & KPI Cards

Make dashboards feel alive:

KPI Title = "Total Revenue in " & SELECTEDVALUE(Date[Month])

Use cards + dynamic text to personalize the user view.

---

## 🔹 5. Security with Row-Level Security (RLS)

Apply user-based filters to limit access by role or region.

**Steps:**
1. Create a role in “Modeling > Manage Roles”  
2. Add a DAX filter: [Region] = USERPRINCIPALNAME()  
3. Test roles → Publish to Power BI Service

---

## 🔹 6. Use Tooltips & Drillthrough

🧠 Cheat code: Use hidden pages to show *more data* without 
cluttering dashboards

- Add a page  
- Set as Tooltip  
- Hover over bar charts to show breakdown by category or time

---

## 🔹 7. Power BI + Python or R (for Engineers)

In `Transform Data` view, insert Python or R scripts for:

- Cleaning messy datasets  
- Running machine learning models  
- Forecasting and clustering

Example (Python):

import pandas as pd  
dataset['Revenue'] = dataset['Units Sold'] * dataset['Price']

---

## 🔹 8. Power BI + SQL (Direct Query)

- Connect to SQL Server, Snowflake, etc.  
- Use parameterized queries  
- Schedule refreshes via Gateway

---

## ✅ TL;DR – Shine Like an SME

✔️ Use star schemas  
✔️ Write optimized DAX  
✔️ Build dynamic titles  
✔️ Avoid full tables  
✔️ Master security + drillthrough  
✔️ Use Python/SQL/R if needed  
✔️ Tell a *story*, not just show data

This is how Power BI pros deliver value — quickly, clearly, and 
confidently ⚡💜


