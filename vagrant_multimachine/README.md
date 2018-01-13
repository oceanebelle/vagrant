Lessons Learned: 

1. Don't use synced folders in multimachine. If you stop one of the machines the sync folders of the other machines are affected. 

2. The file provisioner only runs during provision. If you need to change some settings, then either ssh and modify the file or provision again.

Zookeeper
 - Found in /usr/share/zookeeper