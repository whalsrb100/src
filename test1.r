library(rvest)
library(jsonlite)
library(httr)
library(dplyr)

worldkorea_login <- 'https://mticket.lotteworld.com/web/main/loginView.do?reUrl=https%3A%2F%2Fmticket.lotteworld.com%2Fweb%2Fpay%2FpayManageInfo.do%3Fei_gsber%3D1210%26ei_bukrs%3D1200&ei_gsber=1210&ei_bukrs=1200'
base <- 'https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo='
num <- '900'
url <- paste(base, num, sep='')
urltohtml <- as.character(read_html(url[1]))
rest = fromJSON(strsplit(strsplit(urltohtml,split='<p>')[[1]][2],split="</p>")[[1]][1])
messages("[",rest$drwNoDate,"] ( seq:",num,")\n")
messages("(No1)->",rest$drwtNo1,", ")
messages("(No2)->",rest$drwtNo2,", ")
messages("(No3)->",rest$drwtNo3,", ")
messages("(No4)->",rest$drwtNo4,", ")
messages("(No5)->",rest$drwtNo5,", ")
messages("(No6)->",rest$drwtNo6,", ")
messages("(Bonus)->",rest$bnusNo,"\n")
