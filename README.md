# elasticsearch-backups
Wrapper script over elasticsearch-dump. For convenient creation of complete backups of data from the Elasticsearch server (including data, mappings, analyzers).

### Installation
```
git clone git@github.com:AleksandrovEugen/elasticsearch-backups.git
cd elasticsearch-backups
npm i
```

### Usage example:

`./run.sh twitter http://elastic:root@127.0.0.1:9200`

**twitter** - index name  
**elastic** - ES basic auth username  
**root** - ES basic auth password  