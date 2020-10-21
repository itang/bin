# envsubst

sample1:

```
❯ cat a.env.tpl
home: ${HOME}
java_home: ${JAVA_HOME}

~/test via ⬢ v14.14.0
❯ envsubst < a.env.tpl > a.env

~/test via ⬢ v14.14.0
❯ cat a.env
home: /home/itang
java_home: /home/itang/.asdf/installs/java/zulu-15.27.17
```

If config template contains dollar sign $ which should not be substituted then list all used variables as parameter of envsubst so that only those are replaced.

envsubst '$USER_NAME $PASSWORD $KEY' < /nginx.conf.template > /etc/nginx/nginx.conf