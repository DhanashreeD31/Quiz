import tensorflow as tf

# Load the trained model
model = tf.keras.models.load_model("quiz_model.h5")

# Convert the model to TFLite format
converter = tf.lite.TFLiteConverter.from_keras_model(model)
tflite_model = converter.convert()

# Save the converted model
with open("quiz_model.tflite", "wb") as f:
    f.write(tflite_model)

print("Model conversion complete. Saved as 'quiz_model.tflite'.")
