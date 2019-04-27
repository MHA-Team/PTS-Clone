#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Author(s):  Admin9705
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
cloneclean () {
pgclonevars

tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Clone Clean
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Clone Clean deletes garbage files in your downloads folder per every
[$cloneminutes] minutes!

TORRENT USERS: Recommend that you set this number higher! If seeding,
Clone Clean will destory the seed files. Please set this number to a high
number of minutes. (IE - 1440 minutes = 1 day | 14440 minutes = 10 days)

WARNING: Do not set this too low because legitmate files!

Quitting? Type >>> exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
  read -p '↘️  Type Minutes (Mininum is 120) | PRESS [ENTER]: ' varinput < /dev/tty
  if [[ "$varinput" == "exit" || "$varinput" == "Exit" || "$varinput" == "EXIT" ]]; then clonestart; fi

  if [[ "$varinput" -lt "120" ]]; then cloneclean; fi

  echo "$varinput" > /var/plexguide/clone.clean
  ansible-playbook 



}
