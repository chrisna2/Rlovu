#-------------------------------#
#한 변수의 요약
#chapter2. 한 번주형 변수의 요약
#-------------------------------#

#한 범주형 변수 만들기
GENDER = c('남','여','여','남','여','여','여','남','남')
GENDER = factor(GENDER)

# levels()로 수준 확인하기
levels(GENDER)


# table()로 빈도표 만들기
t_GENDER = table(GENDER)
t_GENDER

#관측치 개수를 세어 상대빈도 계산하기
length(GENDER)
sum(t_GENDER)  

# 상대빈도 계산
t_GENDER / length(GENDER)
# prop.table()
prop.table(t_GENDER)

# barplot() 함수로 막대그래프 그리기
t_GENDER
barplot(t_GENDER)

# pie() 함수로 원 그래프 만들기
pie(t_GENDER)

# 한 수치형 변수의 요약

# 데이터 만들기
SCORE = c(60,78,83,74,100,80,90,85,70)
STIME = c(0,4,3,6,6,7,8,8,3)
SCORE

# sort() 함수로 관측치 정렬하기
sort(SCORE)# 기본값 오름차순
sort(SCORE, decreasing = TRUE)#내림차순

#최댓값, 최솟값, 중앙값
min(SCORE)
max(SCORE)
median(SCORE)

#quantile() 함수로 다양한 분위수 계산하기
quantile(SCORE, 0.25)# Q1(1/4분기)

#다양한 분위수 계산 방법 활용
?quantile ## help tab 활성화

quantile(SCORE, 0.25, type =5)
quantile(SCORE, 0.75, type =5)

# summary()함수를 활용한 다섯숫자 요약
summary(SCORE)

#boxplot()함수를 활용한 상자그림 그리기
boxplot(SCORE)

#hist() 함수를 활용한 히스토그램 그리기
hist(SCORE)
hist(SCORE, breaks=seq(50,100,10), right=TRUE)
## 오른쪽 끝 값을 포함
## break 옵션으로 구간지정 가능

# 평균 분산 표준편차 계산
mean(SCORE)
var(SCORE)
sd(SCORE)
sd(STIME)

# 수치형 변수를 상대적인 값으로 변경
min_s = min(SCORE)
max_s = max(SCORE)
min_s
max_s  


SCORE
SCORE - min_s     
# 각 관측치의 상대적인 위치 확인가능
(SCORE - min_s)/(max_s - min_s)  


#표준화
mean_s = mean(SCORE)
sd_s = sd(SCORE)
## 평균과 표준편차의 계산산  
mean_s
sd_s  

SCORE
SCORE - mean_s  
(SCORE - mean_s)/sd_s ## 표준점수 계산가능!

#위에 모든게 SCALE() 함수로 활용 가능!
scale(SCORE)

