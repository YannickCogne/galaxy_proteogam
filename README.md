# galaxy_proteogam
## Create galaxy storage docker 

`docker create -v /export --name galaxy-store ycogne/galaxy_proteogam /bin/true`
## Launch Galaxy

`docker run  -d --volumes-from galaxy-store -v/c/Users/YC/Desktop:/backup --privileged=true  -p 8080:80 -p 8021:21 -p 8800:8800 -p 8022:22 -p 9002:9002 ycogne/galaxy_proteogam`
## Load Backup

`docker run  --rm  --volumes-from galaxy-store -v/c/Users/YC/Desktop:/backup --privileged=true  -p 8080:80 -p 8021:21 -p 8800:8800 -p 8022:22 ycogne/galaxy_proteogam bash -c "duplicity --no-encryption --force file:///backup/backup /export " `

## Pull all docker needed 
`/galaxy-central/docker_pulling.sh`

