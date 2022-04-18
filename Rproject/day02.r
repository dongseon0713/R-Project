## 문자열
# 1. 문자열
str <- "Hello R!!"
print(str)

# 2. 여러줄 문자열
str2 <- "Lorem ipsum dolor sit amet,
consectetur adipising elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua "
print(str2)
# 출력 : [1] "안녕, 친구야 !!\n오늘도 좋은 하루가 되길 바래\n밖에 날씨는 어때?\n졸리다...."

# 1. 동일하게 "\n"표현되도록 출력하고 싶다면... cat()
cat(str2)

# 4. 문자열 길이 : nchar(str)
nchar(str)
nchar(str2)

# 5. 문자열 내에 글자 확인 함수 : grepl()
str4 <- "Hello world!! Hi,R~"
grepl("H",str4)
grepl("Hi",str4)
grepl("Hello",str4)
grepl("Hellow",str4)


# 6. 문자열의 결합 : paste()
str5 <- "Hello"
str6 <- "R~~~"
paste(str5,str6)

## escape 문자 : \\, \n, \r, \t, \b

# ## 조건문 : if
# if (조건) {
#    조건 실행문...
# }

# if (조건) {
#    조건 실행문...
# }else{
#   else조건 실행문...
# }

# if (조건) {
#    조건 실행문...
# }else if(조건) {
#    조건 실행문...   
# }
# ** 중첩...

### x가 10을 대입, if문을 사용하여 2의배수이면 "2의 배수", 6의 배수이면 "6의 배수" 라고 출력되게 if를 사용해보세요

# intext <- readline("입력하세요 : ")
# as.numeric(intext) -> x
x <- 10
if (x %% 2 == 0) {
    print("2의 배수")
}else if (x %% 6 == 0) {
    print("6의 배수")
}else {
    print("2의 배수도 6의 배수도 아니다.")
}

### 반복문 : while , for
## next는 (continue), break는 반복문 종료
i <- 0
while (TRUE) {
    i <- i + 1
    if (i == 3){
        break
    }
    print(i)
}

# for 문도 비슷하게 사용이 가능함.
dice <- c(1,2,3,4,5,6)

for (x in 1:10) {
    print(x)
}

x <- 1
for (i in 2:10){
    x <- x*i
    print(x)
}

## 함수만들기(function 명령어 사용)
#   함수명 <- function(인자리스트){
#        함수 정의부
# }

# return() 함수 실행 결과를 리턴

fact <- function(n){
    x <- 1
    for (i in 2:n){
        x <- x*i
    }
    return(x)
}

fact(5)

## 함수 중첩 예시1
Nested_function <- function(x,y){
    a <- x + y
    return(a)
}

Nested_function(Nested_function(2,2),Nested_function(3,3))

## 함수 중첩 예시2
Outer_function <- function(x) {
    Inner_func <- function(y){
        a <- x + y
        return(a)
    }
    return(Inner_func)
}

output <- Outer_function(3)
output(17)

#### 숫자를 입력받아 그 숫자를 역으로 출력한 프로그램을 함수로 만드세요.
revers <- function(n){
    a <- 0
    while(n){
        a <- a*10
        a <- a + n %% 10
        n <- n %/% 10
    }
    return(a)
}

revers(123456789)
#### 두 수를 입력 받아 그 평균을 구하는 함수를 만드세요...

intext <- readline("첫번째 정수 입력 : ")
num <- as.numeric(intext)
intext2 <- readline("두번째 정수 입력 : ")
num2 <- as.numeric(intext2)

avg <- function(x,y){
    a <- (x+y)/2
    return(a)
}

avg(num,num2)


## 재귀함수 : 재귀함수는 자신이 자신을 참조하여 동작하는 함수...
tri_recursion <- function(k){
    if (k > 0){
        result <- k + tri_recursion(k-1)
        print(result)
    }else {
        result <- 0
        return(result)
    }
}

tri_recursion(5)

## 문제... 재귀함수를 사용하여 팩토리얼 계산 함수를 생성하세요 !!!
### fact_r 명으로 작성합니다.

fact_r <- function(j){
    if(j > 0){
        result <- j * fact_r(j-1)
        print(result)
    }else {
       result <- 1
       return(result)
    }
}

fact_r(5)

