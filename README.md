# End-to-End Data Pipeline: Global Economic Indicators

## Data Acquisition, Cleaning, SQL Upload, and Analysis with Python and MySQL

This project demonstrates a complete end-to-end data pipeline built to analyze global economic trends across more than 200 countries over a 15-year period (2010–2025). Using Python in Google Colab, I accessed a Kaggle dataset through the Kaggle API, performed thorough data cleaning (including handling missing values), and uploaded the processed data into a MySQL database. From there, I conducted structured queries to explore economic indicators such as inflation, interest rates, GDP, and more.

## Project Overview

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
'''

## Project Steps

### 1. Set Up the Environment
* Tools Used: Visual Studio Code (VS Code), Python, SQL (MySQL and PostgreSQL)
* Goal: Create a structured workspace within VS Code and organize project folders for smooth development and data handling.

2. Set Up Kaggle API
API Setup: Obtain your Kaggle API token from Kaggle by navigating to your profile settings and downloading the JSON file.
Configure Kaggle:
Place the downloaded kaggle.json file in your local .kaggle folder.
Use the command kaggle datasets download -d <dataset-path> to pull datasets directly into your project.
