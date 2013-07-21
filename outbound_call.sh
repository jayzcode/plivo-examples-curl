#
# Plivo: Script to make outbound call
#
# usage: shell> sh call_curl.sh
#
#

AUTH_ID=YOUR_AUTH_ID
AUTH_TOKEN=YOUR_AUTH_TOKEN


curl -L -u $AUTH_ID:$AUTH_TOKEN https://api.plivo.com/v1/Account/$AUTH_ID/Call/ \
-H "Content-type: application/json" \
-X POST \
-d '{
	"to" : "YOUR_TO_NUMBER", 
	"from" : "YOUR_FROM_NUMBER", 
	"answer_url" : "absolute URL (DO NOT use localhost) that returns XML"
}'



#
#Example:
#
#curl -L -u $AUTH_ID:$AUTH_TOKEN https://api.plivo.com/v1/Account/$AUTH_ID/Call/ \
#-H "Content-type: application/json" \
#-X POST 
#-d '{
#	"to" : "9876543210", 
#	"from" : "0123456789", 
#	"answer_url" : "https://s3.amazonaws.com/plivosamplexml/speak_url.xml"
#}'

# Do not prefix "+" with "to" or "from" number
