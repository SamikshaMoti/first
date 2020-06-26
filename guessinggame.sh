echo "Welcome TO The GUESSING GAME"
a=$(ls -la | wc -l)
let b=$a-1
function ANS {
echo "Guessed Correctly"
echo "Congrats You Have WON"
echo "ANS - $b"
}
let f1=0 
while [[ $f1 -eq 0 ]]
do
 echo "How many files are there in Current Directory?"
 echo "Please Guess - "
 read response
     if [[ $response =~ ^[0-9]*([0-9]) ]] && [[ ! $response =~ ^[0-9]*([a-zA-Z]) ]]
     then
      let found=0
      while [[ $found -eq 0 ]]
      do
         if [[ $b -eq $response ]]
         then
           ANS
           let found=1
           let f1=1
         elif [[ $b -lt  $response ]]
         then
           echo "Guess to High"
           let found=1
         elif [[ $b -gt  $response ]]
         then
           echo "Guess to Low"
           let found=1
         fi
      done   
     else
      echo "Enter Valid Number"
     fi  
done
echo "GAME OVER"
