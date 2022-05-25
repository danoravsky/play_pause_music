while true
do
    if [[ "$(pmset -g | grep ' sleep')" == *"Safari"* ]];
        then osascript -e 'tell application "Music" to pause';
        else sleep 0.5 && osascript -e 'tell application "Music" to play'; 
    fi
    sleep 0.5
done