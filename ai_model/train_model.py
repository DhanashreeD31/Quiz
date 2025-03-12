import pandas as pd
import numpy as np
import tensorflow as tf
from sklearn.model_selection import train_test_split
from tensorflow import keras
from tensorflow.keras import layers

# Load preprocessed data
file_path = "processed_quiz_data.csv"
df = pd.read_csv(file_path)

# Convert categorical columns into numerical values (One-Hot Encoding)
df = pd.get_dummies(df, columns=["Topic", "Difficulty"], drop_first=True)

# Features (X) and Target (y)
X = df.drop(columns=["Question"])  # Input features
y = df["Accuracy"]  # Target variable

# Splitting Data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Build a Simple Neural Network Model
model = keras.Sequential([
    layers.Dense(32, activation="relu", input_shape=(X_train.shape[1],)),
    layers.Dense(16, activation="relu"),
    layers.Dense(1, activation="sigmoid")  # Output: Accuracy Prediction
])

# Compile Model
model.compile(optimizer="adam", loss="mean_squared_error", metrics=["mae"])

# Train Model
model.fit(X_train, y_train, epochs=50, batch_size=8, validation_data=(X_test, y_test))

# Save the trained model
model.save("quiz_model.h5")

print("Model training complete. Model saved as 'quiz_model.h5'.")
