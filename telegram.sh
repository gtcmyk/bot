#!/bin/bash
sendtext() {
curl -X POST https://api.telegram.org/bot8306092474:AAHwnEISCDvYktD0veP4TdaChEKI3xQAZDg/sendMessage -d chat_id=-1002729668307 -d text="$1"
}
senddoc() {
curl -X POST https://api.telegram.org/bot8306092474:AAHwnEISCDvYktD0veP4TdaChEKI3xQAZDg/sendDocument -F chat_id=-1002729668307 -F document=@"$1"
}

if [ "$1" = "doc" ]; then
senddoc "$2"
fi
if [ "$1" = "text" ]; then
sendtext "$2"
fi