## 전역변수 설정하기
# 일반 변수 설정
txt <-"awesome"
my_function <- function(){
    txt <<- "fantastic"
    paste("R is ",txt)
}
my_function()
print(txt)

### 백터 : 같은 자료형의 연속된 리스트(배열) 
# 문자 백터
fruits <- c("banana","apple","orange")

fruits

# 숫자 백터
numbers <- c(1,3,5)

numbers[2]

# 연속된 숫자의 백터 생성
numbers2 <- 1:10
numbers2
numbers2[9]

# 연속된 값의 표현은 정수 단위로 증가합니다.
numbers3 <- 1.5:6.5
numbers3

# 연속된 값의 숫자 백터 경우 단위 증가시 사용되지 않는 경우...
numbers4 <- 1.5:6.4
numbers4

# 논리값 백터
log_values = c(TRUE, FALSE,TRUE,FALSE)
log_values

# 백터 길이 알아오기(요소 갯수 알아오기)[length]
fruits <- c("banana","apple","orange")
length(fruits) # 3

### 백터의 문자열이나 숫자를 정렬하여 처리하는 함수 : sort()
fruits <- c("banana","apple","orange","mango","lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)
sort(numbers)

## 백터 함수의 사용 인덱스 참조 1: c()
fruits <- c("banana","apple","orange","mango","lemon")
# 선택 참조
fruits[c(1,3,5)]

## 인덱스 참조2
fruits <- c("banana","apple","orange","mango","lemon")
# 선택 제외 (-인덱스로 제거하여 출력)
fruits[-1]
fruits[-3]

fruits[c(-1,-3)]

## 백터의 반복 : rep()
# 요소의 반복
repeat_each <- rep(c(1,2,3),each=3)
repeat_each

# 백터의 반복
repeat_time <- rep(c(1,2,3),time=3)
repeat_time

# 요소의 개별 반복
repeat_ind <- rep(c(1,2,3), times = c(5,3,2))
repeat_ind

## - 순차적인 백터 생성
# 1
number1 <- 1:10
number1
# 2 seq()함수 사용 인자 (from=(시작), to=(끝), by=(단위가격))
number2 <- seq(from=0,to=100,by=20)
number2

for (i in seq(from=0,to=100,by=20)){
    print(i)
}

### Lists : list() 함수 사용
# 문자열 리스트
strlist <- list("사과","바나나","체리")
strlist

# 숫자형 리스트
numlist <- list(10,20,30,40)
numlist

tlist <- list('사과',c(10,20,30),'바나나','체리')
tlist

# 리스트 내 값 참조
strlist <- list("사과","바나나","체리")
"사과" %in% strlist

# 리스트 내에 값 추가 : append()
strlist <- append(strlist,"메론",after=2)
strlist <- append(strlist,"포도")
strlist
# after가 없다면 마지막에 추가

# 리스트 값 제거 : 
strlist <- strlist[-1]
strlist

# 리스트 범위 값을 출력
strlist[2:5]

# 리스트 결함
list1 <- list("a","b","c")
list2 <- list(1, 2, 3)
list3 <- c(list1,list2)
print(list3)

### Matrix(행렬) - matrix() 를 사용, nrow, ncol값으로 정렬 지정
## 행렬생성 1 
tmatrix <- matrix(c(1,2,3,4,5,6),nrow = 3,ncol = 2)
tmatrix

# 행렬 생성 2
t2matrix <- matrix(c("apple","banana","cherry","orange"),nrow = 2,ncol = 2)
t2matrix

## 행렬에 대한 접근 "[]"를 이요애하여 접근
t2matrix[1,2]
t2matrix[2,]
t2matrix[,2]
t2matrix[,]

## 하나이상의 행렬에 접근
t3matrix <- matrix(c("apple","banana","cherry","orange","grape","pineapple",
"pear","melon","fig"),nrow = 3,ncol = 3)
t3matrix
t3matrix[c(1,2),]
t3matrix[-3,]
t3matrix[,c(1,3)]
t3matrix[,-2]

## 행렬에 값을 추가(컬럼 추가) : cbind()
newmatrix <- cbind(t3matrix,c("strawberry","blueberry","raspberry"))
newmatrix

## 행렬에 값을 추가(Row 추가) : rbind()
newmatrix <- rbind(t3matrix,c("strawberry","blueberry","raspberry"))
newmatrix

# 행렬값 제거 : 음수 인덱스 표시
r1matrix <- newmatrix[-c(1,2),-c(3,4)]
r1matrix

## 행렬값 확인
"apple" %in% r1matrix
"apple" %in% newmatrix

## 행렬의 row와 column 알아오기 : dim()
dim(t2matrix)
dim(t3matrix)
dim(tmatrix)
dim(newmatrix)

## 행렬의 길이
lmatrix <- matrix(c("apple","banana","cherry","orange"),nrow = 2,ncol = 2)
length(lmatrix)

## 행렬의 반복문을 사용하여 rows와 column값으로 행렬의 값을 불러와 보세요.
t4matrix <- matrix(c("apple","banana","cherry","orange"),nrow = 2,ncol = 2)

for (rows in 1:nrow(t4matrix)){
    for (columns in 1: ncol(t4matrix)){
        print(t4matrix[rows,columns])
    }
}


## 행렬 합치기
Matrix1 <- matrix(c("apple","banana","cherry","grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange","mango","pineapple","watermelon"), nrow = 2, ncol = 2)

## row로 더하기 : rbind()
matrix_combined <- rbind(Matrix1,Matrix2)
matrix_combined

## column으로 더하기 : cbind()
matrix_combined <- cbind(Matrix1,Matrix2)
matrix_combined

### Arrays 배열
tarray <- c(1:24)
tarray

multiarray <- array(tarray,dim = c(4,3,3))
multiarray

## ** dim(4,3,3) : 4는 rows, 3은 columns, 3은 행렬의 갯수(생성할 행렬의 개수)
## dim(nrow,ncol,생성 갯수)

# Array 값 접근
multiarray[2,2,2]       # Array[row,col, 메트릭번호]

## c()함수를 이용한 접근
t2array <- c(1:24)
## 첫번째 행렬의 첫번째 row에 접근
tmultiarray <- array(t2array,dim = c(4,3,2))
tmultiarray[c(1),,1]

## 첫번째 행렬의 첫번째 column에 접근
tmultiarray <- array(t2array,dim = c(4,3,2))
tmultiarray[,c(1),1]

## 존재여부
3 %in% tmultiarray

## row와 culumn확인
dim(tmultiarray)

## Array길이
length(tmultiarray)

## 반복문 사용
for (x in tmultiarray){
    print(x)
}

### Data Frames(data.frame())
## 데이터 프레임은 데이터를 테이블 형태로 표현하는 자료 형입니다.
## 데이터 프레임 안의 데이터 타입은 서로 달라도 됩니다.

## 첫번째 컬럼은 문자(character), 두번째는 numeric, 세번째는 logical로 생성해봅니다.
Data_Frame <- data.frame(
    Training = c("Strength","Stamina","Other"),
    Pulse = c(100,150,120),
    Duration = c(60,30,50)
)

Data_Frame

## summary() : 데이터프레임 값을 요약해서 보여줍니다.
summary(Data_Frame)
# > summary(Data_Frame)
#    Training             Pulse          Duration    
#  Length:3           Min.   :100.0   Min.   :30.00
#  Class :character   1st Qu.:110.0   1st Qu.:40.00
#  Mode  :character   Median :120.0   Median :50.00
#                     Mean   :123.3   Mean   :46.67
#                     3rd Qu.:135.0   3rd Qu.:55.00
#                     Max.   :150.0   Max.   :60.00

Data_Frame[1]
Data_Frame['Training']
Data_Frame$Training

## Row 추가 : rbind()
Data_Frame <- data.frame(
    Training = c("Strength","Stamina","Other"),
    Pulse = c(100,150,120),
    Duration = c(60,30,50)
)

New_Row_DF <- rbind(Data_Frame,c("Speed",110,110))
New_Row_DF

## Column 추가 : cbind
Data_Frame <- data.frame(
    Training = c("Strength","Stamina","Other"),
    Pulse = c(100,150,120),
    Duration = c(60,30,50)
)
New_Col_DF <- cbind(Data_Frame,Steps = c(1000,6000,2000))
New_Col_DF

## row와 colum 제거
Data_Frame_New <- Data_Frame[-c(1),-c(1)]
Data_Frame_New

## ncol(), nrow()
ncol(Data_Frame)
nrow(Data_Frame)

## 요소 갯수(길이)
length(Data_Frame)

## 결합 : rbind()
Data_Frame1 <- data.frame(
    Training = c("Strength","Stamina","Other"),
    Pulse = c(100,150,120),
    Duration = c(60, 30, 45)
)

Data_Frame2 <- data.frame(
    Training = c("Stamina","Stamina","Strength"),
    Pulse = c(140,150,160),
    Duration = c(10,30,20)
)

New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame


# 결합 : cbind()
Data_Frame3 <- data.frame(
    Training = c("Strength","Stamina","Other"),
    Pulse = c(100,150,120),
    Duration = c(60, 30, 45)
)

Data_Frame4 <- data.frame(
    Steps = c(3000, 6000, 2000),
    Calories = c(300, 400, 300)
)

New_Data_Frame1 <- cbind(Data_Frame3,Data_Frame4)
New_Data_Frame1

### Factors (factor()) : 범주형 자료일 때에 사용
## : 정해진 범위 내에서 카테고리별로 분석을 하기 위해서 사용되는 데이터 자료형
## 얘) 성별 : 남성/여성 , 음악 : 록, 팝, 클래식, 재즈, 운동 : 스테미나, 근력

# factor 생성
music_genre <- factor(c('Jazz','Rock','Classic','Classic','Pop','Jazz','Rock','Jazz'))
music_genre

# levels : levels() -> 카테고리로 출력
levels(music_genre)

# length 요소의 갯수
length(music_genre)

# 요소 접근
music_genre[3]

# 요소 변경
music_genre[3] <- 'Pop'
music_genre[3]

## 주의) factor는 정해진 범주 내에서 카테고리별로 분석을 위해서 사용하기 때문에
##    사전에 정의되어 있지 않은 값으로 변경시 에러가 발생함.
music_genre[3] <- 'Opera'

music_genre <- factor(c('Jazz','Rock','Classic','Classic','Pop','Jazz','Rock','Jazz'),
levels = c('Classic','Jazz','Pop','Rock','Opera'))
music_genre[3] <- 'Opera'
music_genre[3]

### 순열과 조합
## 순열 : 서로 다른 것들이 있는 경우 그 중에서 몇개를 뽑아서 줄을 세우는 경우의 수
##        여기서 줄은 세운다는 표현은 순서를 고려한다는 의미

## 팩토리얼 구하는 코드
fact <- function(n){
    x <- 1
    for (i in 2:n) {
        x <- x * i
    }
    return(x)
}

fact(10)

######################### 
x <- c(1,2,3,4,5)
count <- 0
for (i in 1:5){
    x2 <- x[x != i] # i에 저장된 값 빼고 , x2에 저장
    for (j in 1:4){
        print(c(i,x2[j]))
        count <- count + 1
    }
}
# (1,2) (1,3) (1,4) (1,5) , (2,1) (2,3) (2,4) (2,5) ...
print(count)

### =>> 공식을 이용한 경우 nPr = n! /(n-r)!
perm <- function(n,r){
    return(fact(n)/fact(n-r))
}

perm(5,4)

## 조합은 순서를 고려하지 않는다... (1,2),(2,1)
## 순서를 고려하지 않기 떄문에 같은 값이 있다면, 이것은 하나의 값으로 처리됨.

# nPr/r! = nCr  ,이유는 순서의 쌍이 같은 값으로 구성되기 때문이다.

## 1,2,3 세숫자의 순열은 3! = 6이다...
# (1,2,3), (1,3,2), (2,1,3), (2,3,1), (3,1,2), (3,2,1)

# 하지만, 조합은 1개만 존재한다. 왜? 모두 1,2,3이 포함되어 있으니까...

## 조합을 계산하는 코드
x <- c(1,2,3,4,5)
count <- 0
for (i in 1:4){
    for (j in (i+1):5){
        print(c(i,j))
        count <- count +1
    }
}
count

## nPr = n! / (n-r)!
## nCr = nPr / r! => (n! / (n-r)!) / r!

comb <- function(n,r){
    return((fact(n)/fact(n-r))/fact(r))
}

comb(45,6)

### 순열, 조합, 상트페테르부르크의 역설