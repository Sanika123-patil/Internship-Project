# ============================================================
# LOCAL RETAIL CUSTOMER FEEDBACK ANALYTICS
# Python EDA Project
# ============================================================

# ============================================================
# STEP 1 - IMPORT LIBRARIES
# ============================================================

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

pd.set_option("display.max_columns", None)

print("=" * 60)
print("LOCAL RETAIL CUSTOMER FEEDBACK ANALYTICS")
print("=" * 60)


# ============================================================
# STEP 2 - LOAD DATASET
# ============================================================
df = pd.read_csv("customer_feedback.csv")

print("\n\nSTEP 2 - FIRST 5 RECORDS")
print("-" * 60)
print(df.head())


# ============================================================
# STEP 3 - DATASET UNDERSTANDING
# ============================================================

print("\n\nSTEP 3 - DATASET SHAPE")
print("-" * 60)
print("Rows and Columns:", df.shape)

print("\nCOLUMNS")
print("-" * 60)
print(df.columns.tolist())

print("\nDATA INFORMATION")
print("-" * 60)
df.info()

print("\nSTATISTICAL SUMMARY")
print("-" * 60)
print(df.describe())


# ============================================================
# STEP 4 - DATA CLEANING
# ============================================================

print("\n\nSTEP 4 - MISSING VALUES")
print("-" * 60)
print(df.isnull().sum())

print("\nDUPLICATE RECORDS")
print("-" * 60)
print(df.duplicated().sum())

# Duplicate records remove 
df = df.drop_duplicates()

print("\nShape after removing duplicates:")
print(df.shape)


# ============================================================
# STEP 5 - RATING VALIDATION
# ============================================================

rating_columns = [
    "Service_Quality",
    "Waiting_Time_Rating",
    "Product_Availability",
    "Price_Perception",
    "Staff_Behaviour",
    "Overall_Satisfaction"
]

print("\n\nSTEP 5 - RATING VALUES")
print("-" * 60)

for col in rating_columns:
    print(col, ":", sorted(df[col].dropna().unique()))


# ============================================================
# STEP 6 - BUSINESS CATEGORY COUNT
# ============================================================

print("\n\nSTEP 6 - BUSINESS CATEGORY COUNT")
print("-" * 60)

category_count = df["Business_Category"].value_counts()

print(category_count)


plt.figure(figsize=(8, 5))

sns.countplot(
    data=df,
    x="Business_Category"
)

plt.title("Responses by Business Category")
plt.xlabel("Business Category")
plt.ylabel("Number of Responses")
plt.xticks(rotation=30)

plt.tight_layout()
plt.show()


# ============================================================
# STEP 7 - OVERALL SATISFACTION DISTRIBUTION
# ============================================================

print("\n\nSTEP 7 - OVERALL SATISFACTION DISTRIBUTION")
print("-" * 60)

print(df["Overall_Satisfaction"].value_counts().sort_index())


plt.figure(figsize=(7, 5))

sns.countplot(
    data=df,
    x="Overall_Satisfaction",
    color="steelblue"
)

plt.title("Overall Customer Satisfaction")
plt.xlabel("Satisfaction Rating")
plt.ylabel("Number of Responses")

plt.tight_layout()
plt.show()


# ============================================================
# STEP 8 - AVERAGE FACTOR RATINGS
# ============================================================

print("\n\nSTEP 8 - AVERAGE FACTOR RATINGS")
print("-" * 60)

factor_avg = df[rating_columns].mean().sort_values()

print(factor_avg.round(2))


plt.figure(figsize=(9, 5))

factor_avg.plot(
    kind="bar",
    color="teal"
)

plt.title("Average Rating by Customer Experience Factor")
plt.xlabel("Factor")
plt.ylabel("Average Rating")
plt.xticks(rotation=45)

plt.tight_layout()
plt.show()


# ============================================================
# STEP 9 - IMPROVEMENT AREA ANALYSIS
# ============================================================

print("\n\nSTEP 9 - IMPROVEMENT AREAS")
print("-" * 60)

improvement_counts = df["Improvement_Area"].value_counts()

print(improvement_counts)


plt.figure(figsize=(8, 5))

improvement_counts.plot(
    kind="bar",
    color="orange"
)

plt.title("Most Requested Improvement Areas")
plt.xlabel("Improvement Area")
plt.ylabel("Number of Responses")
plt.xticks(rotation=30)

plt.tight_layout()
plt.show()


# ============================================================
# STEP 10 - WAITING TIME VS SATISFACTION
# ============================================================

print("\n\nSTEP 10 - WAITING TIME VS SATISFACTION")
print("-" * 60)

waiting_analysis = df.groupby(
    "Waiting_Time_Rating"
)["Overall_Satisfaction"].mean()

print(waiting_analysis.round(2))


plt.figure(figsize=(7, 5))

waiting_analysis.plot(
    marker="o",
    linewidth=2,
    color="red"
)

plt.title("Waiting Time Rating vs Overall Satisfaction")
plt.xlabel("Waiting Time Rating")
plt.ylabel("Average Overall Satisfaction")
plt.grid(True)

