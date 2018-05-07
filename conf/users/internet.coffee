{merge} = require 'masson/lib/misc'

module.exports =
  proxy: null
  yum:
    copy: "#{__dirname}/internet/*.repo"
  hdp:
    hue_smtp_host: 'smtp.free.fr'



