set WEATHER_SIMPLE "$HOME/.cache/weather_simple.txt"
mkdir -p (dirname $WEATHER_SIMPLE)

function fetch_weather
    # Get location by IP
    set IPINFO (curl -s https://ip-api.com/line/)
    set LAT (echo $IPINFO | string split \n | sed -n '9p')
    set LON (echo $IPINFO | string split \n | sed -n '10p')

    if test -z "$LAT" -o -z "$LON"
        set LOCATION Gateshead
    else
        set LOCATION "$LAT,$LON"
    end
    set WEATHER (curl -s "https://wttr.in/$LOCATION?format=%c+%t+%m\n")

    if test -n "$WEATHER"
        echo $WEATHER >$WEATHER_SIMPLE
    else
        echo "Failed to parse weather"
    end
end
