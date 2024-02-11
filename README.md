# Caller Scan Database Schema

## Executive Summary

This project focuses on the development and implementation of a robust database schema designed specifically for a Caller Scan system. The primary objective is to create a comprehensive platform that efficiently manages user interactions, emphasizing call activities, profile views, and subscription management. The schema encompasses various tables, including user details, login history, subscription types, call logs, and spam reports. Key features include profile views, notifications, and an automated spam blocking system.

## Database Structure

The database schema consists of multiple interconnected tables:

1. **User Table:** Stores user details and is linked to email addresses for effective user management.

2. **Subscription Table:** Tracks subscription details with a trigger mechanism for dynamic end dates.

3. **ProfileView Table:** Records profile views and generates notifications through the Profile_View_Notification table.

4. **Location and Contacts Tables:** Store user-related information for enhanced user profiling.

5. **Spam Table:** Logs reported spam, managed by the BlockList table.

6. **CallLog Table:** Records user calls, featuring a trigger for automatic call blocking based on spam reports.

## Data Modeling

The data modeling process involves intricate design components, and both EER (Enhanced Entity-Relationship) and UML (Unified Modeling Language) diagrams were created. The conceptual model was then mapped to a relational model with the necessary primary and foreign keys to ensure data integrity.

## Implementation

The database was fully implemented in MySQL, ensuring reliability and efficiency in handling the Caller Scan system's data requirements. Additionally, a prototype with eleven tables was implemented on the Neo4j NoSQL graph database to explore the feasibility of utilizing a NoSQL environment.

## Analytics and Integration

By connecting the database to Python, the system gains extensive analytics capabilities, as demonstrated in the study. This integration enables powerful data analysis and visualization, contributing to informed decision-making processes.

