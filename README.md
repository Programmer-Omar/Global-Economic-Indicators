# End-to-End Data Pipeline: Global Economic Indicators

## Data Acquisition, Cleaning, SQL Upload, and Analysis with Python and MySQL

This project demonstrates a complete end-to-end data pipeline built to analyze global economic trends across more than 200 countries over a 15-year period (2010–2025). Using Python in Google Colab, I accessed a Kaggle dataset through the Kaggle API, performed thorough data cleaning (including handling missing values), and uploaded the processed data into a MySQL database. From there, I conducted structured queries to explore economic indicators such as inflation, interest rates, GDP, and more.

# Global Economic Indicators

This project provides an end-to-end solution for collecting, processing, and visualizing global economic data.

```mermaid
graph TD
    subgraph Data Acquisition
        A[Kaggle API] --> B[Colab - Python Script]
    end

    subgraph Data Processing & Storage
        B --> C[Clean & Transform in Python]
        C --> D[MySQL Database]
    end

    subgraph Data Visualization
        D --> E[Power BI]
    end

    E --> F[End User - Interactive Dashboards]

