#1.
student <- c("Student1", "Student2", "Student3", "Student4", "Student5")
print(student)

#2.
assign("Marks", c(85, 92, 78, 67, 90))
print(Marks)

#3.
cat("marks of student 3 : ",Marks[3],"\n")

#4.
studentdetails = c(student,Marks)
print(studentdetails)

#5.
cat("Length of the details :",length(studentdetails))

#6.
min_mark <- min(Marks)
print(min_mark)
print(student[which(Marks == min_mark)])

#7.
avg_marks <- mean(Marks)
max_avg_student <- student[which.max(Marks)]
print(avg_marks)
print(max_avg_student)

#8.
total_marks <- sum(Marks)

#9.
mean_marks <- mean(Marks)

#10.
sd_marks <- sd(Marks)

#11.
sorted_marks <- sort(Marks)

#16.
student_details <- list(
  registration_number = "ST12345",
  name = "John Doe",
  courses_registered = 5,
  marks_in_subjects = c(90,85,78,92,88)
)

#17.
student_name <- student_details$name
cat("Student name:", student_name, "\n")

#18.
reg_number_and_marks <- list(
  registration_number = student_details$registration_number,
  marks = student_details$marks_in_subjects
)
cat("Registration number:", reg_number_and_marks$registration_number, "\n")
cat("Marks:", reg_number_and_marks$marks, "\n")

#19.
first_course_mark <- student_details$marks_in_subjects[1]
cat("Mark in the first course:", first_course_mark, "\n")

#20.
student_details$marks_in_subjects[length(student_details$marks_in_subjects)] <- student_details$marks_in_subjects[length(student_details$marks_in_subjects)] + 5
cat("Updated marks in the last course:", student_details$marks_in_subjects[length(student_details$marks_in_subjects)], "\n")


#21.
# Create a vector named Rohith with three values.
# Create a vector named Bharath with three values.
# Create a vector named Kevin with three values.
Rohith <- c(85, 90, 78)
Bharath <- c(92, 88, 76)
Kevin <- c(78, 85, 89)
# Create a matrix named 'Marks' with the above vectors as rows
Marks <- rbind(Rohith,Bharath,Kevin)
print(Marks)
# Create vectors for Names and Headings
Names <- c("Rohith", "Bharath", "Kevin")
Headings <- c("CAT-1", "CAT-2", "FAT")
# Assign Names vector as row names and Headings vector as column names to the Marks Matrix
rownames(Marks) <- Names
colnames(Marks) <- Headings
# Print the Marks matrix with row and column names
print(Marks)

#22.
Total <- rowSums(Marks)
print(Total)
Final_marks <- cbind(Marks ,Total)
print(Final_marks)
avg_score <- round(mean(Final_marks),2)
print(avg_score)
avg_row <- c("Average", rep(avg_score, 3), sum(Total))
Final_marks <- rbind(Final_marks, avg_row)

# Print the Final_Marks matrix
cat("\nFinal_Marks matrix with Total and Average:\n")
print(Final_marks)

#PART D
data <- data.frame(
  Name = c("Student1", "Student2", "Student3", "Student4", "Student5"),
  Event1 = c(8, 0, 10, 7, 0),
  Event2 = c(0, 9, 0, 6, 10),
  Event3 = c(10, 7, 8, 0, 0),
  Event4 = c(5, 0, 0, 8, 6)
)
print(data)

data$Total_Score <- rowSums(data[,-1])
print(data)

# Find the maximum score and the name of the participant who scored it
max_score <- max(data$Total_Score)
max_score_name <- data$Name[data$Total_Score == max_score]
print(max_score)
print(max_score_name)

# Calculate the average score for each event and append it as a new row
avg_scores <- colMeans(data[, -1], na.rm = TRUE)
data <- rbind(data, c("Average", avg_scores, NA))

# View the data frame with the average scores
cat("Data Frame with Average Scores:\n")
print(data)

# Access scores of participants in Event2
event2_scores <- data$Event2
cat("Scores in Event2:\n")
print(event2_scores)

# Access scores of participants in Event2 using index (3rd column)
event2_scores_by_index <- data[, 3]
cat("Scores in Event2 using index:\n")
print(event2_scores_by_index)

# Extract the score of the third participant in Event3
participant3_event3_score <- data$Event3[3]
cat("Score of the third participant in Event3:", participant3_event3_score, "\n")

# Extract the scores of the first and second participant in all events
first_second_participants_scores <- data[1:2, -1]
cat("Scores of the first and second participants in all events:\n")
print(first_second_participants_scores)

# Display names and total scores of all participants
names_total_scores <- data[, c("Name", "Total_Score")]
cat("Names and Total Scores of all participants:\n")
print(names_total_scores)

# Set the "Name" column as the row names
rownames(data) <- data$Name
data$Name <- NULL  # Remove the "Name" column
cat("Data Frame with 'Name' as Row Index:\n")
print(data)

# Find the names of students who participated in Event3
event3_participants <- data$Name[data$Event3 > 0]
cat("Participants in Event3:\n")
print(event3_participants)


# Find names of students with total scores above the average
average_total_score <- mean(data$Total_Score)
above_average_names <- data$Name[data$Total_Score > average_total_score]
cat("Names with Total Score Above Average:\n")
print(above_average_names)

# Save the data frame to a CSV file without row numbers
write.csv(data, "Events.csv", row.names = FALSE)
cat("Data saved to 'Events.csv' without row numbers.\n")

