echo -e "${green}[========================= Executing  Migrations =========================]${reset}"
chars="."
end=$((SECONDS+40))

while [ $SECONDS -lt $end ]; do
    sleep 0.5
    echo -en "${chars:$i:1}"
done

docker exec ms-auth npm run migration:run
docker exec ms-expenses npm run migration:run