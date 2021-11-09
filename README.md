# [Assignment 3] Wanted-Freshcode-Preonboarding
원티드x위코드 백엔드 프리온보딩 과제3

- 과제 제출 기업정보
  - 기업명 : 원티드
  - [ 사이트](https://www.wanted.co.kr/)
  - [원티드 채용공고 링크](https://www.wanted.co.kr/search?query=%EC%9B%90%ED%8B%B0%EB%93%9C)
## Members

|이름   |github                   |담당 기능|
|-------|-------------------------|--------------------|
|구본욱 |[qhsdnr0](https://github.com/qhsdnr0)   | DB Modeling, postman api 작성, 로그인, 상품관리 기능, unit test  |
|이다빈 |[thisisempty](https://github.com/thisisempty)     | DB Modeling, postman api 작성, 로그인, 상품관리 기능, unit test  |
|김주현 |[kjhabc2002](https://github.com/kjhabc2002) | DB Modeling, 로그인, 상품관리 기능, unit test |
|문승준 |[palza4dev](https://github.com/palza4dev) | 개발 및 배포 환경 설정, README 작성 |
|김지훈 |[kimfa123](https://github.com/kimfa123) | 개발 및 배포 환경 설정, README 작성 |
|양가현 |[chrisyang256](https://github.com/chrisyang256)   | 개발 및 배포 환경 설정, README 작성 |


### [과제  안내]

- 원티드 선호 기술스택: Python flask 또는 fastapi

<aside>
📝 다음과 같은 내용을 포함하는 테이블을 설계하고 다음과 같은 기능을 제공하는 REST API 서버를 개발해주세요.

</aside>

✔️ **데이터**

---

- 회사 정보
    - 회사 이름 (다국어 지원 가능)
- 회사 정보 예제
    - 회사 이름 (원티드랩 / Wantedlab)
- 데이터 셋은 원티드에서 제공
    
    [wanted_temp_data.csv](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/81f13ae2-fabc-4fad-a754-9b2d684f41a8/wanted_temp_data.csv)
    
- 데이터셋 예제
    - 원티드랩 회사는 한국어, 영어 회사명을 가지고 있습니다. (모든 회사가 모든 언어의 회사명을 가지고 있지는 않습니다.)
![Untitled](https://user-images.githubusercontent.com/89339349/140921849-42c3a77b-2f7e-4775-bf52-ffc656ac7f76.jpg)


✔️ **REST API 기능**

---

- 회사명 자동완성
    - 회사명의 일부만 들어가도 검색이 되어야 합니다.
- 회사 이름으로 회사 검색
- 새로운 회사 추가

**✔️ 개발 조건**

---

- 제공되는 test case를 통과할 수 있도록 개발해야 합니다.
    
    [test_app.py](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0d2517b3-b80b-4a1b-82c4-9bc6f2a0d5ae/test_app.py)
    
- ORM 사용해야 합니다.
- 결과는 JSON 형식이어야 합니다.
- database는 RDB를 사용해야 합니다.
- database table 갯수는 제한없습니다.
- 필요한 조건이 있다면 추가하셔도 좋습니다.
- Docker로 개발하면 가산점이 있습니다.
    
## 사용 기술 및 tools
> - Back-End : PYTHON, Django Framework, My SQL
> - Deploy : AWS EC2 Docker
> - ETC : GIT, GITHUB, POSTMAN

## 모델링

<img width="502" alt="스크린샷 2021-11-09 오후 9 18 39" src="https://user-images.githubusercontent.com/89339349/140923422-cad2b3e4-4bf4-421f-8933-b653e1764798.png">



## API 명세
https://documenter.getpostman.com/view/17676214/UVC3j7i1

## 구현 기능

### 로그인
- 데이터베이스에 등록된 유저는 총 2명으로 사용자 1번은 user, 사용자 2번은 admin입니다.
- Request시 Header에 Authorization 키를 체크 한 후에 Authorization 키의 값이 없거나 인증 실패시 Error Handling하였습니다.
- 로그인이 성공적으로 완료되면, user정보와 admin정보를 토큰으로 반환할 때 양방향 해쉬 알고리즘인 'JWT'를 사용해서 응답을 하였습니다.

### 상품관리
- 사용자는 로그인시에(header에 token이 있는 상태) 상품조회만 가능하도록 하였습니다. 
- 관리자는 로그인시에(header에 token이 있는 상태) 상품 추가/수정/삭제가 가능하도록 하였습니다. 
- 상품 조회의 경우 query string을 이용한 pagination, Q객체와 __contains를 이용한 상품검색, 카테고리 필터링 등의 기능을 구현하였습니다.

### Docker로 AWS 배포 

 - 도커를 통해 개발용 환경과 배포용 환경을 구축하여 팀원들의 개발환경 셋팅시간을 줄여줘서 구현에 더 집중할 수 있게 적용하였습니다. 
 - 도커 내부에 중요 정보들을 환경변수로 세팅하여 중요 정보들은 볼 수 없게끔 나타내었습니다.
 - 팀을 나누어 도커 컨테이너 생성부터 시작해서 AWS EC2까지 배포하였습니다. 
 - 2차 프로젝트때는 docker를 이용하지 못하였지만 이번에는 팀원들과 도커에 대해 공부하여 도커를 통해 배포하였습니다.

## API TEST 방법
1. `원티드 프리온보딩 Fresh Code.postman_collection.json` 파일을 Postman으로 import 합니다.
2. 정의된 hostname이 올바른지 확인 합니다. (13.125.45.93)
![스크린샷 2021-11-06 오전 10 33 11](https://user-images.githubusercontent.com/72376931/140593488-85c5d361-d0ef-4f7a-b3c6-d3ac6f928e0f.png)
4. 정의된 로그인 요청을 이용해서 유저와 어드민의 access_token을 획득합니다.
5. 각 요청에 header 부분에 Authorization 항목에 획득한 access_token을 입력하여 요청을 진행합니다.
![스크린샷, 2021-11-06 09-22-48](https://user-images.githubusercontent.com/41711271/140591363-2693c1d2-d482-4fb2-853e-92485b7fe07f.png)


## 폴더 구조
```bash
.
├── README.md
├── core
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── migrations
│   │   └── __init__.py
│   ├── models.py
│   ├── tests.py
│   └── views.py
├── docker-compose.yml
├── dockerfile
├── freshcode
│   ├── __init__.py
│   ├── asgi.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── manage.py
├── products
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── migrations
│   │   ├── 0001_initial.py
│   │   └── __init__.py
│   ├── models.py
│   ├── tests.py
│   ├── urls.py
│   └── views.py
├── requirements.txt
└── users
    ├── __init__.py
    ├── admin.py
    ├── apps.py
    ├── decorator.py
    ├── migrations
    │   ├── 0001_initial.py
    │   └── __init__.py
    ├── models.py
    ├── tests.py
    ├── urls.py
    └── views.py
```
## TIL Blog
 - 문승준 : 
 - 구본욱 : 
 - 김지훈 : 
 - 이다빈 : 
 - 양가현 : 
 - 김주현 : 
 
# Reference
이 프로젝트는 원티드x위코드 백엔드 프리온보딩 과제 일환으로 freshcode에서 출제한 과제를 기반으로 만들었습니다. 
    
