# -------------------------------------------------------------------------------------
# Biostat Coursework
# Two-Way ANOVA
# -------------------------------------------------------------------------------------

# NOTE:
# The original dataset used in this analysis was provided as a part of a Biostatistics
# course and is not included here for academic integrity.
# The CSV file used in this script is local and not shared in this repository, thus
# synthetic data is included to preserve the structure of the original dataset.

# synthetic data
Medicine <- rep(c("Antibiotics", "Regular", "Herbal"), each = 9)
Point <- rep(c("Point A", "Point B", "Point C"), times = 3)
Sales <- round(rnorm(27, mean = 200, sd = 50))
data <- data.frame(Medicine = factor(Medicine), Point = factor(Point),
                   Sales = Sales)

# check data structure
nrow(data)
colnames(data)
str(data)
head(data)

# perform two-way ANOVA
anova_model <- aov(Sales ~ Medicine * Point, data = data)
summary(anova_model)

# interaction plot
interaction.plot(data$Point, data$Medicine, data$Sales)