plt.tight_layout()
plt.show()


# ============================================================
# STEP 11 - CORRELATION ANALYSIS
# ============================================================

print("\n\nSTEP 11 - CORRELATION ANALYSIS")
print("-" * 60)

correlation = df[rating_columns].corr()

print(correlation.round(2))


plt.figure(figsize=(10, 7))

sns.heatmap(
    correlation,
    annot=True,
    cmap="coolwarm",
    fmt=".2f"
)

plt.title("Correlation Between Customer Experience Factors")

plt.tight_layout()
plt.show()


# ============================================================
# STEP 12 - BUSINESS-WISE ANALYSIS
# ============================================================

print("\n\nSTEP 12 - BUSINESS-WISE ANALYSIS")
print("-" * 60)

business_summary = df.groupby(
    ["Business_ID", "Business_Category"]
).agg(
    Responses=("Response_ID", "count"),
    Avg_Service=("Service_Quality", "mean"),
    Avg_Waiting=("Waiting_Time_Rating", "mean"),
    Avg_Availability=("Product_Availability", "mean"),
    Avg_Price=("Price_Perception", "mean"),
    Avg_Staff=("Staff_Behaviour", "mean"),
    Avg_Satisfaction=("Overall_Satisfaction", "mean")
).reset_index()

print(business_summary.round(2))


# ============================================================
# STEP 13 - BUSINESS-WISE SATISFACTION CHART
# ============================================================

plt.figure(figsize=(10, 6))

sns.barplot(
    data=business_summary,
    x="Business_ID",
    y="Avg_Satisfaction",
    hue="Business_Category",
    legend=False
)

plt.title("Business-wise Average Customer Satisfaction")
plt.xlabel("Business ID")
plt.ylabel("Average Satisfaction")

plt.xticks(rotation=45)

plt.tight_layout()
plt.show()


# ============================================================
# STEP 14 - VISIT FREQUENCY ANALYSIS
# ============================================================

print("\n\nSTEP 14 - VISIT FREQUENCY ANALYSIS")
print("-" * 60)

visit_analysis = df.groupby(
    "Visit_Frequency"
).agg(
    Customers=("Response_ID", "count"),
    Avg_Satisfaction=("Overall_Satisfaction", "mean")
).reset_index()

print(visit_analysis.round(2))


plt.figure(figsize=(8, 5))

sns.barplot(
    data=visit_analysis,
    x="Visit_Frequency",
    y="Customers",
    color="purple"
)

plt.title("Customer Visit Frequency")
plt.xlabel("Visit Frequency")
plt.ylabel("Number of Customers")

plt.tight_layout()
plt.show()


# ============================================================
# STEP 15 - DISSATISFACTION ANALYSIS
# ============================================================

print("\n\nSTEP 15 - DISSATISFACTION ANALYSIS")
print("-" * 60)

dissatisfied = df[df["Overall_Satisfaction"] <= 2]

print("Total Dissatisfied Customers:",
      len(dissatisfied))

print("\nCategory-wise Dissatisfied Customers:")

dissatisfied_category = dissatisfied[
    "Business_Category"
].value_counts()

print(dissatisfied_category)


# ============================================================
# STEP 16 - HIGH SATISFACTION ANALYSIS
# ============================================================

print("\n\nSTEP 16 - HIGH SATISFACTION ANALYSIS")
print("-" * 60)

high_satisfaction = df[
    df["Overall_Satisfaction"] >= 4
]

print("Total Highly Satisfied Customers:",
      len(high_satisfaction))

print("\nCategory-wise Highly Satisfied Customers:")

print(
    high_satisfaction["Business_Category"]
    .value_counts()
)


# ============================================================
# STEP 17 - FINAL SUMMARY
# ============================================================

print("\n\n")
print("=" * 60)
print("FINAL PROJECT SUMMARY")
print("=" * 60)

print("\nTotal Responses:",
      len(df))

print(
    "Average Overall Satisfaction:",
    round(df["Overall_Satisfaction"].mean(), 2)
)

print(
    "Average Service Quality:",
    round(df["Service_Quality"].mean(), 2)
)

print(
    "Average Waiting Time Rating:",
    round(df["Waiting_Time_Rating"].mean(), 2)
)

print(
    "Average Product Availability:",
    round(df["Product_Availability"].mean(), 2)
)

print(
    "Average Price Perception:",
    round(df["Price_Perception"].mean(), 2)
)

print(
    "Average Staff Behaviour:",
    round(df["Staff_Behaviour"].mean(), 2)
)

print(
    "Total Dissatisfied Customers:",
    len(dissatisfied)
)

print(
    "Total Highly Satisfied Customers:",
    len(high_satisfaction)
)

print("\nMost Requested Improvement Area:")

print(
    improvement_counts.idxmax(),
    "->",
    improvement_counts.max(),
    "responses"
)

print("\n")
print("=" * 60)
print("PYTHON EDA COMPLETED")
print("=" * 60)
