#### bash 관련 프로세스 필터링 조회
```
ps -ef | grep bash
```

#### 현재 디렉터리에서 디렉터리만 나열
```
ls -l | grep "^d"
```

#### 파일 내용을 정렬하고 중복 제거
```
cat file.txt | sort | uniq
```

#### 파일 내용 정렬 후 중복 제거하여 새 파일로 저장
```
cat data.txt
1
4
2
3
5

cat data.txt | sort | uniq > unique_sorted_data.txt

cat unique_sorted_data.txt
1
2
3
4
5
```

#### 디렉터리 내 파일 개수 세기
```
ls | wc -l > file_count.txt
```

#### 로그 파일에서 키워드 추출 후 내림차순 정렬하여 저장
```
grep "systemd" /var/log/syslog | sort -r > sorted_syslog.txt
```

#### 특정 확장자 파일 찾아 압축하기
```
find . -name "*.jpg" | xargs tar -cvzf images.tar.gz
```

#### 압축된 대용량 파일에서 특정 패턴 검색 후 결과 요약
```
zcat large_file.gz | grep "pattern" | wc -l > result_summary.txt
```

