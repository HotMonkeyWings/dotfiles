pidof trello > /dev/null
[$? -eq 0] || trello &

something = $(pidof Discord)
[-z $something] || Discord &
