#!/usr/bin/env bash
##
# This section should match your Makefile
##
PY=python
PELICAN=pelican
PELICANOPTS=

BASEDIR=$(pwd)
INPUTDIR=$BASEDIR/content
OUTPUTDIR=$BASEDIR/output
CONFFILE=$BASEDIR/pelicanconf.py

###
# Don't change stuff below here unless you are sure
###

SRV_PID=$BASEDIR/srv.pid
PELICAN_PID=$BASEDIR/pelican.pid

function usage(){
  echo "usage: $0 port"
  echo "This starts pelican in debug and reload mode and then launches"
  echo "A pelican.server to help site development. It doesn't read"
  echo "your pelican options so you edit any paths in your Makefile"
  echo "you will need to edit it as well"
  exit 3
}

function alive() {
  kill -0 $1 >/dev/null 2>&1
}

function start_up(){
  local port=$1
  echo "Starting up Pelican and pelican.server"
  $PELICAN --debug --autoreload -r $INPUTDIR -o $OUTPUTDIR -s $CONFFILE $PELICANOPTS &
  pelican_pid=$!
  if ! alive $pelican_pid ; then
    echo "Pelican didn't start. Is the pelican package installed?"
    return 1
  fi
  echo $pelican_pid > $PELICAN_PID
  cd $OUTPUTDIR
  echo 'Pelican processes now running in background, starting pelican.server.'
  $PY -m pelican.server $port
  cd $BASEDIR
  kill $pelican_pid
}

###
#  MAIN
###
[[ ($# -eq 0) || ($# -gt 1) ]] && usage
port=''
[[ $# -eq 1 ]] && port=$1

start_up
