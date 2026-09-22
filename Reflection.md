# Reflection: Working with AI for Documentation

**Student:** Rachna Lekh  
**Course:** BDA400 - Data Science Tools and Techniques  
**Date:** September 2026  

Using ChatGPT to help organize the documentation was really helpful for getting started, especially for setting up the headers and table layouts in the README and R Markdown file. It gave me a good starting structure for listing inputs, outputs, and requirements without having to design everything from scratch. 

However, some of the initial suggestions were not accurate for a simple R project. The first README draft included sections for continuous integration and contributing guidelines that belong in huge software packages, not a single analytical script. I had to remove those sections and rewrite the example usage so it actually ran our script properly. The AI also did not set up the relative file path for saving the PNG chart correctly, so I had to fix that chunk myself in RStudio before knitting.

The biggest thing I learned about verifying AI-generated material is that you cannot assume the code or output numbers are correct. I made sure to run `coffee_sales_summary.R` line by line in RStudio, confirmed the seed generated exactly 200 rows, and re-calculated the product revenue totals in a spreadsheet to verify that every number matched down to the cent. 

Next time, I will improve my prompts by being much more specific right from the start. Instead of just asking for a general README, I will tell the model upfront that this is a single reproducible script using synthetic data, so I do not have to spend as much time stripping out irrelevant software sections.
