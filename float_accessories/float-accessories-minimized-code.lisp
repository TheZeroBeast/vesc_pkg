@const-symbol-strings(def a -1)(def aa -1)(def y -1)(def he -1)(def bg -1)(def bq -1)(def bz -1)(def ai -1)(def ez -1)(def ht -1)(def du -1)(def ct -1)(def g -1)(def h -1)(def ih -1)(def il 1)(def ep'())(def hz'())(def cs'())(def ew 0)(def fz -1)(def gh'())(def cp 31)(def dz 0)(def gz 0)(def ej 0)(def dv 0)(def bh'(0xFF0000u32 0xFFFF00u32 0x00FF00u32 0x00FFFFu32 0x0000FFu32 0xFF00FFu32))(def hb'(0x00FFFF00 0x0000FF00 0x0000FFFF 0x000000FF 0x00FF00FF 0x00FF0000))(def e 1)(def gd 420i32)(def ei'((fu .(0 i gd -1))(crc .(1 i 60967 -1))(gm .(2 i -1 -1))(fg .(3 b 1 -1))(bw .(4 b 1 -1))(fa .(5 i 0 -1))(bd .(6 i 5 -1))(o .(7 i 0 -1))(db .(8 i 5 -1))(cr .(9 b 1 -1))(cd .(10 b 1 -1))(ho .(11 f -4.0 -1))(ax .(12 i 30 -1))(dl .(13 i 120 -1))(ao .(14 f 0.5 -1))(fx .(15 f 0.5 -1))(dj .(16 f 0.2 -1))(da .(17 f 0.5 -1))(cb .(18 i -1 -1))(hh .(19 i 10 -1))(el .(20 i 2 -1))(fy .(21 b 0 -1))(hd .(22 i 18 -1))(ii .(23 i 13 -1))(dq .(24 i 2 -1))(ae .(25 b 0 -1))(hi .(26 b 0 -1))(ge .(27 i 17 -1))(eh .(28 i 13 -1))(cc .(29 i 2 -1))(de .(30 b 0 -1))(gi .(31 b 0 -1))(dt .(32 i -1 -1))(fi .(33 i -1 -1))(k .(34 i 1 -1))(dc .(35 i -1 -1))(s .(36 i -1 -1))(bt .(37 i -1 -1))(dd .(38 i -1 -1))(et .(39 i -1 -1))(hs .(40 i -1 -1))(l .(41 i -1 -1))))@const-start(def af 0)(defun ab(){(setq af(mod(+ af 1)2))(var gk(if(= af 0)0xFFFFFFFF 0x00000000))(looprange i 0(length hz){(setix hz i gk)})(looprange i 0(length cs){(setix cs i gk)})})(def dn 0)(defun w(){(setq dn(mod(+ dn 1)2))(var gk(if(= dn 0)0x00FF0000 0x00000000))(looprange i 0(length cs){(setix cs i gk)})})(def dk 0)(defun bi(){(var io(ix hb dk))(looprange i 0(length hz)(setix hz i io))(looprange i 0(length cs)(setix cs i io))(setq dk(mod(+ dk 1)6))})(def cx 0)(defun ca(){(var m(bufget-u32 hb(* cx 4)))(looprange i 0(length hz)(setix hz i 0xFFFFFFFF))(looprange i 0(length cs)(setix cs i m))(setq cx(mod(+ cx 1)6))})(def ij 0)(def fp 1)(defun max(im b)(if(> im b)im b))(defun min(im b)(if(< im b)im b))(defun dr(){(var dp(+(length hz)(length cs)))(looprange i 0 dp {(var ad(abs(- i ij)))(var gl(max 0(- 255(* ad 51))))(var gk(color-make gl 0 0))(if(< i(length hz))(setix hz i gk)(setix cs(- i(length hz))gk))})(setq ij(+ ij fp))(if(or(>= ij dp)(< ij 0))(setq fp(* fp -1)))})(defun at(gx){(var gn(length gx))(var fb(floor(* gn ew)))(looprange eu 0 gn {(var ic 0)(var aq 0)(if(or(< eu fb)(and(= eu 0)(<= fb 1))){(if(or(< ew 0.2)(and(= eu 0)(<= fb 1))){(setq ic 255)(setq aq 0)} {(setq ic(floor(* 255(- 1(/ ew 0.8)))))(setq aq(floor(* 255(/ ew 0.8))))})} {(setq ic 0)(setq aq 0)})(var gk 0x00)(setq gk(bits-enc-int gk 16 ic 8))(setq gk(bits-enc-int gk 8 aq 8))(setix gx eu gk)})})(def ea 0)(defun r(){(var eg(length bh))(looprange eu 0(length hz){(var ec(mod(+ ea eu(length hz))eg))(var gk(ix bh ec))(setix hz eu gk)})(looprange eu 0(length cs){(var ec(mod(+ ea eu(length cs))eg))(var gk(ix bh ec))(setix cs eu gk)})(setq ea(mod(+ ea 1)eg))})(def ef 0)(defun am(){(var hg(mod ef 3))(var ii(length hz))(var eh(length cs))(var ci(floor(/ ii 2)))(var c(floor(/ eh 2)))(cond((= hg 0){(looprange i 0 ci(setix hz i 0x00000000))(looprange i ci ii(setix hz i 0x00FF0000))(looprange i 0 c(setix cs i 0x00000000))(looprange i c eh(setix cs i 0x00FF0000))})((= hg 1){(looprange i 0 ci(setix hz i 0x00FF0000))(looprange i ci ii(setix hz i 0x000000FF))(looprange i 0 c(setix cs i 0x00FF0000))(looprange i c eh(setix cs i 0x000000FF))})((= hg 2){(looprange i 0 ci(setix hz i 0x000000FF))(looprange i ci ii(setix hz i 0x00000000))(looprange i 0 c(setix cs i 0x000000FF))(looprange i c eh(setix cs i 0x00000000))}))(setq ef(mod(+ ef 1)3))})(defun ds(){(if(> bq 250.0){(ee)}{(if(and(!= bg 1)(!= bg 2)(!= bg 3)){(at ep)}{(hu bg)})})})(defun ee(){(var hh(length ep))(var en(*(abs ht)1.1112))(var be 0.0)(if(< en 1.0){(setq be en)} {(setq be 1.0)})(var dw(floor(* be hh)))(var hk 0x00FFFF00u32)(if(>(abs ht)0.85){(setq hk 0x00FF0000u32)} {(if(>(abs ht)0.7){(setq hk 0x00FF8800u32)})})(looprange eu 0 hh {(setix ep eu(if(< eu dw)hk 0x00000000u32))})})(defun hu(bg){(var hh(length ep))(var j(if(or(= bg 1)(= bg 3))0xFF 0x00))(var hy(if(or(= bg 2)(= bg 3))0xFF 0x00))(looprange eu 0 hh {(setix ep eu(if(< eu(/ hh 2))j hy))})})(defun gt(){(looprange eu 0(length ep){(setix ep eu 0x00)})(looprange eu 0(length hz){(setix hz eu 0x00)})(looprange eu 0(length cs){(setix cs eu 0x00)})})(defun bo(gx){(looprange eu 0(length gx){(var gk(color-split(ix gx eu)1))(var bf(color-make(ix gk 1)(ix gk 0)(ix gk 2)(ix gk 3)))(setix gx eu bf)})})(defun hj(cg){(if(=(an'fy)1){(setq ep(reverse ep))})(if(=(an'ae)1){(setq hz(reverse hz))})(if(=(an'de)1){(setq cs(reverse cs))})(var bw(an'bw))(var fx(an'fx))(var cb(an'cb))(var hd(an'hd))(var ge(an'ge))(var hi(an'hi))(var gi(an'gi))(var gf(if(or(< cg 0)(= bw 0))0x00(to-i(* 0xFF fx))))(var cl(if(or(>= cg 0)(= bw 0))0x00(to-i(* 0xFF fx))))(if(!= cg 0){(if(= hi 1){(setq hz(append(list gf)hz))})(if(= gi 1){(setq cs(append(list cl)cs))})(if(or(= hi 2)(= hi 3)){(var ha(take hz(length hz)))(setq hz(ey(+(length hz)4)0))(var bl 0)(looprange fq 0(length hz){(if(or(and(= hi 2)(or(= fq 2)(= fq 7)(= fq 13)(= fq 18)))(and(= hi 3)(or(= fq 1)(= fq 5)(= fq 10)(= fq 3)))){(setix hz fq gf)}{(setix hz fq(ix ha bl))(setq bl(+ bl 1))})})})(print hz)(if(or(= gi 2)(= gi 3)){(var ha(take cs(length cs)))(setq cs(ey(+(length cs)4)0))(var bl 0)(looprange fq 0(length cs){(if(or(and(= gi 2)(or(= fq 2)(= fq 7)(= fq 13)(= fq 18)))(and(= gi 3)(or(= fq 1)(= fq 5)(= fq 10)(= fq 3)))){(setix cs fq cl)}{(setix cs fq(ix ha bl))(setq bl(+ bl 1))})})})})(var el(an'el))(var dq(an'dq))(var cc(an'cc))(var ii(length hz))(var eh(length cs))(if(and(>= hd 0)(= cb hd)(= hd ge)){(var cv(append ep hz cs))(var dp(length cv))(var gw(rgbled-buffer dp el))(rgbled-color gw 0 cv il)(if(not-eq(first(trap(rgbled-init hd dq)))'exit-ok){(hr'hd -1)(ag"Invalid Pin")(fh'hd -1)(fh'crc(hw))}{(co 0.01)(rgbled-update eo)(co 0.01)})(free gw)} {(if(and(>= hd 0)(= hd ge)){(var cv(append hz cs))(var dp(length cv))(var gw(rgbled-buffer dp dq))(rgbled-color gw 0 cv il)(if(not-eq(first(trap(rgbled-init hd dq)))'exit-ok){(hr'hd -1)(ag"Invalid Pin")(fh'hd -1)(fh'crc(hw))}{(co 0.01)(rgbled-update eo)(co 0.01)})(free gw)}{(if(and(>= cb 0)(= cb ge)){(if(!= el cc)(bo ep))(var cv(append ep cs))(var dp(length cv))(var gw(rgbled-buffer dp cc))(rgbled-color gw 0 cv il)(if(not-eq(first(trap(rgbled-init cb el)))'exit-ok){(hr'cb -1)(ag"Invalid Pin")(fh'cb -1)(fh'crc(hw))}{(co 0.01)(rgbled-update hq)(co 0.01)})(free gw)}{(if(>= cb 0){(var hq(rgbled-buffer(length ep)el))(rgbled-color hq 0 ep(an'da))(if(not-eq(first(trap(rgbled-init cb el)))'exit-ok){(hr'cb -1)(ag"Invalid Pin")(fh'cb -1)(fh'crc(hw))}{(co 0.01)(rgbled-update hq)(co 0.01)})(free hq)})(if(>= ge 0){(var em(rgbled-buffer eh el))(rgbled-color em 0 cs il)(if(not-eq(first(trap(rgbled-init ge cc)))'exit-ok){(hr'ge -1)(ag"Invalid Pin")(fh'ge -1)(fh'crc(hw))}{(co 0.01)(rgbled-update em)(co 0.01)})(free em)})})(if(>= hd 0){(var eo(rgbled-buffer ii el))(rgbled-color eo 0 hz il)(if(not-eq(first(trap(rgbled-init hd dq)))'exit-ok){(hr'hd -1)(ag"Invalid Pin")(fh'hd -1)(fh'crc(hw))}{(co 0.01)(rgbled-update eo)(co 0.01)})(free eo)})})})})(defunret dm(){(var fj'())(var z(an'gm))(hr'gm -1)(var id(systime))(loopwhile-thd 150(<=(secs-since id)10){(if(and(>= z 0)(<=(secs-since id)5)){(setq fj(list z))}{(setq fj(can-scan))})(loopforeach gm fj {(setq fz gm)(br gm(list(assoc dy'ig)))(co 0.5)(if(>=(an'gm)0){(if(not-eq(an'gm)z){(fh'gm(an'gm))(fh'crc(hw))})(return 1)})})})(return 0)})(def ce 101)(def ah 102)(def dy'((ig . 0)(hf . 10)(hn . 24)(bv . 29)(ar . 202)))(defun br(gm ev){(send-data(append(list ce)ev)2 gm)})(defun status (){(var hc"status ")(setq hc(str-merge hc(str-from-n(if(<(secs-since dv)1)1 0)"%d ")))(setq hc(str-merge hc(str-from-n(if(<(secs-since dz)1)1 0)"%d ")))(setq hc(str-merge hc(str-from-n(if(<(secs-since gz)1)1 0)"%d ")))(send-data hc)})(defun ch(){(var dt(an'dt))(var fi(an'fi))(uart-stop)(if(>= fi 0){(if(not-eq(first(trap(gpio-configure fi'pin-mode-out)))'exit-ok){(hr'fi -1)(ag"Invalid Pin")(fh'fi -1)(fh'crc(hw))})})(if(>= dt 0){(if(not-eq(first(trap(gpio-configure dt'pin-mode-in-pu)))'exit-ok){(hr'dt -1)(ag"Invalid Pin")(fh'dt -1)(fh'crc(hw))}{(uart-start 1 dt -1 115200)(set-bms-val'bms-cell-num 15)(set-bms-val'bms-temp-adc-num 4)(set-bms-val'bms-temp-cell-max 45)})})})(defunret an(av){(var dg(assoc ei av))(if dg(return(car(cdr(cdr(cdr dg)))))(return nil))})(defun save-config(){(loopforeach fk ei {(var av(first fk))(if(eq av'crc){(fh av(hw))}{(fh av(an av))})})(send-data"Settings Saved!")})(defunret hw(){(var i 0)(var ik(-(length ei)1))(var di(bufcreate ik))(loopforeach fk ei {(var av(first fk))(if(not-eq av'crc){(bufset-i32 di i(an av))(+ i 1)})})(var crc(crc16 di))(free di)(return crc)})(defun bc(){(loopforeach fk ei {(var av(first fk))(var bm(gu av))(hr av bm)})})(defun restore-config(){(loopforeach fk ei {(var av(first fk))(var fc(if(eq av'fu)gd(ix fk 3)))(fh av fc)})(bc)(send-data"Settings Restored!")})(defun gu(av)(let((dx(first(assoc ei av)))(ga(second(assoc ei av))))(cond((eq ga'i)(eeprom-read-i dx))((eq ga'f)(eeprom-read-f dx))((eq ga'b)(eeprom-read-i dx)))))(defun fh(av bm)(let((dx(first(assoc ei av)))(ga(second(assoc ei av))))(cond((eq ga'i)(eeprom-store-i dx bm))((eq ga'f)(eeprom-store-f dx bm))((eq ga'b)(eeprom-store-i dx bm)))))(defun ag(bb)(send-data(str-merge"msg "bb)))(defun ey(fm bm)(map(fn(x)bm)(range fm)))(defun eb(cg ba hl){(var ay(if(< cg 0)ba hl))(var gs(if(< cg 0)hl ba))(looprange eu 0(length hz){(setix hz eu gs)})(looprange eu 0(length cs){(setix cs eu ay)})})(defun ie(){(if(!=(str-cmp(to-str(sysinfo'hw-type))"hw-express")0){(exit-error"bk running on hw-express")})(def u(+(first(sysinfo'fw-ver))(*(second(sysinfo'fw-ver))0.01)))(if(< u 6.05)(exit-error"hw-express cz bp df running 6.05"))(if(not-eq(gu'fu)gd)(restore-config)(bc))(if(!=(hw)(to-i(gu'crc))){(ag"Error: crc corrupt")(restore-config)})(spawn hv)(event-register-handler(spawn fe))(event-enable'event-data-rx)(spawn dm)(if(=(conf-get'wifi-mode)0){(ag"WiFi is disabled. Please enable and reboot.")}{(event-enable'event-esp-now-rx)(setq gh(list(an'dc)(an's)(an'bt)(an'dd)(an'et)(an'hs)))(by gh)(spawn hp)})(ch)(spawn ft)})(defun recv-config(fg bw fa bd o db cr cd ho ax dl ao fx dj da cb hh el fy hd ii dq ae hi ge eh cc de gi dt fi k){(hr'fg(to-i fg))(hr'bw(to-i bw))(hr'fa(to-i fa))(hr'bd(to-i bd))(hr'o(to-i o))(hr'db(to-i db))(hr'cr(to-i cr))(hr'cd(to-i cd))(hr'ho(to-float ho))(hr'ax(to-i ax))(hr'dl(to-i dl))(hr'ao(to-float ao))(hr'fx(to-float fx))(hr'dj(to-float dj))(hr'da(to-float da))(hr'cb(to-i cb))(hr'hh(to-i hh))(hr'el(to-i el))(hr'fy(to-i fy))(hr'hd(to-i hd))(hr'ii(to-i ii))(hr'dq(to-i dq))(hr'ae(to-i ae))(hr'hi(to-i hi))(hr'ge(to-i ge))(hr'eh(to-i eh))(hr'cc(to-i cc))(hr'de(to-i de))(hr'gi(to-i gi))(var gy(an'dt))(hr'dt(to-i dt))(var ed(an'fi))(hr'fi(to-i fi))(hr'k(to-i k))(if(or(!=(to-i dt)gy)(!=(to-i fi)ed)){(ch)})})(def hm [0 0 0 0 1 2 3 4 5 7 8 11 14 16 18 19 25 30 33 37 43 48 53 60 67 71 76 82 92 97 100])(defun v(bx)(let((fv(max 0(min(- bx 2700)(- 1500 1)))))(let((i(* fv(/ 30.0 1500))))(let((cj(floor i)))(let((f(- i cj)))(let((im(bufget-u8 hm cj))(b(bufget-u8 hm(+ cj 1))))(max 0(min(round(+ im(* f(- b im))))100))))))))(defun gv(dh){(atomic {(if(and(>(buflen dh)1)(=(bufget-u8 dh 0)ah)){(bufcpy dh 0 dh 1(-(buflen dh)1))(eval(read dh))})})(if(and(>(buflen dh)1)(=(bufget-u8 dh 0)ce)){(setq dv(systime))(match(cossa dy(bufget-u8 dh 1))(ig {(hr'gm fz)})(ar {(var bs(bufget-u8 dh 2))(hr'fg(bits-dec-int bs 0 1))(hr'bw(bits-dec-int bs 1 1))})(hn {(setq he(bufget-u8 dh 2))(setq a(bufget-u8 dh 3))(if(= he 3){(setq aa 0.0)(setq ht(bufget-u8 dh 4))}{(setq aa(to-float(bufget-i8 dh 4)))(setq ht 0.0)})(setq bq(/(to-float(bufget-i16 dh 5))10))(setq ez(/(to-float(bufget-i16 dh 7))10))(setq bz(/(to-float(bufget-i16 dh 9))10))(hr'ao(/(bufget-u8 dh 11)100.0))(hr'dj(/(bufget-u8 dh 12)100.0))(hr'da(/(bufget-u8 dh 13)100.0))})(bv {(setq ew(/(bufget-u8 dh 2)100.0))})(hf {(var aw(bufget-u8 dh 2))(if(= aw 69){(setq a(bufget-u8 dh 3))} {(setq aa(/(to-float(bufget-i16 dh 5))10))(setq y(/(to-float(bufget-i16 dh 7))10))(setq he(bufget-u8 dh 9))(setq bg(bufget-u8 dh 10))(setq bz(/(to-float(bufget-i16 dh 22))10))(setq bq(to-float(bufget-i16 dh 24)))(setq ai(/(to-float(bufget-i16 dh 26))10))(setq ez(/(to-float(bufget-i16 dh 28))10))(setq ht(-(/(bufget-u8 dh 30)100.0)0.5))(if(>= aw 2){(setq du(bufget-f32 dh 34))(setq ct(/(bufget-u8 dh 38)2.0))(setq g(/(bufget-u8 dh 39)2.0))})(if(>= aw 3){(setq h(bufget-u32 dh 41))(setq ih(/(bufget-u8 dh 53)2.0))})})})(_ nil))})(free dh)})(defun hv(){(var cg 0)(var bn 0)(var ia 1)(var ac(systime))(var er 0)(var hx 0)(var fs(secs-since 0))(var fo 0)(var bj 0)(loopwhile-thd 100 t {(setq fo(secs-since 0))(var gm(an'gm))(br gm(append(list(assoc dy'hn))'(102 108 111 97 116 45 97 99 99 101 115 115 111 114 105 101 115 49 46 48 0)))(br gm(list(assoc dy'ar)))(br gm(list(assoc dy'bv)))(if(=(an'fg)1){(setq ep(ey(an'hh)0))(setq hz(ey(an'ii)0))(setq cs(ey(an'eh)0))(setq cg 0)(var cw 10)(if(= he 4)(setq cw(*cw -1)))(if(> bq cw){(setq cg 1)})(if(< bq(* cw -1)){(setq cg -1)})(if(=(an'cr)1){(if(> aa 70)(setq hx 1)(setq hx 0))})(if(= e 1){(setq cg 0)(hr'ax 10)(hr'dl 20)(if(<(secs-since ac)(an'ax)){(setq cg ia)(setq ia(* ia -1))})})(ck(secs-since ej)bn cg er hx)(setq bn cg)(if(or(!= cg 0)(= hx 1)){(setq er 0)(setq ej(systime))})(if(< er 2)(hj cg))} {(gt)(hj cg)})(setq fs(+ fs 0.1))(var cq(- fs(secs-since 0)))(if(> cq 0){(co cq)(setq fs(secs-since 0))})})})(defun send-config(){(var q"settings ")(loopforeach fk ei {(let((av(first fk))(ga(third fk))){(var value(gu av))(setq q(str-merge q(cond((eq ga'b)(str-from-n value"%d "))((eq ga'i)(str-from-n value"%d "))((eq ga'f)(str-from-n value"%.2f ")))))})})(send-data q)(send-data"Settings Read!")})(defun by(gj){(esp-now-start)(esp-now-del-peer gh)(esp-now-add-peer gh)})(def bu 0)(defun pair-pubmote(cf){(if(=(conf-get'wifi-mode)0){(ag"WiFi is disabled. Please enable and reboot.")}{(cond((>= cf 0){(hr'l cf)(setq cp(systime))(setq bu 1)})((= cf -1){(by gh)(fh'dc(ix gh 0))(fh's(ix gh 1))(fh'bt(ix gh 2))(fh'dd(ix gh 3))(fh'et(ix gh 4))(fh'hs(ix gh 5))(fh'l l)(fh'crc(hw))(setq bu 0)})((= cf -2){(setq gh'())(fh'dc -1)(fh'crc(hw))(setq bu 0)}))})})(defun hp(){(var fs(secs-since 0))(var fo 0)(var bj 0)(loopwhile-thd 100 t {(setq fo(secs-since 0))(if(and(>(secs-since cp)30)(>= bu 2)){(atomic(pair-pubmote -2))})(if(= bu 1){(esp-now-del-peer gh)(setq gh'(255 255 255 255 255 255))(esp-now-add-peer gh)(esp-now-send gh"42069")(esp-now-del-peer gh)(setq bu 2)})(if(and(= bu 0)(>=(an'dc)0)(<=(secs-since dz)5)(>=(an'gm)0)){(br(an'gm)(list(assoc dy'hf)3))(var dh(bufcreate 32))(bufset-u8 dh 0 69)(bufset-u8 dh 1 a)(bufset-i16 dh 2(floor(* aa 10)))(bufset-i16 dh 4(floor(* y 10)))(bufset-u8 dh 6 he)(bufset-u8 dh 7 bg)(bufset-i16 dh 8(floor(* bz 10)))(bufset-i16 dh 10(floor bq))(bufset-i16 dh 12(floor(* ai 10)))(bufset-i16 dh 14(floor(* ez 10)))(bufset-u8 dh 16(floor(*(+ ht 0.5)100)))(bufset-f32 dh 17 du'little-endian)(bufset-u8 dh 21(floor(* ct 2)))(bufset-u8 dh 22(floor(* g 2)))(bufset-u32 dh 23 h)(bufset-u8 dh 27(floor(* ih 2)))(bufset-i32 dh 28(an'l))(esp-now-send gh dh)(free dh)})(setq bj(secs-since 0))(setq fs(+ fs 0.05))(var cq(- fs(secs-since 0)))(if(> cq 0){(co cq)(setq fs(secs-since 0))})})})(defun fe()(loopwhile t(recv((event-esp-now-rx(? gj)(? gq)(? dh)(? ak))(ff gj gq dh ak))((event-data-rx .(? dh))(gv dh))(_ nil))))(defun hr(av value){(let((dg(assoc ei av)))(if dg(loopforeach gr ei {(if(eq(car gr)av)(setcdr gr(list(car(cdr gr))(car(cdr(cdr gr)))(car(cdr(cdr(cdr gr))))value)))})(setq ei(cons(cons av(list 0'ga 0 value))ei))))})@const-end(defun ff(gj gq dh ak){(if(= bu 2){(setq gh gj)(esp-now-add-peer gh)(esp-now-send gh(an'l))(esp-now-del-peer gh)(setq bu 3)}{(if(and(=(buflen dh)15)(=(bufget-i32 dh 11)(an'l))){(setq dz(systime))(var jsx(bufget-f32 dh 0'little-endian))(var jsy(bufget-f32 dh 4'little-endian))(var bt-c(bufget-u8 dh 8))(var bt-z(bufget-u8 dh 9))(var is-rev(bufget-u8 dh 10))(cu(an'gm)(ek(to-str(list jsy jsx bt-c bt-z is-rev))"(""(set-remote-state "))})})(free dh)})(defun co(x)(yield(* x 1000000)))(defun ck(au bn cg er hx){(var ax(an'ax))(var az(secs-since dv))(if(or(> az ax)(< au(an'dl))){(if(>(length ep)0){(if(=(an'o)0)(ds))})(var n(an'fa))(setq il(an'ao))(var ax(an'ax))(if(>= az ax){(setq n 0)}{(if(and(<=(secs-since 0)ax)(= cg 0))(setq n(an'db)))(if(> au ax){(setq n(an'bd))(setq il(an'dj))})})(var ba 0x00)(var hl 0x00)(if(and(>(length hz)0)(>(length cs)0)){(cond((or(= n 1)(= hx 1)){(at hz)(at cs)})((= n 0){(setq ba 0xFFFFFFFFu32)(setq hl 0x00FF0000u32)(eb cg ba hl)})((= n 2){(setq ba 0xFF00FFFFu32)(setq hl 0x00FF00FFu32)(eb cg ba hl)})((= n 3){(setq ba 0xFF0000FFu32)(setq hl 0x0000FF00u32)(eb cg ba hl)})((= n 4){(setq ba 0xFFFFFF00u32)(setq hl 0x0000FF00u32)(eb cg ba hl)})((= n 5){(r)})((= n 6){(ab)})((= n 7){(bi)})((= n 8){(ca)})((= n 9){(dr)})((= n 10){(am)}))(if(and(=(an'cd)1)(<= ez(an'ho)))(w))})} {(if(< er 2){(gt)(setq er(+ er 1))})})})(defun ft(){(var gg 5)(var fs(secs-since 0))(var fo 0)(var bj 0)(var fd(bufcreate 64))(loopwhile-thd 100 t {(setq fo(secs-since 0))(if(>=(an'dt)0){(var fr(uart-read fd(buflen fd)nil nil 0.5))(if(> fr 5){(var fw 0)(var al 0)(var aj 0)(var fl 0)(var cy 0)(var i 0)(loopwhile(and(< i(- fr 5))(not(and(= fw 1)(= al 1)(= aj 1)(= fl 1)(= cy 1)))){(if(and(<(+ i 2)fr)(=(bufget-u8 fd i)0xFF)(=(bufget-u8 fd(+ i 1))0x55)(=(bufget-u8 fd(+ i 2))0xAA)){(setq gz(systime))(if(<(+ i 3)fr){(var ex(bufget-u8 fd(+ i 3)))(var gp(+ i 4))(loopwhile(and(< gp(- fr 2))(not(and(<(+ gp 2)fr)(=(bufget-u8 fd gp)0xFF)(=(bufget-u8 fd(+ gp 1))0x55)(=(bufget-u8 fd(+ gp 2))0xAA)))){(setq gp(+ gp 1))})(var fm(- gp i))(if(>= fm 6){(var es(bufcreate fm))(bufcpy es 0 fd i fm)(if(>=(buflen es)2){(var crc(bufget-u16 fd(- gp 2)))(var ib 0)(looprange fq 0(-(buflen es)2){(setq ib(+ ib(bufget-u8 es fq)))})(if(eq crc ib){(cond((and(= ex 2)(= al 0)){(setq al 1)(var gb 0)(var cn 0)(looprange fq 4(-(buflen es)4){(if(eq(mod fq 2)0){(if(and(= gb 0)(=(an'k)1)){(set-bms-val'bms-soc(/(v(bufget-i16 es fq))100.0))})(var cm(/(bufget-i16 es fq)1000.0))(set-bms-val'bms-v-cell gb cm)(setq gb(+ gb 1))(setq cn(+ cn cm))})})(set-bms-val'bms-v-tot cn)})((and(= ex 3)(= aj 0)){(setq aj 1)(if(=(an'k)0){(set-bms-val'bms-soc(/(bufget-u8 es 4)100.0))})})((and(= ex 5)(= cy 0)){(setq cy 1)(var p 0.055)(var ap(*(bufget-i16 es 4)p))(set-bms-val'bms-i-in-ic ap)})((and(= ex 0)(= fw 0)){(setq fw 1)})((and(= ex 4)(= fl 0)){(setq fl 1)(set-bms-val'bms-temp-ic(bufget-i8 es(-(buflen es)3)))(looprange fq 4(-(buflen es)3){(set-bms-val'bms-temps-adc(- fq 4)(bufget-i8 es fq))})}))(setq i gp)})})(free es)})(setq i gp)} {(setq i(+ i 1))})} {(setq i(+ i 1))})})(send-bms-can)}{ })(if(>=(an'fi)0){(if(and(>(secs-since gz)gg)(<(secs-since dv)1)(or(= he 0)(> he 5))){(gpio-write(an'fi)1)(co 0.1)(gpio-write(an'fi)0)})})})(setq bj(secs-since 0))(setq fs(+ fs 0.05))(var cq(- fs(secs-since 0)))(if(> cq 0){(co cq)(setq fs(secs-since 0))})})})(ie)