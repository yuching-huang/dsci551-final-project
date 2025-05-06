import pandas as pd

# Load the CSV file
df = pd.read_csv("pixar_films.csv")

# Drop the 'number' column
df = df.drop(columns=["number"])

# Save the modified DataFrame to a new file
df.to_csv("pixar_films_updated.csv", index=False)