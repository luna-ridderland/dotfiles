temp="/tmp/img.png"


playerctl -p spotify --follow metadata --format '{{mpris:artUrl}}' | while read -r url; do
    curl -s "$url" -o "$temp"
    echo "$temp"
done