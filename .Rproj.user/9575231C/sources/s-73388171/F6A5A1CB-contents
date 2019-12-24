# chapter 2
# 두범주형 변수의 관계

TWO_CATE = read.csv('data/TWO_CATE.CSV', fileEncoding = 'UTF-8')
TWO_CATE

TWO_CATE$GENDER
TWO_CATE$AGE

table(TWO_CATE$GENDER)
table(TWO_CATE$AGE)

# table() 함수로 교차표 만들기
table_two = table(TWO_CATE$GENDER,TWO_CATE$AGE)
table_two

# heatmap() 함수로 열지도 그리기
heatmap(table_two)
heatmap(table_two,
        Rowv = NA, Colv = NA, revC = TRUE, scale = 'none',
        col = colorRampPalette(c('ivory','red'))(100))


# 조금 큰 교차표를 불러와서 열지도 그리기 [row.names=1 한 행의 값은 범주의 기준으로 변경]
AGE_CITY = as.matrix(read.csv('data/agecity.csv', fileEncoding ='UTF-8', row.names=1))
AGE_CITY # 광역시별로 인구 수 확인

heatmap(AGE_CITY,
        Rowv = NA, Colv = NA, revC = TRUE, scale = 'none',
        col = colorRampPalette(c('ivory','red'))(100))


# porp.table() 함수로 행 백분율, 열 백분율 계산하기
prop.table(table_two)
prop.table(table_two,1)#1 :행 백분율
prop.table(table_two,2)#2 :열 백분율
# 아무것도 없으면 전체의 비중, 1은 행, 2는 열 백분율 계산
cap0 = prop.table(AGE_CITY)
cap1 = prop.table(AGE_CITY,1)
cap2 = prop.table(AGE_CITY,2)


heatmap(cap0,
        Rowv = NA, Colv = NA, revC = TRUE, scale = 'none',
        col = colorRampPalette(c('ivory','red'))(100))

heatmap(cap1,
        Rowv = NA, Colv = NA, revC = TRUE, scale = 'none',
        col = colorRampPalette(c('ivory','red'))(100))

heatmap(cap2,
        Rowv = NA, Colv = NA, revC = TRUE, scale = 'none',
        col = colorRampPalette(c('ivory','red'))(100))



# 두 수치형 변수의 관계

  # 데이터 불러오기
  TWO_CONT = read.csv('data/TWO_CONT.csv',fileEncoding = 'UTF-8')
  TWO_CONT #공부 시간과 점수형 데이터

  # plot() 함수로 산점도 그리기
  plot(TWO_CONT$HOUR, TWO_CONT$SCORE)
  # 순서대로 x축/ y축
  plot(TWO_CONT)
  # 그냥 데이터를 넣어도 산점도 생성 가능
  plot(TWO_CONT,pch=16,col='dodgerblue')
  
  # abline()을 활용한 보조선 추가
  maenHour = mean(TWO_CONT$HOUR)
  meanScore = mean(TWO_CONT$SCORE)
  
  abline(v=maenHour,lty=2)#수직선:v 산점도에 수직선 추가 가능
  abline(h=meanScore,lty=2)#수평선:h 산점도에 수평선 추가가능
  #lty 라인 타입 설정
  
  #cov() 공분산
  cov(TWO_CONT$HOUR,TWO_CONT$SCORE)
  #cor() 상관계수 +/-1 범위
  cor(TWO_CONT$HOUR,TWO_CONT$SCORE)
  
  
#한 범주형 변수와 한 수치형 변수의 관계

  # 데이터 불러오기
  TWO_VAR1 = read.csv('data/TWO_VAR1.csv',fileEncoding = 'UTF-8')
  TWO_VAR1 
  # city : 범주형 변수
  # score : 수치형 변수

  # aggregate() 함수를 활용한 그룹별(조건부) 평균 계산
  aggregate(SCORE ~ CITY, data=TWO_VAR1, mean)
    ##  aggregate(수치형변수 ~ 변수형변수, data=데이터이름, 계산할함수) 
    aggregate(SCORE ~ CITY, data=TWO_VAR1, sum)
  
  TWO_VAR2 = read.csv('data/TWO_VAR2.csv',fileEncoding = 'UTF-8')
  TWO_VAR2
  
  aggregate(SCORE ~ METHOD, data=TWO_VAR2, mean)
  

  # 예제 데이터 불러오기
  CITY_COUNT = read.csv('data/city_count.csv', fileEncoding = 'UTF-8')
  CITY_COUNT
  
  # 총 1000개의 관측치가 있음 콘솔 창에는 500라인 이상은 나타나지 않고 있음
  nrow(CITY_COUNT)
  # 앞에 부분만 표시
  head(CITY_COUNT, n=5)
  # 뒤에 부분만 표시
  tail(CITY_COUNT, n=5)
  
  # 그룹별 평균 계산
  aggregate(COUNT ~ CITY, data=CITY_COUNT, mean)
  
  # boxplot() 함수로 그룹별 상자그림 그리기
  boxplot(COUNT ~ CITY, data=CITY_COUNT)
  
  # cut() 함수로 수치형 변수를 구간화 하기
  breaks = c(0,75,85,100)

  ## 구간 경계값 지정
  SCORE_GRP = cut(TWO_VAR2$SCORE, breaks = breaks)
  SCORE_GRP
  
  # 구간화된 수치형 변수로 교차표를 만들고 열지도 생성
  TWO_VAR2_table = table(SCORE_GRP, TWO_VAR2$METHOD)
  
  heatmap(TWO_VAR2_table,
          Rowv = NA, Colv = NA, revC = TRUE, scale = 'none',
          col = colorRampPalette(c('ivory','red'))(100))
  
  local_movie = as.matrix(read.csv('data/local_movie.csv', fileEncoding ='UTF-8', row.names=1))
  


  # 아무것도 없으면 전체의 비중, 1은 행, 2는 열 백분율 계산
  lm0 = prop.table(local_movie)
  lm1 = prop.table(local_movie,1)
  lm2 = prop.table(local_movie,2)
  
  
  heatmap(lm0,
          Rowv = NA, Colv = NA, revC = TRUE, scale = 'none',
          col = colorRampPalette(c('ivory','red'))(100))
  
  heatmap(lm1,
          Rowv = NA, Colv = NA, revC = TRUE, scale = 'none',
          col = colorRampPalette(c('ivory','red'))(100))
  
  heatmap(lm2,
          Rowv = NA, Colv = NA, revC = TRUE, scale = 'none',
          col = colorRampPalette(c('ivory','red'))(100))
  
  
  
  