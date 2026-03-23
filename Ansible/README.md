## **Execution Order**
### **Basic**
1. **kernel:**`setting kernel security configuration`
2. **repositories:**`setting repositories configuration`
3. **upgrade:**`distribution upgrade`
4. **sudo-user:**`create a non root user`
5. **spanish-support:**`setting language spanish`
6. **admin-tools:**`sysadmin tools (tmux, vim, bash-completion)`

### **Services**
1. **email-notification-enable:**`enable service for e-mail notification via postfix`
2. **upgrade-unattended-enable:**`enable service for unattended upgrades`
3. **monit-enable:**`enable service for monitoring resources via monit`
4. **snmp-enable:**`enable service for monitoring resources via snmp`
5. **dns-enable:**`enable service for dns via bind9`
6. **web-enable:**`enable service for web via apache2`
7. **database-enable:**`enable service for database via mariadb`
8. **lamp-stack:**`stack (L)inux (A)pache (M)ariadb (P)hp`

### **Secure**
1. **ssh-secure:**`secure service ssh`
2. **web-secure:**`secure service web (apache)`

### **Deployments**
1. **dns-edge:**`dns external`
2. **dokuwiki:**`dokuwiki`

### **Firewall**
1. **iptables-enable:**`Installing firewall via iptables`
2. **iptables-ssh:**`add firewall rules for service ssh`
3. **iptables-snmp:**`add firewall rules for service snmp`
4. **iptables-dns:**`add firewall rules for service dns`
5. **iptables-web:**`add firewall rules for service web`
6. **iptables-policy:**`Setting default firewall policy`

### **HIPS**
1. **hips-enable:**`Installing host instruction prevention system via fail2ban`
2. **hips-ssh:**`add hips supervition for service ssh`
3. **hips-dns:**`add hips supervition for service dns`
4. **hips-web:**`add hips supervition for service web`

### **Notification**
1. **upgrade-unattended-notification:**`notification by unattended upgrades with errors`
2. **monit-notification:**`notification by reach resources over threshold`
3. **hips-notification:**`notification by violation and action taken`
