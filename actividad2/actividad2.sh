
GITHUB_USER=$GITHUB_USER

API_URL="https://api.github.com/users/$GITHUB_USER"
USER_DATA=$(curl -s $API_URL)

NAME=$(echo $USER_DATA | jq -r '.name')
ID=$(echo $USER_DATA | jq -r '.login')
CREATED_AT=$(echo $USER_DATA | jq -r '.created_at')

MESSAGE="Hola: $NAME User ID: $ID Cuenta fue creada el: $CREATED_AT"

LOG_DIR="/tmp/$(date +\%Y-\%m-\%d)"
LOG_FILE="$LOG_DIR/saludos.log"

echo $MESSAGE
echo $LOG_DIR
echo $LOG_FILE

mkdir -p "$LOG_DIR"
echo -e "$MESSAGE" > "$LOG_FILE"

CRON_JOB="*/5 * * * * /home/pabloq27/Escritorio/so1_actividades_201701081/actividad2"
(crontab -l ; echo "$CRON_JOB") | crontab -

echo "Script configurado y cronjob agregado."
