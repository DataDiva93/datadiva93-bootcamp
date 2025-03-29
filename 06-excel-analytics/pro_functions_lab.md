# Pro Excel Functions – Industry Use Cases

## Goal:
Master the most powerful Excel functions used in real-world jobs 
— from logistics to finance to operations.

---

## Function 1: VLOOKUP  
**Use Case:** Logistics – match SKU codes to item names  

In a new sheet:

- Column A: SKU  
- Column B: Item Name  
- Column C: Lookup Table

Formula example:

=VLOOKUP(A2, LookupTable!A:B, 2, FALSE)

🔍 Use this to:
- Map warehouse data  
- Reconcile shipments  
- Join datasets without databases

---

## Function 2: IF + AND/OR  
**Use Case:** Flag urgent deliveries

Example:

=IF(AND(B2="West", C2>100), "Rush", "Standard")

Used for:
- Routing rules  
- Sales bonuses  
- Priority workflows

---

## Function 3: TEXT + DATE Functions  
**Use Case:** Show Month/Year, format dates for reporting

=TEXT(A2, "mmm-yyyy")  
=WEEKNUM(A2)  
=EDATE(A2, 1)

Great for:
- Aggregating data monthly  
- Forecasting and scheduling  
- Payroll or pay period grouping

---

## Function 4: INDEX + MATCH  
**Use Case:** Flexible lookups (more powerful than VLOOKUP)

=INDEX(B2:B100, MATCH("Item123", A2:A100, 0))

Why?
- Works left-to-right or right-to-left  
- Handles dynamic ranges  
- Used in dashboards + reporting

---

## Function 5: COUNTIFS + SUMIFS  
**Use Case:** Revenue by region + product

=SUMIFS(E:E, B:B, "West", C:C, "Shoes")  
=COUNTIFS(D:D, ">100", A:A, "East")

Ideal for:
- Filtering totals by condition  
- Regional performance  
- Complex KPIs in ops/retail/logistics

---

## ✅ Done!

These formulas will set you apart — analysts rely on them 
*daily* to solve complex, time-sensitive challenges.

VLOOKUPs won’t just get you hired — they’ll keep you delivering 
value 💜


