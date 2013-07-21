#
#Plivo: Script to make outBound message from a valid Plivo Number
#
#usage: shell> sh outbound_sms_curl.sh
#

AUTH_ID=YOUR_AUTH_ID
AUTH_TOKEN=YOUR_AUTH_TOKEN


curl -L -u $AUTH_ID:$AUTH_TOKEN https://api.plivo.com/v1/Account/$AUTH_ID/Message/ \
-H "Content-type: application/json" \
-X POST \
-d '{
	"src" : "PLIVO_DID_NUMBER",
	"dst" : "DESTINATION_NUMBER", 
	"text" : "your text body", 
	"type" : "sms", 
	"url" : "absolute URL (DO NOT use localhost) for callback URL", 
	"method" : "POST/GET"
}'


#Example
#
# curl -L -u $AUTH_ID:$AUTH_TOKEN https://api.plivo.com/v1/Account/$AUTH_ID/Message/ \
#-H "Content-type: application/json" \
#-X POST \
#-d '{
#	"src" : "1443123456",
#	"dst" : "DESTINATION_NUMBER", 
#	"text" : "your text body", 
#	"type" : "sms", 
#	"url" : "https://callbacl_url", 
#	"method" : "GET"
#}'

#"url" must be an absolute URL to which with the status of the message is sent
