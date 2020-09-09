# ssh 配置

## 1. 生成公私钥

```sh
# ssh-keygen -t [rsa / ed25519] -C "email@email.com"

Generating public/private rsa key pair.
Enter file in which to save the key (/home/binacs/.ssh/id_rsa): /home/binacs/.ssh/xxx
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/binacs/.ssh/xxx.
Your public key has been saved in /home/binacs/.ssh/xxx.pub.
The key fingerprint is:
SHA256:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx test@test.com
The key's randomart image is:
+---[RSA 2048]----+
|X= .  ..o        |
|*.=  . . o       |
|.o oE   . .      |
|.. .. ....       |
|. .  ..=S  .     |
|      *++.+ .    |
|     . B=B o     |
|      + X*o .    |
|       o+B+o     |
+----[SHA256]-----+
```

## 2. 配置 `~/.ssh/config`

```
Host github
  HostName github.*
  User xxxxxx@gmail.com
  IdentityFile ~/.ssh/github

Host host1
  HostName host1.cn
  User xxxxxx@host1.email
  IdentityFile ~/.ssh/host1

Host host2
  HostName host2.cn
  User xxxxxx@host2.email
  IdentityFile ~/.ssh/host2

```

## 3. ssh agent

```sh
ssh-agent -s

ssh-add ~/.ssh/github

ssh-add ~/.ssh/host1

ssh-add ~/.ssh/host2
```

## 4. TEST

```sh
ssh -T git@github.com
```
