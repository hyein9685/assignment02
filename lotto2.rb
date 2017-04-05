require('open-uri')
require('json')
require('awesome_print')
lotto_hash = JSON.parse(open("http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=747").read)
    
my_numbers=[*1..45].sort!
    
drw_numbers=[lotto_hash["drwtNo6"],lotto_hash["drwtNo5"],lotto_hash["drwtNo4"],lotto_hash["drwtNo3"],lotto_hash["drwtNo2"],lotto_hash["drwtNo1"]]
bonus_number=lotto_hash["bnusNo"]
    
match_numbers= my_numbers & drw_numbers # 겹치는 번호 확인
    
my_ranking = String.new  #등수 확인용 변수지정!!!!
    
if my_ranking.length==6
    my_ranking= "1등"
elsif my_ranking.length ==5 && bonus_number
    my_ranking= "2등"
elsif my_ranking.length ==5
    my_ranking= "3등"
elsif my_ranking.length ==4
    my_ranking= "4등"
elsif my_ranking.length ==3
    my_ranking= "5등"
else
    my_ranking = "꽝"
end
    
    puts "이번 주 로또번호는 #{drw_numbers} 이고, 보너스 번호는 #{bonus_number} 입니다."
    puts "추첨한 로또번호는 #{my_numbers} 입니다."
    puts "겹치는 번호는 #{match_numbers} 입니다."
    puts "결과는 #{my_ranking}입니다."
    
    
 