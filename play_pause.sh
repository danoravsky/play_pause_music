while true
do
    if [[ "$(pmset -g | grep ' sleep')" == *"Safari"* ]];
        then osascript -e 'tell application "Music" to pause';
        else sleep 2 && if [[ "$(pmset -g | grep ' sleep')" == *"Safari"* ]];
            then osascript -e 'tell application "Music" to pause';
            else osascript -e 'tell application "Music" to play'; 
        fi; 
    fi
    sleep 0.3
done