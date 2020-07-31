#문자열  처리
install.packages("stringr")
library(stringr)

str_extract_all("홍길동356이수산25유관순23","[0-9]{2}")

string <- "asasdasdasd105lee1002tiy25강감찬2005"
str_extract_all(string, '[a-z]{3}')
str_extract_all(string, '[a-z]{3,}')
str_extract_all(string, '[a-z]{3,5}')

string1 <- "TESqweqweasdad105asdasd12312312ㅁㄴㅇㅁㄴㅇ123123"
str_extract_all(string1, '[A-z]{3}')

str_extract_all(string, 'hong')

string3 <- 'YEShongkidong105lee1002you25강감찬2005'
str_extract_all(string3,'[^a-z]')
str_extract_all(string3,'[^a-z]{4}')
str_extract_all(string3,'[^가-힣]{5}')

jumin <- '123456-3234567894532-3589621'
unlist(str_extract_all(jumin,'[0-9]{6}-[0-9]{7}'))
str_extract_all(jumin,'[0-9]{6}-[0-9]{7}')

name<-'홍길동1234,이순신5678,강감찬1012'
nm <- unlist(str_extract_all(name, '[가-힣]{3}'))
num<- unlist(str_extract_all(name, '[0-9]{4}'))

name_df <- data.frame(name = c(nm), number = c(num))
name_df