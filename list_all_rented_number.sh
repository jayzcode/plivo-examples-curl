#
#Plivo: Script to get list of all rented numbers in account
#
#usage: shell> sh list_all_rented_number.sh
#

AUTH_ID=YOUR_AUTH_ID
AUTH_TOKEN=YOUR_AUTH_TOKEN

curl -L -u $AUTH_ID:$AUTH_TOKEN https://api.plivo.com/v1/Account/$AUTH_ID/Number/ \
-X GET
