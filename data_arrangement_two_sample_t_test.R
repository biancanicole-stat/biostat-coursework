# -------------------------------------------------------------------------------------
# Biostat Coursework
# Arranging Data & Two Sample T-test (Unequal Variance)
# -------------------------------------------------------------------------------------

# NOTE:
# The original dataset used in this analysis was provided as a part of a Biostatistics
# course and is not included here for academic integrity.
# The synthetic data below preserves the structure of the original dataset.

set.seed(123)

# arranging data
salary <- round(rnorm(29, mean = 52000, sd = 6000))
department <- sample(1:3, size = 29, replace = TRUE)
df <- data.frame(Salary = salary, Department = department)

# subset salaries by department
x <- df$Salary[df$Department == 1]
y <- df$Salary[df$Department == 2]
z <- df$Salary[df$Department == 3]

# summary stats
summary(x)
summary(y)
summary(z)

# arranged data
dept_salaries <- split(df$Salary, df$Department)
dept_salaries

# perform Welch's two-sample t-test (unequal variances)
# compares mean salaries between Department X and Department Z
x <- round(rnorm(9, mean = 47000, sd = 5000))
z <- round(rnorm(10, mean = 52000, sd = 6000))
t.test(x, z, alternative = "two.sided", var.equal = FALSE)
