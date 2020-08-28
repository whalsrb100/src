library(rvest)
library(jsonlite)
library(httr)
library(dplyr)

worldkorea_login <- 'https://mticket.lotteworld.com/web/main/loginView.do?reUrl=https%3A%2F%2Fmticket.lotteworld.com%2Fweb%2Fpay%2FpayManageInfo.do%3Fei_gsber%3D1210%26ei_bukrs%3D1200&ei_gsber=1210&ei_bukrs=1200'

cat("totSellamnt",",",file="ltresult.txt",append=FALSE)
cat("returnValue",",",file="ltresult.txt",append=TRUE)
cat("drwNoDate",",",file="ltresult.txt",append=TRUE)
cat("firstWinamnt",",",file="ltresult.txt",append=TRUE)
cat("firstPrzwnerCo",",",file="ltresult.txt",append=TRUE)
cat("firstAccumamnt",",",file="ltresult.txt",append=TRUE)
cat("drwNo",",",file="ltresult.txt",append=TRUE)
cat("drwtNo1",",",file="ltresult.txt",append=TRUE)
cat("drwtNo2",",",file="ltresult.txt",append=TRUE)
cat("drwtNo3",",",file="ltresult.txt",append=TRUE)
cat("drwtNo4",",",file="ltresult.txt",append=TRUE)
cat("drwtNo5",",",file="ltresult.txt",append=TRUE)
cat("drwtNo6",",",file="ltresult.txt",append=TRUE)
cat("bnusNo","\n",file="ltresult.txt",append=TRUE)

base <- 'https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo='

for(i in 1:925) {
num <- i
url <- paste(base, num, sep='')
urltohtml <- as.character(read_html(url[1]))
rest = fromJSON(strsplit(strsplit(urltohtml,split='<p>')[[1]][2],split="</p>")[[1]][1])
cat( rest$totSellamnt,",",file="ltresult.txt",append=TRUE)
cat( rest$returnValue,",",file="ltresult.txt",append=TRUE)
cat( rest$drwNoDate,",",file="ltresult.txt",append=TRUE)
cat( rest$firstWinamnt,",",file="ltresult.txt",append=TRUE)
cat( rest$firstPrzwnerCo,",",file="ltresult.txt",append=TRUE)
cat( rest$firstAccumamnt,",",file="ltresult.txt",append=TRUE)
cat( rest$drwNo,",",file="ltresult.txt",append=TRUE)
cat( rest$drwtNo1,",",file="ltresult.txt",append=TRUE)
cat( rest$drwtNo2,",",file="ltresult.txt",append=TRUE)
cat( rest$drwtNo3,",",file="ltresult.txt",append=TRUE)
cat( rest$drwtNo4,",",file="ltresult.txt",append=TRUE)
cat( rest$drwtNo5,",",file="ltresult.txt",append=TRUE)
cat( rest$drwtNo6,",",file="ltresult.txt",append=TRUE)
cat( rest$bnusNo,"\n",file="ltresult.txt",append=TRUE)
}