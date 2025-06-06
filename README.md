# 🎧 Spotify Global Streaming Data Analysis (2024)

This project analyzes the **Spotify 2024 Global Streaming Data** to uncover insights about artist performance, genre engagement, platform behavior, and user trends across countries and time.

---

## 📊 Project Overview

The dataset includes streaming metrics such as:
- Total Streams (Millions)
- Skip Rate (%)
- Monthly Listeners (Millions)
- Total Hours Streamed
- Platform Type (Free / Paid)
- Artist, Genre, Country, Release Year

The objective is to derive **actionable insights** from this data that can assist artists, record labels, and streaming platforms in improving audience engagement and strategic planning.

---

## 🛠️ Tools & Technologies

- **Python**
- **Pandas** for data wrangling  
- **Matplotlib** & **Seaborn** for data visualization  
- **NumPy** for numerical computations  
- **SciPy** for statistical testing  
- **Jupyter Notebook**

---
## Methodology
### Analytical Approach
- Exploratory Data Analysis (EDA)
- Statistical Hypothesis Testing
- Temporal Trend Analysis
- Comparative Platform Assessment
- Custom Metric Development

## 📂 Project Structure
📁 Streaming-Behavior-Analysis/
│
├── 📄 Streaming_Behavior_Analysis.ipynb 
├── 📊 Visuals/ 
├── 📁 data/
│ └── Spotify_2024_Global_Streaming_Data.csv
└── README.md 


---

## 🔍 Key Business Insights

### 1. 🎤 Top Artists Dominate Global Streaming
- **BTS** leads with ~124.2B total streams.
- Other top performers: **Dua Lipa, Bad Bunny, BLACKPINK, Doja Cat**.
- Indicates strong fanbases and global reach.

---

### 2. 🎼 Genre Trends and Listener Engagement
- Most streamed genres: **K-pop, R&B, Reggaeton**.
- **Pop & Hip-Hop** genres show lower skip rates, suggesting **strong listener retention**.
- **Longer average stream durations** correlate with **lower skip rates**, signaling deeper engagement.

---

### 3. 🆚 Platform Performance Comparison
- **Minimal difference** in engagement between **Free (20.5%)** and **Paid (20.3%)** platforms.
- **T-test result:** p-value = 0.8361 → **Not statistically significant**.
- Platform type **does not significantly influence** skip behavior.

---

### 4. 🌍 Country-wise Streaming Engagement
Top 5 countries by total hours streamed:
- 🇰🇷 **South Korea:** 315,992M hours  
- 🇸🇪 **Sweden:** 315,892M hours  
- 🇿🇦 **South Africa:** 296,354M hours  
- 🇧🇷 **Brazil:** 262,070M hours  
- 🇷🇺 **Russia:** 261,482M hours  
→ Reflects regional differences in listening behavior and content preferences.

---

### 5. 📆 Temporal Insights
- Most albums released during **2019–2023**.
- Older albums (e.g., **Ed Sheeran**, **Post Malone**) still maintain strong streaming numbers.
- Ed Sheeran’s recent albums gathered **~166M & ~173M** streams in the **last 30 days** alone.

---

### 6. 📈 Engagement Efficiency Score
- Custom metric to evaluate platform performance:Engagement Score =
(Total Hours Streamed / Monthly Listeners) × (1 - Skip Rate)
- Platforms with **higher stream durations** and **lower skip rates** rank higher.
- Visualized using a **Radar Chart** for easy comparison.

---

### 7. ⏱ Hours per Stream (Listening Depth)
- Artists with higher **Hours per Stream** provide **deeper engagement**.
- Reflects **strong storytelling, loyal fanbases, or longer-form content**.

---

### 8. 💡 ROI – Streams per Listener
- Calculated as:ROI = Total Streams / Monthly Listeners

- High ROI artists exhibit **strong replay value** and **efficient fan engagement**.

---

## 📌 Conclusion

This project demonstrates how streaming data can provide **critical insights** into listener behavior, platform performance, and content impact. These insights can guide:
- Artist promotion strategies
- Genre-targeted campaigns
- Platform-level UX and pricing decisions

---

## 📥 Dataset Source

> 🔗 *This project uses a fictional/representative dataset for analysis purposes.*  
> [https://www.kaggle.com/datasets/atharvasoundankar/spotify-global-streaming-data-2024.]

---

## 📬 Contact

**Author:** [Mahesh Godala]  
📧 Email: maheshgodala1@gmail.com  
🔗 GitHub: [Mahesh-011](https://github.com/Mahesh-011)

---

## ⭐ If you found this useful, give it a ⭐ and follow for more data-driven projects!



