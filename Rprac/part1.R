#-----------------------------------
# R명령어
#-----------------------------------

# ctrl+enter : 한줄씩 실행

## 숫자와 글자
10
9.9
10+9.9
10*9.9
'fastCampus'
"fastCampus"
## 숫자와 글자의 나열

# C(함수의 나열)
c(1,2,3,4)
c("동양","통양")
# 콜론(:) 연산자를 활용한 정수 수열
1:10
2011:2020
# seq() 함수를 활용한 등차 수열
seq(from=0, to=100, by=20)
seq(0, 200, 25)
## from부터 to까지 by간격으로 


## '=' 을활용한 값 저장
x = 1:10
y = c('데이터','변수','수리')

x
y

## factor() 함수로 범주형 변수 형식으로 변환

#character형식과 factor형식
city = c("서울","부산","서울","부산","서울")
city
#데이터 형식 확인
class(city)


CITY = factor(city)
CITY

#levels()함수를 활용한 수준 확인
levels(CITY)
class(CITY)

## read.csv() 함수로 csv파일 불러오기
read.csv('test.csv')
test_csv = read.csv('test.csv')
test_csv

# nrow() ncol() 함수로 관측치, 변수 갯수 확인하기


# names() 함수로 변수이름 확인하기
names(test_csv)

# '$'를 활용하여 변수 선택하기
test_csv$age
test_csv&gender

