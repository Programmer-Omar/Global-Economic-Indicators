# End-to-End Data Pipeline: Global Economic Indicators

## Data Acquisition, Cleaning, SQL Upload, and Analysis with Python and MySQL

This project demonstrates a complete end-to-end data pipeline built to analyze global economic trends across more than 200 countries over a 15-year period (2010–2025). Using Python in Google Colab, I accessed a Kaggle dataset through the Kaggle API, performed thorough data cleaning (including handling missing values), and uploaded the processed data into a MySQL database. From there, I conducted structured queries to explore economic indicators such as inflation, interest rates, GDP, and more.

---
title: Global Economic Indicators
---
graph TD
    subgraph Data Acquisition
        A[Kaggle API] -- Download Datasets --> B(Colab - Python Script);
    end

    subgraph Data Processing & Storage
        B -- Clean, Transform, Analyze --> C{Colab - Python Script};
        C -- Load Data --> D[MySQL Database];
    end

    subgraph Data Visualization
        D -- Query Data --> E[Power BI];
    end

    E -- Interactive Dashboards --> F(End User);
    note right of F: End-to-End Python, MySQL, Power BI Project

    %% Subtitle (rendered as a note for context)
    note right of F: End-to-End Python, MySQL, Power BI Project
