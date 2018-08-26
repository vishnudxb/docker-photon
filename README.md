# docker-photon
Docker container for running photon

[![](https://images.microbadger.com/badges/image/vishnunair/docker-photon.svg)](https://microbadger.com/images/vishnunair/docker-photon "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/vishnunair/docker-photon.svg)](https://microbadger.com/images/vishnunair/docker-photon "Get your own version badge on microbadger.com")

#### Pull the docker image and mount the volume to expose files from container to your host

```

docker run -v ~/docker-photon/tmp:/tmp -d --name photon vishnunair/docker-photon:latest

```

#### Exec to the container and run the below commands:

```
docker exec -it photon bash

```

#### photon.py usage:

```

usage: photon.py [options]

  -u --url              root url
  -l --level            levels to crawl
  -t --threads          number of threads
  -d --delay            delay between requests
  -c --cookie           cookie
  -r --regex            regex pattern
  -s --seeds            additional seed urls
  -e --export           export formatted result
  -o --output           specify output directory
  --keys                extract secret keys
  --exclude             exclude urls by regex
  --timeout             http requests timeout
  --ninja               ninja mode
  --update              update photon
  --dns                 dump dns data
  --only-urls           only extract urls
  --user-agent          specify user-agent(s)

```

#### For eg: Crawl a website in depth

```

bash-4.4# python photon.py -u https://reddit.com -l 4 -t 100

```

#### For eg: Dumping DNS data

```

bash-4.4# python photon.py -u https://reddit.com --dns

```

For more info, please check the [link](https://github.com/s0md3v/Photon)
