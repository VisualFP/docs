import matplotlib.pyplot as plt
import numpy as np

# Data for the project team's time spent per week (in hours)
weeks = list(range(1, 15))
lukas_hours = [17.75, 16.5, 18.5, 12.5, 17.5, 16, 16, 16.75, 17.25, 17.75, 21.75, 0, 0, 0]
jann_hours = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

# Weekly average target
weekly_average_target = 17.14

# Width of the bars
bar_width = 0.35

# Adjusting the positions for grouped bars
bar_positions1 = np.array(weeks)
bar_positions2 = np.array(weeks) + bar_width

# Plotting the bar chart with grouped bars
plt.figure(figsize=(10, 6))
plt.bar(bar_positions1, lukas_hours, width=bar_width, label='Lukas Streckeisen', alpha=0.7)
plt.bar(bar_positions2, jann_hours, width=bar_width, label='Jann Flepp', alpha=0.7)

# Plotting the target weekly average line
plt.axhline(y=weekly_average_target, color='r', linestyle='--', label='Weekly Average Target')

# Displaying labels and title
plt.xlabel('Weeks')
plt.ylabel('Hours')
plt.title('Time spent during the project')
plt.legend(loc='lower left', bbox_to_anchor=(0,-0.25))
plt.grid(True)
plt.xticks(range(1, 15))
plt.xlim(0.5, 14.75)

# Adding a text annotation for total time spent
plt.text(
    9.75,
    -3.5,
    f'Total Lukas Streckeisen: {sum(lukas_hours)} hours\nTotal Jann Flepp: {sum(jann_hours)} hours\nTotal both: {sum(lukas_hours) + sum(jann_hours)}',
    ha='left',
    va='center',
    bbox=dict(boxstyle='round', facecolor='white', edgecolor='lightgrey')
)

# Save the plot as a PNG file
plt.savefig('./static/time_spent.png', bbox_inches='tight')
