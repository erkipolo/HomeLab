[basic]
  kernel                                  # kernel security configuration
  repositories                            # repositories configuration
  upgrade                                 # upgrade distribution
  sudo-user                               # create a non root user
  spanish-support                         # setting language spanish
  admin-tools                             # sysadmin tools (tmux, vim, bash-completion)
[services]
  email-notification-enable               # enable service for e-mail notification via postfix
  upgrade-unattended-enable               # enable service for unattended upgrades
  monit-enable                            # enable service for monitoring resources via monit
  snmp-enable                             # enable service for monitoring resources via snmp
  dns-enable                              # enable service for dns via bind9
  web-enable                              # enable service for web via apache2
  database-enable                         # enable service for database via mariadb
  lamp-stack                              # stack (L)inux (A)pache (M)ariadb (P)hp
[secure]
  ssh-secure                              # secure service ssh
  web-secure                              # secure service web
[deployments]
  dns-edge                                # dns external
  dokuwiki                                # dokuwiki
[firewall]
  iptables-enable                         # Installing firewall via iptables
  iptables-ssh                            # add firewall rules for service ssh
  iptables-snmp                           # add firewall rules for service snmp
  iptables-dns                            # add firewall rules for service dns
  iptables-web                            # add firewall rules for service web
  iptables-policy                         # Setting default firewall policy
[hips]
  hips-enable                             # Installing host instruction prevention system via fail2ban
  hips-ssh                                # add hips supervition for service ssh
  hips-dns                                # add hips supervition for service dns
  hips-web                                # add hips supervition for service web
[notification]
  upgrade-unattended-notification         # notification by unattended upgrades with errors
  monit-notification                      # notification by reach resources over threshold
  hips-notification                       # notification by violation and action taken

