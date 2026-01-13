# Single-File R Shiny Website

A complete R Shiny website with HTML, CSS, and JavaScript - all in one file!

## Features

 **All in One File** - Everything is in `app.R`  
 **HTML Structure** - Built with Shiny's HTML functions  
 **Embedded CSS** - Beautiful styling included  
 **JavaScript** - Interactive features and animations  
 **R Server Logic** - Dynamic plots and calculations  

## How to Run

### Method 1: RStudio (Easiest)
1. Open `app.R` in RStudio
2. Click the **"Run App"** button (top right)
3. Your browser will open automatically!

### Method 2: R Console
1. Open R or RStudio
2. Run:
```r
setwd("C:/Users/aydin/OneDrive/Desktop/newproject")
library(shiny)
runApp()
```

### Method 3: Command Line
```powershell
cd C:\Users\aydin\OneDrive\Desktop\newproject
& "C:\Program Files\R\R-4.5.2\bin\Rscript.exe" -e "library(shiny); runApp()"
```

## What's Included

- **Interactive Counter** - Click button to increment (JavaScript)
- **Alert Messages** - JavaScript alerts
- **Dynamic Plot** - R-generated plot that updates with slider
- **User Input** - Text and number inputs
- **Calculations** - Square calculations
- **Styling** - Modern gradient design with CSS
- **Animations** - Smooth transitions and effects

## File Structure

```
newproject/
└── app.R       # Everything in one file!
└── README.md   # This file
```

That's it! Just one file to run everything.

## Customization

Edit `app.R` to:
- Change colors in the CSS section
- Add new buttons and features
- Modify the JavaScript functions
- Add more plots or calculations
- Change the HTML structure

## Requirements

- R installed
- Shiny package: `install.packages("shiny")`

## Next Steps

- Deploy to shinyapps.io for free hosting
- Add more interactive features
- Connect to databases
- Add more visualizations
