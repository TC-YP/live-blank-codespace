name=$1
admin="TC-YP"

read -p "What is your name? " name

if [[ -z ${name} ]] ; then
    echo "Please enter your name!"
elif [[ ${name} == ${admin} ]] ; then
    echo "Welcome back, Pebble"
else
    echo "Hi there, ${name}"
fi