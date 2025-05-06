# ChatDB: Natural Language Interface to SQL and NoSQL Databases

**Final Project for DSCI551 — Spring 2025**

---

## 🧠 Project Overview

ChatDB is an interactive web-based application that enables users to interact with relational (MySQL) and non-relational (MongoDB) databases using natural language queries.
Built with Streamlit and powered by OpenAI's GPT API, ChatDB interprets user input and translates it into executable SQL or MongoDB commands.

This project fulfills the requirements set by the [DSCI 551 Project Guideline (Spring 2025)](./551-sp25-project-guideline.pdf).

---

## 🚀 Features

- **Natural Language Interface**: Ask questions or issue commands in plain English.
- **MySQL Support**: Automatically generate and run SQL queries using PyMySQL.
- **MongoDB Support**: Convert natural language into PyMongo commands, supporting aggregation, joins, and updates.
- **Dynamic Schema Awareness**: Tailored prompts for three datasets (`pixar_movies`, `beers`, `stolen_vehicles_db`).
- **Real-Time Query Execution**: Displays live query results from an EC2-hosted database instance.

---

## 💻 UI Demo

The app is built with [Streamlit](https://streamlit.io) and provides an intuitive, form-based interface for:

- Selecting database type (MySQL / MongoDB)
- Choosing a dataset
- Inputting natural language queries
- Viewing generated code and execution results

---

## 🗃️ Datasets Used

1. **Pixar Movies**
   - Tables: `pixar_films`, `box_office`, `genres`, `pixar_people`, `public_response`, `academy`
2. **Beers**
   - Tables: `Beers`, `Bars`, `Drinkers`, `Sells`, `Likes`, `Frequents`
3. **Stolen Vehicles**
   - Tables: `stolen_vehicles`, `make_details`, `locations`

Each dataset includes at least two tables to support join operations.
