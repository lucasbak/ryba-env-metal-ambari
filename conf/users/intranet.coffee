{merge} = require 'masson/lib/misc'

module.exports =
  proxy: null
  yum:
    config: proxy: null # 'http://noevipncp2a.edf.fr:3128'
    # copy: "#{__dirname}/yum_intranet/*.repo"
    copy: "#{__dirname}/intranet/*.repo"
  curl:
    check: false
    config: noproxy: ['localhost', '127.0.0.1', '.hadoop']
  ntp:
    servers: ['ntp1.edf.fr']
  hdp:
    hue_smtp_host: 'mailhost.der.edf.fr'
  ambari: {}
  ryba:
    hdp_repo: false

