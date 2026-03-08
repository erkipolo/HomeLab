[all]
  [debian]
    [debselfhosted]
      - repositories                    selfhosted debian repositories configuration
      [pveselfhosted]
        - repositories                  selfhosted proxmox repositories configuration
    - repositories                      debian repositories configuration
    - upgrade distribution              debian upgrade distribution
    - admin tools install               debian admin tools install
    - language spanish                  debian language spanish support
    - upgrade unattended                debian upgrade unattended install
    - sudo user                         debian sudo user with public key
    - secure ssh                        debian secure ssh service
    - hips install                      debian hips install
    - hips ssh supervision              debian hips ssh supervision
    - snmp                              debian snmp install
    - monitoring                        debian monitoring install
    [proxmox]
      - repositories                    proxmox repositories configuration
      - pam pve user                    proxmox pam pve user
    [server]
      - kernel security                 debian server kernel security configuration
      - email send only                 debian server e-mail notification install
      - upgrade unattended notification debian server upgrade unattended notification via e-mail
      - hips notification               debian server hips notification via e-mail
      - monitoring notification         debian server monitoring notification via e-mail
      - firewall install and ssh access debian server firewall install and add ssh access rules
      - firewall snmp access            debian server firewall add snmp access rules
      [lamp: web]
        - apache install                debian server apache install
        - apache module security        debian server apache security module
        - apache module evasive         debian server apache evasive module
        - firewall web access           debian server firewall add http(s) access rules
      [lamp: database]
        - mariadb install               debian server mariadb install
      [lamp]
        - php-fpm install               debian server lamp php install
        - php apache                    debian server lamp php install apache support
        - php mariadb                   debian server lamp php install mariadb support
        - php common dependencies       debian server lamp php common dependencies
        [nextcloud]
          - nextcloud install           debian server nextcloud install
          - nextcloud apache security   nextcloud rules exceptions for apache module security
        [wordpress]
          - wordpress                   debian server wordpress install
        [zabbix]
          - zabbix                      debian server zabbix install
