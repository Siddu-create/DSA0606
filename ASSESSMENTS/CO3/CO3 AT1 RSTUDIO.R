# ==============================
# Q3 - PIE CHART
# ==============================

# Create dataset directly
data_q3 <- data.frame(
  Candidate = c("A", "B", "C", "D"),
  Votes = c(50, 30, 15, 5)
)

# Calculate percentage and angle
data_q3$Percentage <- data_q3$Votes / sum(data_q3$Votes) * 100
data_q3$Angle <- data_q3$Votes / sum(data_q3$Votes) * 360

# Display calculations
print(data_q3)

# Install package if required
# install.packages("ggplot2")

library(ggplot2)

# Create pie chart
ggplot(data_q3, aes(x = "", y = Votes, fill = Candidate)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  geom_text(
    aes(
      label = paste0(
        Candidate, "\n",
        Votes, " votes\n",
        round(Angle, 1), "°"
      )
    ),
    position = position_stack(vjust = 0.5)
  ) +
  labs(
    title = "Class Election Votes",
    fill = "Candidate"
  ) +
  theme_void()