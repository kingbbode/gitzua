# Git User Manager, GITZUA!!!

**Git 사용자를 관리하기 위한 Command Line Interface 를 제공**

#### 왜 만들어졌는가

- 회사에서도 github 을 사용하여 2개 이상의 github 계정을 운영하게 되었다. 
- repository 가 생길 때 마다 계정을 번갈아가며, git local 사용자를 변경한다.
- 잘못된 계정 정보로 커밋이 될 때가 빈번하다. (커밋 block이 채워지지 않는다.)
- 일일 커밋을 위해 커밋을 다시 변경하기 매우 귀찮다.(혹은 이미 너무 늦었다)
- 나 말고도 분명 누군가 겪고 있을 것이다.

## 요약

- SSH KEY 등록을 기반으로 사용자를 관리하고, git cli 이용하여 repository 의 사용자를 변경해주는 아주 간단한 기능을 제공한다.
- SSH 기반의 URL 로 Clone 된 Repository 만 가능하다
 
## 기능

![create](/images/gitzua.png)

#### create

```$xslt
gitzua create
```

- 사용자 정보를 기록하고, 정보 기반으로 SSh Key를 생성한다.

![create](/images/create.png)

- `~/.ssh/config` 에 호스트 자동가 등록 된다.

![create](/images/config.png)

- 생성된 public key `~/.ssh/id_rsa_gitzua_$name.pub` 를 github 연동 계정에 등록한다..

![create](/images/register-ssh.png)

#### list

```$xslt
gitzua list
```

- Git Repository Directory 에서 User List 를 출력한다. 
- 현재 Directory 의 사용 User 를 확인할 수 있다.

![create](/images/list.png)

#### use

```$xslt
gitzua use [user name]
```

- Git Repository Directory 의 User 를 변경한다.

##### 변경 전

![create](/images/use-b.png)

##### 변경 후

![create](/images/use-a.png)

#### clone

```$xslt
gitzua clone [user name] [git url]
```
![clone](/images/clone.png)

---

## Intellij

Intellij Git 기능을 이용하고 있다면,

Preferences > Version Control > Git 에서 `SSH excutable` 을 `Native` 로 변경한다.

![create](/images/intellij.png)

## TODO

- HTTPS 형식 URL 호환.

> 상당히 미숙한 쉘 프로그램입니다. 많은 도움 부탁드립니다.
