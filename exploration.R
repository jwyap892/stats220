library(tidyverse)

logged_data <- read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vQko11OP2_I4G12Ylji5HYcM0UL-TSw4fQq42MFxJAW4xRg79L3PxWHO7Og408CtogvMh1AyGEXJRmj/pub?gid=1914997729&single=true&output=csv")
latest_data <- logged_data %>%
  rename(
    meal_type = What.type.of.meal.is.this.,
    calories = Estimated.calories.for.this.meal,
    source = Where.did.this.meal.come.from.,
    category = What.is.the.main.category.of.this.meal.
  )
head(latest_data)
mean(latest_data$calories)
min(latest_data$calories)
max(latest_data$calories)
nrow(latest_data)

latest_data %>%
  ggplot(aes(x = meal_type)) +
  geom_bar()
latest_data %>%
  ggplot(aes(x = category)) +
  geom_bar()
latest_data %>%
  ggplot(aes(x = category)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 20, hjust = 1))
latest_data %>%
  ggplot(aes(x = category)) +
  geom_bar(fill = "#FFC5D3") +
  labs(
    title = "Distribution of Meal Categories",
    x = "Meal Category",
    y = "Count"
  ) +
  theme(axis.text.x = element_text(angle = 20, hjust = 1))
