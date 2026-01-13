# Single-File R Shiny Website
# Everything in one file - HTML, CSS, JavaScript, and R code
# Just run: shiny::runApp() or click "Run App" in RStudio

library(shiny)

# Define UI with embedded HTML, CSS, and JavaScript
ui <- fluidPage(
  
  # Embedded CSS Styles
  tags$head(
    tags$style(HTML("
      /* Global Styles */
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      
      body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        min-height: 100vh;
        padding: 20px;
      }
      
      .container {
        max-width: 1200px;
        margin: 0 auto;
        background: white;
        border-radius: 15px;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.3);
        overflow: hidden;
        padding: 30px;
      }
      
      .header {
        text-align: center;
        color: #667eea;
        margin-bottom: 30px;
        padding-bottom: 20px;
        border-bottom: 3px solid #667eea;
      }
      
      .header h1 {
        font-size: 2.5em;
        margin-bottom: 10px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
      }
      
      .content-section {
        margin: 30px 0;
        padding: 20px;
        background: #f8f9fa;
        border-radius: 10px;
        border-left: 4px solid #667eea;
      }
      
      .content-section h2 {
        color: #667eea;
        margin-bottom: 15px;
      }
      
      .content-section p {
        line-height: 1.8;
        color: #555;
        margin-bottom: 10px;
      }
      
      .button-group {
        display: flex;
        gap: 15px;
        margin: 20px 0;
        flex-wrap: wrap;
      }
      
      .custom-btn {
        padding: 12px 25px;
        background: #667eea;
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 1em;
        transition: all 0.3s ease;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      }
      
      .custom-btn:hover {
        background: #764ba2;
        transform: translateY(-2px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
      }
      
      .custom-btn:active {
        transform: translateY(0);
      }
      
      .input-group {
        margin: 15px 0;
      }
      
      .input-group label {
        display: block;
        margin-bottom: 5px;
        color: #667eea;
        font-weight: bold;
      }
      
      .input-group input,
      .input-group textarea {
        width: 100%;
        padding: 10px;
        border: 2px solid #e9ecef;
        border-radius: 5px;
        font-size: 1em;
        transition: border-color 0.3s ease;
      }
      
      .input-group input:focus,
      .input-group textarea:focus {
        outline: none;
        border-color: #667eea;
      }
      
      .result-box {
        margin-top: 20px;
        padding: 15px;
        background: #e7f3ff;
        border-radius: 8px;
        border-left: 4px solid #667eea;
        display: none;
      }
      
      .result-box.show {
        display: block;
        animation: fadeIn 0.5s ease-in;
      }
      
      @keyframes fadeIn {
        from {
          opacity: 0;
          transform: translateY(-10px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }
      
      .plot-container {
        margin-top: 20px;
        padding: 15px;
        background: white;
        border-radius: 8px;
        border: 2px solid #e9ecef;
      }
      
      .info-card {
        background: white;
        padding: 20px;
        border-radius: 10px;
        margin: 15px 0;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
      }
      
      .counter-display {
        font-size: 3em;
        text-align: center;
        color: #667eea;
        font-weight: bold;
        margin: 20px 0;
      }
    "))
  ),
  
  # Main HTML Structure
  div(class = "container",
      
      # Header
      div(class = "header",
          h1("My R Shiny Website"),
          p("Built with R Shiny, HTML, CSS, and JavaScript - All in One File!")
      ),
      
      # Interactive Section
      div(class = "content-section",
          h2("Interactive Features"),
          
          div(class = "button-group",
              actionButton("btn_counter", "Click Counter", class = "custom-btn"),
              actionButton("btn_alert", "Show Alert", class = "custom-btn"),
              actionButton("btn_calculate", "Calculate", class = "custom-btn")
          ),
          
          div(id = "counter-display", class = "counter-display", "0"),
          
          div(id = "result-box", class = "result-box",
              h3("Result:"),
              textOutput("result_text")
          )
      ),
      
      # Input Section
      div(class = "content-section",
          h2("User Input"),
          
          div(class = "input-group",
              tags$label("Enter a number:"),
              numericInput("number_input", NULL, value = 10, min = 1, max = 100)
          ),
          
          div(class = "input-group",
              tags$label("Enter your name:"),
              textInput("name_input", NULL, value = "", placeholder = "Your name here")
          ),
          
          div(class = "button-group",
              actionButton("btn_greet", "Greet Me", class = "custom-btn"),
              actionButton("btn_square", "Calculate Square", class = "custom-btn")
          )
      ),
      
      # Plot Section
      div(class = "content-section",
          h2("Dynamic Plot"),
          p("Move the slider to see the plot update in real-time:"),
          sliderInput("plot_range", "Select range:", 
                     min = 1, max = 50, value = 20, step = 1),
          div(class = "plot-container",
              plotOutput("dynamic_plot")
          )
      ),
      
      # Info Section
      div(class = "info-card",
          h2("About This Website"),
          p("This is a single-file R Shiny application that demonstrates:"),
          tags$ul(
              tags$li("HTML structure using Shiny functions"),
              tags$li("Embedded CSS for styling"),
              tags$li("JavaScript for interactivity"),
              tags$li("R server logic for calculations and plots")
          ),
          p("Everything is in one file (app.R) - just run it and go!")
      )
  ),
  
  # Embedded JavaScript
  tags$script(HTML("
    // Wait for Shiny to be ready
    $(document).on('shiny:connected', function(event) {
      console.log('Shiny connected! JavaScript is working.');
      
      // Initialize counter
      let clickCount = 0;
      
      // Counter button functionality
      $('#btn_counter').on('click', function() {
        clickCount++;
        $('#counter-display').text(clickCount);
        
        // Add animation
        $('#counter-display').css('animation', 'none');
        setTimeout(function() {
          $('#counter-display').css('animation', 'pulse 0.3s ease-in-out');
        }, 10);
      });
      
      // Alert button
      $('#btn_alert').on('click', function() {
        alert('Hello! This is a JavaScript alert.\\n\\nShiny, HTML, CSS, and JavaScript are all working together!');
      });
      
      // Calculate button
      $('#btn_calculate').on('click', function() {
        const num = $('#number_input').val() || 10;
        const result = num * num;
        Shiny.setInputValue('calc_result', result);
        $('#result-box').addClass('show');
      });
      
      // Greet button
      $('#btn_greet').on('click', function() {
        const name = $('#name_input').val() || 'Guest';
        alert('Hello, ' + name + '! Welcome to the website!');
      });
      
      // Square calculation
      $('#btn_square').on('click', function() {
        const num = $('#number_input').val() || 10;
        const square = num * num;
        Shiny.setInputValue('square_result', square);
        $('#result-box').addClass('show');
      });
      
      // Input validation with visual feedback
      $('#number_input, #name_input').on('input', function() {
        const $input = $(this);
        if ($input.val() && $input.val().length > 0) {
          $input.css('border-color', '#28a745');
        } else {
          $input.css('border-color', '#e9ecef');
        }
      });
      
      // Smooth scroll for better UX
      $('html, body').css('scroll-behavior', 'smooth');
    });
    
    // Add pulse animation
    var style = document.createElement('style');
    style.textContent = `
      @keyframes pulse {
        0% { transform: scale(1); }
        50% { transform: scale(1.1); }
        100% { transform: scale(1); }
      }
    `;
    document.head.appendChild(style);
    
    console.log('Custom JavaScript loaded successfully!');
  "))
)

# Define Server Logic
server <- function(input, output, session) {
  
  # Reactive counter (server-side)
  counter_value <- reactiveVal(0)
  
  observeEvent(input$btn_counter, {
    # JavaScript handles the display, but we can also track server-side
    counter_value(counter_value() + 1)
  })
  
  # Calculate result
  observeEvent(input$calc_result, {
    output$result_text <- renderText({
      paste("The square of your number is:", input$calc_result)
    })
  })
  
  # Square result
  observeEvent(input$square_result, {
    output$result_text <- renderText({
      paste("The square of", input$number_input, "is:", input$square_result)
    })
  })
  
  # Dynamic plot
  output$dynamic_plot <- renderPlot({
    x <- 1:input$plot_range
    y <- x^2
    
    plot(x, y, 
         type = "l", 
         lwd = 3,
         col = "#667eea",
         main = paste("Quadratic Function: y = x² (x = 1 to", input$plot_range, ")"),
         xlab = "x",
         ylab = "y = x²",
         cex.main = 1.2,
         cex.lab = 1.1)
    
    # Add grid
    grid(col = "lightgray", lty = "dotted")
    
    # Add points
    points(x, y, pch = 19, col = "#764ba2", cex = 0.8)
  })
  
  # Greet functionality
  observeEvent(input$btn_greet, {
    name <- ifelse(input$name_input == "", "Guest", input$name_input)
    showNotification(
      paste("Hello,", name, "! Welcome to the website!"),
      type = "message",
      duration = 3
    )
  })
}

# Run the application
shinyApp(ui = ui, server = server)

