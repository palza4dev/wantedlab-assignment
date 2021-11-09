# [Assignment 3] Wanted-wantedlab-Preonboarding
원티드x위코드 백엔드 프리온보딩 과제3

- 과제 제출 기업정보
  - 기업명 : 원티드
  - [원티드 사이트](https://www.wanted.co.kr/)
  - [원티드 채용공고 링크](https://www.wanted.co.kr/search?query=%EC%9B%90%ED%8B%B0%EB%93%9C)



## Members

| 이름   | github                                          | 담당 기능                                                    |
| ------ | ----------------------------------------------- | ------------------------------------------------------------ |
| 구본욱 | [qhsdnr0](https://github.com/qhsdnr0)           | DB Modeling, postman api 작성, 회사 등록 기능, unit test     |
| 이다빈 | [thisisempty](https://github.com/thisisempty)   | DB Modeling, postman api 작성, 회사 상세 조회 기능, unit test |
| 김주현 | [kjhabc2002](https://github.com/kjhabc2002)     | DB Modeling, 회사 자동 완성 기능, unit test                  |
| 문승준 | [palza4dev](https://github.com/palza4dev)       | 개발 및 배포 환경 설정, README 작성                          |
| 김지훈 | [kimfa123](https://github.com/kimfa123)         | 개발 및 배포 환경 설정, README 작성                          |
| 양가현 | [chrisyang256](https://github.com/chrisyang256) | 개발 및 배포 환경 설정, README 작성                          |



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

> - Back-End : Python, Django Framework, MySQL
> - Deploy : AWS EC2, Docker
> - ETC : GIT, GITHUB, POSTMAN



## 모델링

<img width="502" alt="스크린샷 2021-11-09 오후 9 18 39" src="https://user-images.githubusercontent.com/89339349/140923422-cad2b3e4-4bf4-421f-8933-b653e1764798.png">





## 구현 기능

### 회사 상세정보 조회 기능
- ```/companies/company_name``` 으로 company_name에 회사이름을 입력합니다.
- Header에  ```x_wanted_language```  으로 ko(한국), en(영어), ja(일본) 중 하나를 선택하여 입력합니다.
- 위의 입력정보를 바탕으로 회사이름과 해당언어의 태그를 조회합니다.

### 회사 자동완성 조회 기능
- ```/companies?query=링크``` 으로 검색했을 시 링크와 관련된 회사이름을 검색합니다.
- Header에 ```x_wanted_language```으로 ko(한국), en(영어), ja(일본) 중 하나를 선택하여 입력합니다.
- 위의 입력정보를 바탕으로 언어별 회사명의 일부에 관련된 회사이름을 조회합니다.

### 신규회사 등록 기능

- ```/companies``` 으로 request.body에 신규 회사정보를 입력합니다.
- Header에 ```x_wanted_language```으로 ko(한국), en(영어), ja(일본) 중 하나를 선택하여 입력합니다.
- 위의 입력정보를 바탕으로 등록한 회사정보를 해당 언어로 표시합니다.

### 유닛 테스트

-  TestRunner클래스를 활용하여 localdb로 유닛테스트 구현하였습니다.
- 테스트용 settings를 생성하여 테스트 환경을 별도로 마련하였습니다.

### Docker로 AWS 배포 

 - 도커를 통해 개발용 환경과 배포용 환경을 구축하여 팀원들의 개발환경 셋팅시간을 줄여줘서 구현에 더 집중할 수 있게 적용하였습니다. 
 - 도커 내부에 중요 정보들을 환경변수로 세팅하여 중요 정보들은 볼 수 없게끔 나타내었습니다.
 - 팀을 나누어 도커 컨테이너 생성부터 시작해서 AWS EC2까지 배포하였습니다. 
 - 배포 주소 `13.125.65.20:8000`



## API Document & API Test

1. [API 명세서 링크](https://documenter.getpostman.com/view/17922648/UVC5F7aK) 로 접속해 우측 상단의 `Run in Postman` 버튼 클릭

2. 개인 Workspace로 Import 한다.

3. Environment를 Deploy로 바꾸고 hostname이 올바른지 확인 합니다.

4. API 예시를 참고해 `13.125.65.20 ` 로 요청을 보낸다.

   

## 도커를 활용한 배포 과정

### 로컬 테스트

1. `Docker` 및 `docker-compose` 설치
2. `Docker` 파일, `.env` 파일, `docker-compose` 파일 작성
3. 로컬환경에서 백엔드 API와 MySQL 컨테이너 생성 후 서버 테스트



### EC2 서버 배포 방법

1. 해당프로젝트를 clone 하고, 프로젝트 폴더로 들어간다.

   ```
   $ git clone https://github.com/kooted-pre-onboarding/wantedlab-assignment
   
   $ cd wantedlab-assignment
   ```

2. 가상 환경을 만들고 프로젝트에 사용한 python package를 받는다.

   - Miniconda 사용예시

   ```
   $ conda create --name wantedlab python=3.8
   
   $ conda actvate wantedlab
   
   $ pip install -r requirements.txt
   ```

3. 프로젝트 폴더에 docker 환경 설정 파일을 만든다.

   ```
   # .env.deploy
   
   MYSQL_USER=유저명
   MYSQL_PASSWORD=비밀번호
   MYSQL_ROOT_PASSWORD=루트비밀번호
   
   WANTEDLAB_SECRET_KEY=시크릿키
   ALGORITHM=알고리즘
   
   WANTEDLAB_DB_USER=유저명
   WANTEDLAB_DB_PASSWORD=비밀번호
   ```

4. docker-compose를 통해서 db와 서버를 실행시킨다.

   ```
   $ docker-compose up
   ```

5. 만약 백그라운드에서 실행하고 싶을 시 `-d` 옵션을 추가한다.

   ```
   $ docker-compose up -d
   ```



- 도커 컨테이너를 활용해 팀원들이 동일한 환경에서 테스트 및 개발이 가능했습니다.

  

- AWS RDS는 DB의 선택권이 제한적이지만, 컨테이너로 DB 서버를  실행해 추후 더 확장성있고 유연한 개발환경 구축이 가능합니다.




## 폴더 구조
```bash
.
├── Dockerfile
├── README.md
├── company
│   ├── __init__.py
│   ├── __pycache__
│   ├── admin.py
│   ├── apps.py
│   ├── migrations
│   │   ├── 0001_initial.py
│   │   ├── 0002_relatedcompany.py
│   │   ├── __init__.py
│   │   └── __pycache__
│   ├── models.py
│   ├── tests.py
│   ├── urls.py
│   └── views.py
├── docker-compose.yml
├── env.deploy
├── manage.py
├── pull_request_template.md
├── requirements.txt
└── wantedlab
    ├── __init__.py
    ├── __pycache__
    ├── asgi.py
    ├── settings.py
    ├── settings_test.py
    ├── test_runner.py
    ├── urls.py
    └── wsgi.py
```



# Reference

이 프로젝트는 원티드x위코드 백엔드 프리온보딩 과제 일환으로 원티드랩에서 출제한 과제를 기반으로 만들었습니다. 
    
