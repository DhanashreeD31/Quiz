import pandas as pd
import numpy as np

# Load the dataset
file_path = "synthetic_quiz_data.csv"  # Ensure this file is inside 'ai_model' folder
df = pd.read_csv(file_path)

# Display first few rows to verify data
print("Original Data:")
print(df.head())

# Convert categorical data (e.g., topic, difficulty) to numerical format if needed
df['Difficulty'] = df['Difficulty'].map({'Easy': 0, 'Medium': 1, 'Hard': 2})

# Fill missing values if any
df.fillna(0, inplace=True)

# Add a column for quiz score percentage
df["Accuracy"] = df["Correct_Attempts"] / (df["Correct_Attempts"] + df["Wrong_Attempts"] + 1)  # Avoid division by zero

# Save cleaned dataset
df.to_csv("processed_quiz_data.csv", index=False)

print("Preprocessing Complete. Processed data saved as 'processed_quiz_data.csv'.")
