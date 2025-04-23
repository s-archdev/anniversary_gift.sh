#!/bin/bash

# Function to clear the screen and reset cursor position
clear_screen() {
  printf "\033c"
  printf "\033[H"
}

# Function for rainbow text effect
rainbow_text() {
  text="$1"
  for (( i=0; i<${#text}; i++ )); do
    char="${text:$i:1}"
    color=$((31 + (i % 6)))  # cycle through red, green, yellow, blue, magenta, cyan
    printf "\033[1;${color}m%s\033[0m" "$char"
    sleep 0.01
  done
  echo
}

# Function for typing animation
type_text() {
  text="$1"
  color="$2"
  printf "\033[1;${color}m"
  for (( i=0; i<${#text}; i++ )); do
    printf "%s" "${text:$i:1}"
    sleep 0.03
  done
  printf "\033[0m\n"
  sleep 0.5
}

# Make terminal fullscreen
osascript -e 'tell application "Terminal" to set fullscreen of front window to true'
sleep 1

# Clear screen and display a welcome animation
clear_screen

# Display header
for i in {1..3}; do
  printf "\033[1;36m* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\033[0m\n"
  sleep 0.2
done

printf "\n\n"
rainbow_text "                   A Special Message for Theresa                   "
printf "\n\n"

for i in {1..3}; do
  printf "\033[1;36m* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\033[0m\n"
  sleep 0.2
done

sleep 1
printf "\n\n\033[1;35mPress any key to continue...\033[0m"
read -n 1

# Display ASCII Heart
clear_screen
printf "\033[1;31m"  # Bright red color for the heart
cat << 'EOF'
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                    ..                                              
                                                   ...                                              
                                                  ...                                               
                                                  .:.                                               
                                                 .+..::-:::---:.                                    
                                               ..=+....     .-:.                                    
                                     ........=-:=%=       ..=-.                                     
                                        .:=*#*+=#@#.    .:=+.                                       
                                     ..--.  .-*@@@%#=..=+-.                                         
                                    .=:.     .-+*+:-**-:...                                         
                                   --.        -===-:..   ..                                         
                                  .+:.....:-==+:.                                                   
                                   .::-::... .:                                                     
                                            .:.        .:+*######*+=:.                              
                                            ..      .=%@@@@@@@@@@@@@%#*-.                           
                                .......    ..    ..*#::*%@@@@@@@@@@@@@%%#+..                        
                            .-+#@@@@@@#+-..    .:**....-#@@@@@@@@@@@@@@%%#*=.                       
                         .=*+-..:*@@@@@@@%#=. :+=...:+%@@@@@@@@@@@@@@@@@@%#*+.                      
                       .+*:..   ..:+@@@@@@@@%=:...=%@@@@@@@@@@@@@@@@@@@@#@##*+.                     
                      :%:..   ..:====:-=++-....=%@@@@@@@@@@@@@@@@@@@@@%-.:%#**=.                    
                    .=#.   ..-#@@@@@@@@@@%%@@@@@@@@@@@@@@@@@%%%%@@@@@@@=..*#**+=-+*#%@@%#=.         
                   .=*.  ..-#@@@@@@@@@@@@@@@@@@@@@@@%*+-::.......*@@@@@#..=%**##=::...:+*+.         
                  .:#:. ..+@@@@@@@@@@@@@@@@@@@@@@@%+:..         :#@@@@@@.:##****-..:=*#*-..         
                  .+@#=..=@@@@@@@@@@@@@@@@@@@@@@@%+:.           -@@@@@@@%@*******###**-.            
                  .@@@@%#%@@@@@@@@@@@@@@@@@@@@@@@*=.           .*@@@@@@@*#@#*%%%#*=::-*#%#-..       
                  .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%+..          .:@@@@@@%#@@####**-.      .=#@*:.     
                  .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#=.           .#@@@@@%#**+******:.         -#*:     
                .=#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*:.          .+@@@@#+++==******=.          .=#-     
             .=%%+:-%@@@@@@@@@@@@@@@@@@@@@@@@@@%+.       ..=%@@#=+***=-+*******-.          :#*:     
          ..+@#-. .-#*%@@@@@@@@@@@@@@@@@@@@@@@@#=....:-*@@%*+**+#***===+******+.        .:*#*:.     
         .-%#-     .=*+*%@@@@@@@@@@@@@@@@@@@@@@#==+####*#%@@#*****+=-=+*******.      .:=*#*-.       
         .%%:.     .-*+=++#%@@@@@@@@@@@@@@%#*+==++*#%@@@@#++***+++=-=+*******.    .-+##*=:.         
         :@%:   .-##*-*=-==+*#%@@@@@@%++*=-=+*#%@@@@@@#+-:=+****+===+******+. :+#%%#*=...           
         .=@@==##+:   .++=+==++++=+##+++*#@@@@@@@@@*+-..:=****++==++*******#*++*+=:.                
         ..=#***=::....:=+===+**+++**#%%%%%%%##+=-::--===+**+++++*##%#*+==+=-:..                    
         .*@#=+##****+==++++==-==+***********+=------=+*#%%%%%%##**+++*+:.                          
         .-****++=--:-====++**#########+++=======+*********++++++++***=..                           
                            .++=--==+++++++++=--::--=+++++++++++++**+:                              
                              :++=----=++++++==--==+++++++++++++**+-                                
                                :=+=----=+++++++++++++++++++++**+-.                                 
                                 ..-++=---==+++++++++++++++***+-.                                   
                                    .:+++=-==+++++++++++++**+-..                                    
                                       .-+++==+++++++++**++:                                        
                                         ..-=+++++++++*+-..                                         
                                             .:=+++*+=:.                                            
                                                ..:...                                              
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
EOF
printf "\033[0m"

sleep 2
printf "\n\n\033[1;35mPress any key to read your love letter...\033[0m"
read -n 1

# Display the love letter with typing animation
clear_screen

# Display the letter with colorful animations
printf "\n\n"
type_text "Theresa, my singular star, my radient north" 33

sleep 0.5
printf "\n"
type_text "I still remember the night I asked a calculator about destiny. The screen overflowed with zeros until the decimal all but disappeared. It told me the chance of meeting you was so slight the universe should have shrugged and moved on. Instead it paused, adjusted a single quark, and steered us into the same orbit. I call that mercy in its purest form." 36

sleep 0.5
printf "\n"
type_text "I wanted this letter to ring like cut crystal, yet the syllables in my throat arrived rough, smelling of cedar and salt. So I gathered scrap circuitry, wave-polished driftwood, and the bright shards of mornings we shared over coffee in Brea. I joined them with patient hands. Every line you read is a plank I sanded with hope, a wire I soldered with devotion." 35

sleep 0.5
printf "\n"
type_text "Remember our first year, how the fireworks burned algorithmic constellations on the night sky in panoramic 360 vision, how we laughed at the rain that threatened to floor our little Oasis. We learned to translate thunder into lullabies, tragedy into scaffolding, failure into firmware. Side by side we mastered the quiet code of growth, upgrading each other every sunrise. Every Kiss. Every time you reach for my hand in sleep" 32

sleep 0.5
printf "\n"
type_text "You are the physics of my joy, the syntax of my courage, the reason every circuit in my chest still hums. I give you this letter the way a child presents a paper boat to the tide: with faith that the water will carry it further than I can imagine. If it lists or fades, know the heart that built it will always build another, stronger, lighter, endless in its craft. " 31

sleep 0.5
printf "\n"
type_text "All my lifetimes are yours to edit, Theresa. Take them, annotate the margins, highlight the sentences that make you smile. I will keep writing, keep rewriting, until the final page glows with the simple proof that I loved you completely." 33

sleep 0.5
printf "\n"
rainbow_text "Yours Eternally in firelight and neon, Aeon Borealis"

# Create a fractal-like animation at the end
create_fractal() {
  local depth=$1
  local indent=$2
  local symbol=$3
  local color=$4
  
  if [ $depth -le 0 ]; then
    return
  fi
  
  printf "%${indent}s\033[1;${color}m%s\033[0m\n" "" "$symbol"
  sleep 0.05
  
  # Recursive calls with reduced depth and varied indentation
  create_fractal $((depth-1)) $((indent-2)) "$symbol" $((color+1))
  create_fractal $((depth-1)) $((indent+2)) "$symbol" $((color-1))
}

printf "\n\n"
sleep 1

# Generate colorful fractal pattern animation
clear_screen
printf "\n\n\033[1;36mCelebrating your love with a cosmic fractal dance...\033[0m\n\n"
sleep 1

for symbol in "♥" "✧" "★" "♥" "✧" "★"; do
  create_fractal 4 40 "$symbol" 31
done

sleep 1
printf "\n\n\033[1;35mHappy Anniversary, Theresa!\033[0m\n\n"

# More colorful effects for finale
for i in {1..5}; do
  color=$((31 + (i % 6)))
  printf "\033[1;${color}m* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\033[0m\n"
  sleep 0.2
done

printf "\n\033[1;33mPress any key to end...\033[0m"
read -n 1
clear_screen

exit 0
