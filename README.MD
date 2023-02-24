# MARIADB 

## Optimizations

### Disabling access time

It's unlikely you'll need to record file access time on a database server, and mounting your filesystem with this disabled can give an easy improvement in performance. To do so, use the noatime option.

If you want to keep access time for log files or other system files, these can be stored on a separate drive.

## TO-DO:

[x] Test ssl connection
[x] test host mode on raspi