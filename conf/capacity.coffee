# /usr/bin/node node_modules/ryba/bin/capacity_ambari -c ./conf/config.coffee -c ./conf/uid_gid.coffee -c ./conf/capacity.coffee -c ./conf/user.coffee -c ./conf/config.coffee -c ./conf/uid_gid.coffee -c ./conf/user.coffee -c ./conf/config.coffee -c ./conf/uid_gid.coffee -c ./conf/user.coffee -c ./conf/config.coffee -c ./conf/uid_gid.coffee -c ./conf/capacity.coffee -c ./conf/user.coffee -o ./conf/capacity_ambari.coffee -w -p /data/1,/data/2

module.exports = 'nodes':
  'master01.metal.ryba': 'services':
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_nn': 'hdfs_site': 'dfs.namenode.name.dir': [ '/var/hdfs/name' ]
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_client': 'hdfs_site': 'dfs.replication': 3
    'vagrant:ryba-ambari-takeover/hadoop/yarn_rm':
      'yarn_site':
        'yarn.scheduler.minimum-allocation-mb': 256
        'yarn.scheduler.maximum-allocation-mb': 1024
        'yarn.scheduler.minimum-allocation-vcores': 1
        'yarn.scheduler.maximum-allocation-vcores': 2
      'capacity_scheduler': 'yarn.scheduler.capacity.resource-calculator': 'org.apache.hadoop.yarn.util.resource.DominantResourceCalculator'
  'master02.metal.ryba': 'services':
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_nn': 'hdfs_site': 'dfs.namenode.name.dir': [ '/var/hdfs/name' ]
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_client': 'hdfs_site': 'dfs.replication': 3
    'vagrant:ryba-ambari-takeover/hadoop/yarn_rm':
      'yarn_site':
        'yarn.scheduler.minimum-allocation-mb': 256
        'yarn.scheduler.maximum-allocation-mb': 1024
        'yarn.scheduler.minimum-allocation-vcores': 1
        'yarn.scheduler.maximum-allocation-vcores': 2
      'capacity_scheduler': 'yarn.scheduler.capacity.resource-calculator': 'org.apache.hadoop.yarn.util.resource.DominantResourceCalculator'
    'vagrant:ryba-ambari-takeover/hadoop/mapred_client': 'mapred_site':
      'mapreduce.map.memory.mb': '256'
      'mapreduce.reduce.memory.mb': '512'
      'yarn.app.mapreduce.am.resource.mb': 512
      'yarn.app.mapreduce.am.command-opts': '-Xmx409m'
      'mapreduce.map.java.opts': '-Xmx204m'
      'mapreduce.reduce.java.opts': '-Xmx409m'
      'mapreduce.task.io.sort.mb': '102'
      'mapreduce.map.cpu.vcores': 1
      'mapreduce.reduce.cpu.vcores': 1
    'vagrant:ryba-ambari-takeover/tez': 'tez_site':
      'tez.am.resource.memory.mb': 512
      'tez.task.resource.memory.mb': '256'
      'tez.runtime.io.sort.mb': '102'
  'master03.metal.ryba': 'services':
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_client': 'hdfs_site': 'dfs.replication': 3
    'vagrant:ryba-ambari-takeover/tez': 'tez_site':
      'tez.am.resource.memory.mb': 512
      'tez.task.resource.memory.mb': '256'
      'tez.runtime.io.sort.mb': '102'
    'vagrant:ryba-ambari-takeover/hive/client': 'hive_site':
      'hive.tez.container.size': '256'
      'hive.tez.java.opts': '-Xmx204m'
  'edge01.metal.ryba': 'services':
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_client': 'hdfs_site': 'dfs.replication': 3
    'vagrant:ryba-ambari-takeover/hadoop/mapred_client': 'mapred_site':
      'mapreduce.map.memory.mb': '256'
      'mapreduce.reduce.memory.mb': '512'
      'yarn.app.mapreduce.am.resource.mb': 512
      'yarn.app.mapreduce.am.command-opts': '-Xmx409m'
      'mapreduce.map.java.opts': '-Xmx204m'
      'mapreduce.reduce.java.opts': '-Xmx409m'
      'mapreduce.task.io.sort.mb': '102'
      'mapreduce.map.cpu.vcores': 1
      'mapreduce.reduce.cpu.vcores': 1
    'vagrant:ryba-ambari-takeover/tez': 'tez_site':
      'tez.am.resource.memory.mb': 512
      'tez.task.resource.memory.mb': '256'
      'tez.runtime.io.sort.mb': '102'
    'vagrant:ryba-ambari-takeover/hive/client': 'hive_site':
      'hive.tez.container.size': '256'
      'hive.tez.java.opts': '-Xmx204m'
    'vagrant:ryba-ambari-takeover/hive/beeline': 'hive_site':
      'hive.tez.container.size': '256'
      'hive.tez.java.opts': '-Xmx204m'
  'worker01.metal.ryba': 'services':
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_client': 'hdfs_site': 'dfs.replication': 3
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_dn': 'hdfs_site': 'dfs.datanode.data.dir': [
      '/data/1/hdfs/data'
      '/data/2/hdfs/data'
    ]
    'vagrant:ryba-ambari-takeover/hadoop/yarn_nm': 'yarn_site':
      'yarn.nodemanager.resource.percentage-physical-cpu-limit': '100'
      'yarn.nodemanager.resource.memory-mb': 1024
      'yarn.nodemanager.vmem-pmem-ratio': '2.1'
      'yarn.nodemanager.resource.cpu-vcores': 2
      'yarn.nodemanager.local-dirs': [
        '/data/1/yarn/local'
        '/data/2/yarn/local'
      ]
      'yarn.nodemanager.log-dirs': [
        '/data/1/yarn/log'
        '/data/2/yarn/log'
      ]
    'vagrant:ryba-ambari-takeover/hbase/regionserver': 'heapsize': '128m'
  'worker02.metal.ryba': 'services':
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_client': 'hdfs_site': 'dfs.replication': 3
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_dn': 'hdfs_site': 'dfs.datanode.data.dir': [
      '/data/1/hdfs/data'
      '/data/2/hdfs/data'
    ]
    'vagrant:ryba-ambari-takeover/hadoop/yarn_nm': 'yarn_site':
      'yarn.nodemanager.resource.percentage-physical-cpu-limit': '100'
      'yarn.nodemanager.resource.memory-mb': 1024
      'yarn.nodemanager.vmem-pmem-ratio': '2.1'
      'yarn.nodemanager.resource.cpu-vcores': 2
      'yarn.nodemanager.local-dirs': [
        '/data/1/yarn/local'
        '/data/2/yarn/local'
      ]
      'yarn.nodemanager.log-dirs': [
        '/data/1/yarn/log'
        '/data/2/yarn/log'
      ]
    'vagrant:ryba-ambari-takeover/hbase/regionserver': 'heapsize': '128m'
  'worker03.metal.ryba': 'services':
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_client': 'hdfs_site': 'dfs.replication': 3
    'vagrant:ryba-ambari-takeover/hadoop/hdfs_dn': 'hdfs_site': 'dfs.datanode.data.dir': [
      '/data/1/hdfs/data'
      '/data/2/hdfs/data'
    ]
    'vagrant:ryba-ambari-takeover/hadoop/yarn_nm': 'yarn_site':
      'yarn.nodemanager.resource.percentage-physical-cpu-limit': '100'
      'yarn.nodemanager.resource.memory-mb': 1024
      'yarn.nodemanager.vmem-pmem-ratio': '2.1'
      'yarn.nodemanager.resource.cpu-vcores': 2
      'yarn.nodemanager.local-dirs': [
        '/data/1/yarn/local'
        '/data/2/yarn/local'
      ]
      'yarn.nodemanager.log-dirs': [
        '/data/1/yarn/log'
        '/data/2/yarn/log'
      ]
    'vagrant:ryba-ambari-takeover/hbase/regionserver': 'heapsize': '128m'

