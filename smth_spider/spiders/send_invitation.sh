#!/bin/bash
user=$1

curl 'http://www.newsmth.net/nForum/mail/NULL/ajax_send.json'  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.108 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'Accept: */*' -H 'Cache-Control: no-cache' -H 'X-Requested-With: XMLHttpRequest' -H 'Cookie: main[UTMPUSERID]=gomypig; main[UTMPKEY]=73051396; main[UTMPNUM]=17059; main[PASSWORD]=%2503d%2500a2%2540%2526%250D%2516%250923%251Bu%2509%252C%250D%2522%2507Vg%2523%2504%250E; Hm_lvt_9c7f4d9b7c00cb5aba2c637c64a41567=1459236700; Hm_lpvt_9c7f4d9b7c00cb5aba2c637c64a41567=1459240287; main[XWJOKE]=hoho' -H 'Connection: keep-alive' -H 'Referer: http://www.newsmth.net/nForum/' --data 'title=%E6%B5%A6%E5%8F%91AE+%E7%99%BD%E9%87%91%E5%8D%A1%E9%82%80%E8%AF%B7%E9%93%BE%E6%8E%A5%7E%7E%7E&content=%E6%B5%A6%E5%8F%91AE%E7%99%BD%E9%87%91%E5%8D%A1%E6%8E%A8%E8%8D%90%E9%93%BE%E6%8E%A5%EF%BC%9Ahttps%3A%2F%2Fecentre.spdbccc.com.cn%2Fentry_cobber_union%2FpageController%2FmySticker.htm%3Fcid%3D365746&num=&signature=0&backup=on&id='$user -H 'Cookie: _ga=GA1.2.316291097.1429852824; Hm_lvt_7734e0ab76401586c0e18dc2feefc01b=1441631966; bfd_g=9de2782bcb754fd70000689300906e3054c9fda8; tma=88525828.7971704.1429693672137.1449543590241.1449629553140.142; tmd=2533.88525828.7971704.1429693672137.; main[UTMPUSERID]=gomypig; main[UTMPKEY]=28696048; main[UTMPNUM]=12483; main[PASSWORD]=%2503d%2500a2%2540%2526%250D%2516%250923%251Bu%2509%252C%250D%2522%2507Vg%2523%2504%250E; main[XWJOKE]=hoho; Hm_lvt_9c7f4d9b7c00cb5aba2c637c64a41567=1457776174,1457915149,1458001000,1458957533; Hm_lpvt_9c7f4d9b7c00cb5aba2c637c64a41567=1459236059' -H 'Origin: http://www.newsmth.net' -H 'Accept-Language: zh-CN,zh;q=0.8,en-US;q=0.6,en;q=0.4' -H 'Pragma: no-cache' -H 'Accept-Encoding: gzip, deflate'  --compressed