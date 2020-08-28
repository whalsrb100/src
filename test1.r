worldkorea_login <- 'https://mticket.lotteworld.com/web/main/loginView.do?reUrl=https%3A%2F%2Fmticket.lotteworld.com%2Fweb%2Fpay%2FpayManageInfo.do%3Fei_gsber%3D1210%26ei_bukrs%3D1200&ei_gsber=1210&ei_bukrs=1200'


lotto_base <- 'https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo='
lotto_num <- '900'
lotto_url <- paste(lotto_base, lotto_num, sep='')
print(lotto_url)