# master01.metal.ryba
#   Number of core: 1
#   Number of partitions: 2
#   Memory Total: 5.663 GB
#   Memory System: 0 B

# master02.metal.ryba
#   Number of core: 1
#   Number of partitions: 2
#   Memory Total: 3.702 GB
#   Memory System: 0 B

# master03.metal.ryba
#   Number of core: 1
#   Number of partitions: 2
#   Memory Total: 3.702 GB
#   Memory System: 0 B

# edge01.metal.ryba
#   Number of core: 1
#   Number of partitions: 2
#   Memory Total: 992.637 MB
#   Memory System: 0 B

# worker01.metal.ryba
#   Number of core: 2
#   Number of partitions: 2
#   Memory Total: 1.796 GB
#   Memory System: 128 MB
#   HBase RegionServer
#     Memory HBase: 128 MB
#   YARN NodeManager
#     Memory YARN: 1 GB
#     Number of Cores: 2
#     Number of Containers: 4
#     Memory per Containers: 256 MB
#   YARN NodeManager Process heapsize: 256 MB
#   HDFS Datanode Process heapsize: 256 MB

# worker02.metal.ryba
#   Number of core: 2
#   Number of partitions: 2
#   Memory Total: 1.796 GB
#   Memory System: 128 MB
#   HBase RegionServer
#     Memory HBase: 128 MB
#   YARN NodeManager
#     Memory YARN: 1 GB
#     Number of Cores: 2
#     Number of Containers: 4
#     Memory per Containers: 256 MB
#   YARN NodeManager Process heapsize: 256 MB
#   HDFS Datanode Process heapsize: 256 MB

# worker03.metal.ryba
#   Number of core: 2
#   Number of partitions: 2
#   Memory Total: 1.796 GB
#   Memory System: 128 MB
#   HBase RegionServer
#     Memory HBase: 128 MB
#   YARN NodeManager
#     Memory YARN: 1 GB
#     Number of Cores: 2
#     Number of Containers: 4
#     Memory per Containers: 256 MB
#   YARN NodeManager Process heapsize: 256 MB
#   HDFS Datanode Process heapsize: 256 MB
