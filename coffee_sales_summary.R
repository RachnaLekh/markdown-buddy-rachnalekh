# coffee_sales_summary.R
# Author: Rachna Lekh
# Purpose: Generate synthetic coffee sales data, calculate revenue by product,
#          and export results to CSV and a visualization PNG.

library(dplyr)
library(ggplot2)

# Set seed for reproducibility
set.seed(42)

# Define product menu and unit prices
products <- c("Espresso", "Americano", "Latte", "Cappuccino", "Mocha")
prices <- c(Espresso = 3.00, Americano = 3.50, Latte = 4.50, Cappuccino = 4.25, Mocha = 4.75)

# Simulate 200 sales transactions
sampled_products <- sample(products, size = 200, replace = TRUE)
units_sold <- sample(1:5, size = 200, replace = TRUE)
unit_prices <- unname(prices[sampled_products])

# Create the primary sales data frame
sales <- data.frame(
  date = sample(seq(as.Date("2026-01-01"), as.Date("2026-03-31"), by = "day"), size = 200, replace = TRUE),
  product = sampled_products,
  units = units_sold,
  unit_price = unit_prices,
  revenue = units_sold * unit_prices,
  stringsAsFactors = FALSE
)

# Summarize total revenue per product using dplyr
revenue_by_product <- sales %>%
  group_by(product) %>%
  summarise(total_revenue = sum(revenue)) %>%
  arrange(desc(total_revenue))

# Save summary table to disk
write.csv(revenue_by_product, "revenue_by_product.csv", row.names = FALSE)

# Generate bar chart using ggplot2
revenue_plot <- ggplot(revenue_by_product, aes(x = reorder(product, -total_revenue), y = total_revenue)) +
  geom_col(fill = "#6F4E37", width = 0.6) +
  geom_text(aes(label = paste0("$", format(round(total_revenue, 2), nsmall = 2))), vjust = -0.5, size = 3.8) +
  labs(
    title = "Total Revenue by Coffee Product",
    subtitle = "Synthetic sales transactions (n = 200, seed = 42)",
    x = "Product",
    y = "Total Revenue ($)"
  ) +
  theme_minimal(base_size = 12) +
  theme(
    plot.title = element_text(face = "bold", hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5, color = "gray40"),
    panel.grid.minor = element_blank()
  )

# Save chart to PNG
ggsave("revenue_by_product.png", plot = revenue_plot, width = 7, height = 4.5, dpi = 300)
