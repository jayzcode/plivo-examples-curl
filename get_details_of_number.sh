#
#Plivo: Script to get the details of rented numbers.
#
#usage: shell> sh get_details_of_number.sh
#


AUTH_ID=YOUR_AUTH_ID
AUTH_TOKEN=YOUR_AUTH_TOKEN
NUMBER=PLIVO_NUMBER

curl -L -u $AUTH_ID:$AUTH_TOKEN https://api.plivo.com/v1/Account/$AUTH_ID/Number/$NUMBER/ \
-X GET