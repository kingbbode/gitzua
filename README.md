# Git User Manager, GITZUA!!

Git 사용자를 관리하기 위한 Command Line Interface 를 제공.

## 요약

- SSH KEY 등록을 기반으로 사용자를 관리하고, git cli 이용하여 repository 의 사용자를 변경해주는 아주 간단한 기능을 제공.
- SSH 기반의 URL로 Clone된 Repository만 가능
 
## 기능

![create](/images/gitzua.png)

#### create

```$xslt
gitzua create
```

- 사용자 정보를 기록하고, 정보 기반으로 SSh Key를 생성.

![create](/images/create.png)

- `~/.ssh/config` 에 호스트 자동가 등록 됨.

![create](/images/config.png)

- 생성된 public key `~/.ssh/id_rsa_gitzua_$name.pub` 를 github 연동 계정에 등록.

![create](/images/register-ssh.png)

#### list

```$xslt
gitzua list
```

- Git Repository Directory 에서 User List 를 출력. 
- 현재 Directory 의 사용 User 를 확인할 수 있음.

![create](/images/list.png)

#### use

```$xslt
gitzua use [user name]
```

- Git Repository Directory 의 User 를 변경.

##### 변경 전

![create](/images/use-b.png)

##### 변경 후

![create](/images/use-a.png)

---

## TODO

- HTTPS 형식 URL 호환.

> 상당히 미숙한 쉘 프로그램입니다. 많은 도움 부탁드립니다.