
# docker-cetntos7-sshd

## setup

- clone後にSSHで認証に使うキーを下記においてください。
  - please, put your ssh public key (id_rsa.pub) in working directory.

```
ex.
git clone git@github.com:o-kazuhide-takahashi/docker-cetntos7-sshd.git
cd docker-cetntos7-sshd
cp -p ~/.ssh/id_rsa.pub .
```

## run

```
docker run --privileged -d --name mycentos7 --hostname mycentos7 --restart=always centos:sshdenable /sbin/init
```
