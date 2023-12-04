# Load necessary libraries
library(ggplot2)
library(gridExtra)
library(corrplot)
library(tidyverse)
library(ggthemes) # for theme_economist()


# Load the merged dataset
finalData <- read.csv("finalData.csv", stringsAsFactors = FALSE)

# Check the distribution and basic information of the dataset
print("Summary of the dataset:")
summary(finalData)

print("Structure of the dataset:")
str(finalData)

# Get the frequency distribution of PotentialFraud
print("Frequency distribution of PotentialFraud:")
freq <- table(finalData$PotentialFraud)
print(freq)

# Get the percentage distribution of PotentialFraud
print("Percentage distribution of PotentialFraud:")
percentage <- prop.table(freq) * 100
print(percentage)

# Convert PotentialFraud to a factor for visualization
finalData$PotentialFraud <- as.factor(finalData$PotentialFraud)

# Create a bar plot for PotentialFraud distribution
ggplot(finalData, aes(x = PotentialFraud)) +
  geom_bar() +
  ggtitle("Distribution of Potential Fraud") +
  xlab("Potential Fraud") +
  ylab("Count") +
  scale_y_continuous(labels = scales::comma)





### 2.2.2 Gender and Race ###

# Convert gender and race to factors 
finalData$Gender <- as.factor(finalData$Gender)
finalData$Race <- as.factor(finalData$Race)

# Check unique values
unique_values_gr <- sapply(finalData[,c('Gender', 'Race')], unique)
unique_values_gr

# Plot Gender and Race
gender_plot <- ggplot(finalData, aes(x = Gender)) +
  geom_bar() +
  theme_minimal() +
  scale_y_continuous(labels = scales::comma) +
  ggtitle('Gender Distribution')

race_plot <- ggplot(finalData, aes(x = Race)) +
  geom_bar() +
  theme_minimal() +
  scale_y_continuous(labels = scales::comma) +
  ggtitle('Race Distribution')

grid.arrange(gender_plot, race_plot, ncol = 1)


#2.2.3 Health Conditions

# Check unique values for health conditions
unique_values_hc <- sapply(finalData[,c('ChronicCond_Alzheimer', 
                                        'ChronicCond_Heartfailure', 
                                        'ChronicCond_KidneyDisease', 
                                        'ChronicCond_Cancer', 
                                        'ChronicCond_ObstrPulmonary', 
                                        'ChronicCond_Depression', 
                                        'ChronicCond_Diabetes', 
                                        'ChronicCond_IschemicHeart', 
                                        'ChronicCond_Osteoporasis', 
                                        'ChronicCond_rheumatoidarthritis', 
                                        'ChronicCond_stroke')], unique)
print(unique_values_hc)

# Calculate the correlation matrix
cor_matrix <- cor(finalData[,c('ChronicCond_Alzheimer', 
                               'ChronicCond_Heartfailure', 
                               'ChronicCond_KidneyDisease', 
                               'ChronicCond_Cancer', 
                               'ChronicCond_ObstrPulmonary', 
                               'ChronicCond_Depression', 
                               'ChronicCond_Diabetes', 
                               'ChronicCond_IschemicHeart', 
                               'ChronicCond_Osteoporasis', 
                               'ChronicCond_rheumatoidarthritis', 
                               'ChronicCond_stroke')], method="spearman")

# Create the correlation plot with coefficients displayed
corrplot(cor_matrix, method="shade", type="upper", order="hclust", 
         addCoef.col="black",  # Color of the coefficients
         number.cex=0.7,      # Font size of coefficients
         tl.cex = 0.7,        # Font size of variable names
         title="Correlation Plot of Health Conditions")


# Convert the wide dataset to a long format for easier plotting
finalData_long <- finalData %>%
  gather(key = "ChronicCondition", value = "Value", 
         c('ChronicCond_Alzheimer', 'ChronicCond_Heartfailure', 'ChronicCond_KidneyDisease', 
           'ChronicCond_Cancer', 'ChronicCond_ObstrPulmonary', 'ChronicCond_Depression', 
           'ChronicCond_Diabetes', 'ChronicCond_IschemicHeart', 'ChronicCond_Osteoporasis', 
           'ChronicCond_rheumatoidarthritis', 'ChronicCond_stroke'))

# Ensure that the Value column is a factor
finalData_long$Value <- as.factor(finalData_long$Value)

# Plot the data
finalData_long %>%
  ggplot(aes(x = Value, fill = Value)) +
  geom_bar(position = 'identity') +
  coord_flip() + 
  facet_wrap(~ChronicCondition, scales = "free", ncol = 3) +
  theme_minimal() +
  theme_economist() +
  theme(axis.title.x = element_blank(),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank()) +
  labs(fill = "Condition Status", y = "Frequency", x = "") +
  scale_fill_manual(values = c("1" = "#312876", "0" = "#7c9c86"), 
                    labels = c("1" = "Chronic", "0" = "No Chronic"))

##2.2.4 Financial Details


# Check distribution of financial columns
summary(finalData[,c('TotalClaimAmount', 'OPTotalAmount', 'Log_TotalClaimAmount', 'Log_IPTotalAmount', 'Log_OPTotalAmount')])

# Convert wide format to long for plotting
financial_long <- gather(finalData, key="FinancialType", value="Value", TotalClaimAmount, OPTotalAmount, Log_TotalClaimAmount, Log_IPTotalAmount, Log_OPTotalAmount)

# Create a histogram
ggplot(financial_long, aes(x=Value)) +
  geom_histogram(bins=30, fill="#062e3e", alpha=0.7) +
  facet_wrap(~FinancialType, scales="free") +
  theme_minimal() +
  theme_economist() +
  scale_y_continuous(labels = scales::comma) +  # Using scales::comma format for y-axis
  labs(x='Value', y='Frequency', title='Distribution of Financial Details')
