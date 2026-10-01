# Ola Booking dashboard
### 1. Ola Booking Data Analysis
An interactive Power BI dashboard and SQL‑Python workflow analyzing **100,000 Ola bookings (May 2024)** to uncover demand trends, cancellations, ride distances, and revenue insights.

### 2. Purpose
This project simulates a **real-world ride‑hailing analytics workflow**, transforming raw booking data into actionable insights. The dashboard helps Ola understand **customer demand, driver cancellations, busiest booking hours, and revenue distribution across vehicle types**.

### 3.	Tech Stack
List the key technologies used to build the dashboard.

Example:
The dashboard was built using the following tools and technologies:<br>
•	🐍 **Python (Pandas, NumPy)** – Data cleaning, feature engineering, EDA.<br>
•	🗄️ **PostgreSQL** – KPI queries, cancellations, revenue analysis.<br>
•	📊 **Power BI** – Interactive dashboards and KPI visualization.<br>
•	📝 **Data Modeling** – Booking status, vehicle segmentation, cancellation reasons.<br>
•	📁 File Formats – `.ipynb` for notebooks, `.sql` for queries, `.pbix` for dashboards, `.pdf/.pptx` for reports.

### 4.	Data Source
- Synthetic dataset of **100,000 Ola bookings (May 2024)**.  
- Features include: Booking ID, Status, Vehicle Type, Pickup/Drop Location, VTAT, CTAT, Ratings, Distance, Value.  
- Covers **successful rides, cancellations (customer/driver), and incomplete bookings**.


### 5.	Features 
•	Business Problem :
Ride‑hailing companies face challenges in **driver cancellations, peak demand management, and customer dissatisfaction** due to incomplete rides. 

• Key questions such as:
- ⏰ **What is the busiest booking hour of the day?**  
- 🚦 **What are the main reasons for ride cancellations (customer vs. driver)?**  
- 💰 **What is the total booking value of successful rides?**  
- 📊 **Which vehicle types generate the highest revenue and demand?**  
- 📍 **What is the average ride distance across vehicle types?**  
- ⭐ **How do customer ratings vary by vehicle type?**  
- 👥 **Which customers are the most frequent riders?**  
- 📉 **What percentage of rides are incomplete, and what is the top reason?** .

•	Goal of the Dashboard
To deliver an interactive tool that:  
- Identifies **busiest booking hours**.  
- Analyzes **driver vs. customer cancellations**.  
- Highlights **revenue by vehicle type**.  
- Tracks **average ride distance and ratings**.  
- Provides **business recommendations** for operational improvements.
  
•	Walkthrough of Key Visuals
- **KPIs (Top Left):** Success rate 62.09% · Driver cancellations 17.99% · Customer cancellations 6.87% · Incomplete rides 5.97%  
- **Busiest Booking Hour:** 8–9 AM (morning commute peak)  
- **Revenue by Vehicle Type:** Auto (7.69M INR), Mini (6.12M INR), others balanced  
- **Cancellation Reasons:** Driver not moving to pickup (23.34%)  
- **Ratings:** Stable ~4.0 across all vehicle types  
- **Ride Distance Distribution:** Avg ~18 km per ride  


•	Business Impact & Insights
- 🚦 **Fix Driver Cancellations:** Stricter policies + vehicle maintenance checks  
- 🗺️ **Improve GPS Navigation:** Reduce “driver not moving” complaints  
- 🚕 **Scale Auto & Mini Fleets:** Deploy more during peak hours to maximize revenue  
- 🎁 **Reward Loyal Customers:** Discounts for repeat riders  
- 📉 **Promote Low‑Demand Segments:** Targeted campaigns for Prime SUV & E‑Bike  

### 6.	Screenshots 
 ![Dashboard Preview](https://github.com/Atharva2412/Ola-Booking-Data-Analysis/blob/main/ola_dashboard.png)
