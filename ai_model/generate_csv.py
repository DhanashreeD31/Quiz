import pandas as pd

data = {
    "Question": [
        "What is Newton's First Law?",
        "What is the derivative of sin(x)?",
        "What is the pH of pure water?"
    ],
    "Topic": ["Physics", "Mathematics", "Chemistry"],
    "Difficulty": ["Easy", "Medium", "Easy"],
    "Correct_Attempts": [3, 2, 5],
    "Wrong_Attempts": [1, 2, 0],
    "Time_Taken": [12, 15, 10]
}

df = pd.DataFrame(data)
df.to_csv("synthetic_quiz_data.csv", index=False)

print("CSV file created successfully!")
