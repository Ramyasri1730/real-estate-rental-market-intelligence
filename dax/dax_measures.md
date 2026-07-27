# 📐 Power BI DAX Measures

## Rental Market Intelligence & Investment Decision Framework

DAX calculations created in Power BI for dashboard KPIs and analytics.

---

## Total Portfolio Value

```DAX
Total Portfolio Value =
SUM(rental_data[Rent])
```

---

## Average Annual Rent

```DAX
Average Annual Rent =
AVERAGE(rental_data[Rent])
```

---

## Average Rent per Sqft

```DAX
Average Rent per Sqft =
AVERAGE(rental_data[Rent_per_sqft])
```

---

## Total Active Listings

```DAX
Total Active Listings =
COUNT(rental_data[Property_ID])
```

---

## Average Listing Age

```DAX
Average Listing Age =
AVERAGE(rental_data[Age_of_listing_in_days])
```

---

## Demand Index

```DAX
Demand Index =
DIVIDE(
[Total Active Listings],
[Average Listing Age]
)
```

---

## KPI Usage

These measures support:

- Executive Dashboard
- Location Intelligence Dashboard
- Rental Analysis Dashboard
- Investment Decision Analysis
