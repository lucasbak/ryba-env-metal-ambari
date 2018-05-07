
module.exports =
  # config:
  #   proxy: null
  #   curl:
  #     check: false
  #     config: noproxy: ['localhost', '127.0.0.1', '.ryba']
  #   profile:
  #     'proxy.sh': "" # Created by Vagrant proxy plugin
  #   hdp:
  #     hue_smtp_host: ''
  clusters: 'vagrant': services:
    'masson/core/yum':
      options:
        config: proxy: null
        repo:
          clean: "Cen*"
          source: "#{__dirname}/offline/centos.repo"
        epel:
          enabled: true
          url: null
          source: "#{__dirname}/offline/epel.repo"
    'masson/core/network':
      options:
        ifcfg:
          eth0:
            PEERDNS: 'yes' # Prevent dhcp-client to overwrite /etc/resolv.conf
          eth1:
            PEERDNS: 'yes' # Prevent dhcp-client to overwrite /etc/resolv.conf
    'masson/core/ntp':
      options:
        fudge: true
    'masson/commons/docker':
      options:
        repo:
          source: "#{__dirname}/offline/docker.repo"
    # 'masson/commons/mysql/server':
    #   config: mysql: server:
    #     repo:
    #       source: "#{__dirname}/offline/mysql.repo"
    # 'masson/commons/mariadb/server':
    #   config: mariadb: server:
    #     repo:
    #       source: "#{__dirname}/offline/mariadb.repo"
    #     name: 'mariadb-server'
    #     srv_name: 'Mariadb-server'
    #     chk_name: 'mariadb'
    'ryba/hdp':
      options:
        source: "#{__dirname}/offline/hdp.repo"
    'ryba/ambari/repo':
      options:
        source: "#{__dirname}/offline/ambari.repo"
    'ryba/mongodb/repo':
      options:
        source: "#{__dirname}/offline/mongodb.repo"
    'ryba/grafana/repo':
      options:
        source: "#{__dirname}/offline/grafana.repo"
