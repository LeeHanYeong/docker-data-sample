init.sql에서 MySQL실행시 초기 스크립트 실행

샘플에서는 dump데이터 없이 쿼리로 데이터를 추가하는데, 실제로는 넣을 데이터베이스 dump파일을 COPY하고 초기 스크립트에서 load하면 됨.

**Terminal1**

```shell
❯ docker compose up
```

**Terminal2 (위 터미널 실행 후 다른 터미널에서)**

```shell
❯ docker exec -it sample-mysql mysql -u root -ptestpass -e "select * from sampledb.sampletable;"

mysql: [Warning] Using a password on the command line interface can be insecure.
+------+------------+
| id   | name       |
+------+------------+
|    1 | samplename |
+------+------------+
```

