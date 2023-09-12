# For Git hub command
# -------------------------------------
alias cpr='hub pull-request -p develop'
alias cis='hub issue create'
alias lpr='hub pr list'
alias lis='hub issue'
alias cop='hub pr checkout'
# ######################
# docker
# ##########################################
alias dc='docker-compose run webapp'
alias dcc="docker-compose exec webapp bundle exec rails c"
alias dct="docker-compose exec webapp bundle exec rubocop app/"
alias dct-j="./node_modules/.bin/eslint app/javascript/**/*.{js,vue}"
alias dcb="docker-compose build"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcs="docker-compose start"
alias dcst="docker-compose stop"
alias dcre="docker-compose restart"
alias dcm="docker-compose exec web bundle exec rake db:migrate"
alias dcms="docker-compose exec web bundle exec rake db:migrate:status"
alias dcr="docker-compose exec web bundle exec rake db:rollback step=1"
alias dp="docker ps"
alias da="docker attach"
alias de='(){docker exec -it $1 /bin/bash}'