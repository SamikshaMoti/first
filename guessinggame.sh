echo "Welcome To The GUESSING GAME"
a=$(ls | wc -l)
function ANS {
echo "Guessed Correctly"
echo "Congrats You Have WON"
echo "ANS - $a"
}
let f1=0 
while [[ $f1 -eq 0 ]]
do
 echo "How many files are there in Current Directory?"
 echo "Please Guess - "
 read response
      let found=0
      while [[ $found -eq 0 ]]
      do
         if [[ $a -eq $response ]]
         then
           ANS
           let found=1
           let f1=1
         elif [[ $a -lt  $response ]]
         then
           echo "Guess to High"
           let found=1
         elif [[ $a -gt  $response ]]
         then
           echo "Guess to Low"
           let found=1
         fi
      done   
done
echo "GAME OVER"
