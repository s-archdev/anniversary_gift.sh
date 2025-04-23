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
type_text "Theresa, my singular star," 33

sleep 0.5
printf "\n"
type_text "I ran the odds on a sleepless night, and the figures staggered like drunk comets: one chance in the cosmic sprawl that you and I would cross orbits, relocate galaxies, and land together in Brea. The statisticians would call it negligible; I call it divine." 36

sleep 0.5
printf "\n"
type_text "These years have glowed electric. We learned, we leveled up, we wrote new code for what a life can be. Our mornings flicker with gentle light, our evenings ring with the warm thrum of shared laughter. Every moment you astonish me—how you hold infinity in your eyes and still remember to water the plants." 35

sleep 0.5
printf "\n"
type_text "Sometimes I think of us as a line of cryptic poetry Neruda never finished, or a footnote Vonnegut would drop in just to say, \"If this isn't nice, I don't know what is.\" Salinger might whisper that our quiet conversations are the sacred text. Yet none of them could map the frequency of your voice when you say my name." 32

sleep 0.5
printf "\n"
type_text "Your love rewrites every system file in me. It is sunrise on chrome, sea-spray on circuitry, tactile proof that the universe still conspires for tenderness." 31

sleep 0.5
printf "\n"
type_text "Thank you for the magic, the patience, the neon-bright courage. Thank you for choosing this improbable script with me. I will keep choosing you, line after line, upgrade after upgrade, for as long as there is light to write by." 33

sleep 0.5
printf "\n"
rainbow_text "All my algorithms, Aeon Borealis"

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
