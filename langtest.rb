require "naive_bayes"

#name   = :name,    "Sarah"
#age    = :age,     "33"
#weight = :weight,  "220"
#
#puts "#{name[0]}:   #{name[1]}"
#puts "#{age[0]}:    #{age[1]}"
#puts "#{weight[0]}: #{weight[1]}"

system("clear")

language = NaiveBayes.load('_data/language/bianca.nb')
memory   = NaiveBayes.load('_data/memories/mymemories.nb')
imagery  = NaiveBayes.load("_data/imagery/image_recognition.nb") 

# Language Test
langtest = "BIANCA: La cabine braun es azeoir pedecise."

# Memory Test
memtest  = "kkkkkkkkOOOOOOOOO0000000KKKKKKXXXXXXXNNNWWWWWWWMMMMMMMMMMMMMMMMMMMMMMMWWWWWNNNXXKKK000OOOOOkkkkkkkxxxxxxxxxxxxddddddddddddddddddddxxxxxk000KKKKKXXXXN
kkkkkkkkkOOOOOOOOOO0000000KKKKKKKKKXXXXXXNNNWWWWWWWWWMMMMMMMMMMMMMMWWWWWNNNXXXKKK000OOOOkkkkkkkkxxxxxxxxxxxxxdddddddddddddddddddddxxxkO0000KKKKXXXXXN
kkkkkkkkkkkOOOOOOOOOOOO0000000000KK0KKKKKXXXXNNNNNWWWWWWWWWWWWWWWWWNNNNXXXKKKK000OOOkkkkkkxxxxxxxxxxxxxxdddddddddddddddddddddddddxxkOO0000KKKKKKK0kkK
0OkkkkkkkkkkOOOOOOOOOOOOOOOOO000000000000KKKKKXXXXXNNNNNNNNNNNNNNXXXXXKKKK0000OOOOkkkkxxxxxxxxxxxxxxxxxdddddddddddddddddddddddddxkOOO00000KKKKK0dodxk
000OOkkkkkkkkkOOOOOOOOOOOOOOOOOOOOOOOOOO000000KKKKKKXXXXXXXXXXKKKKKKK00000OOOOkkkkkxxxxxxxxxxxxxxxxdxxddddddddddddddddddddddddxkkOOO0000000K0kdollodd
00000OOOOOOO0OO000000000000000OOOOOOOOOOOO00000000KKKKKKKKKKKKK00000000OOOOkkkkxxxxxddddddddxxxxxxxxxxdddddddddddddddddddddddxkOOOOO00000Oxdolllloodo
K000000000KKKKKKKKKKKKKXXXXXXXXKO0K00K0KKKKKKXXXXXXXXXXXXXXXXXXXKKKKKK0000OOOkkkkkxxxxxxxxxxxxxxxxxxxxxxxddddddddddddddddddxkkOOOOO000Oxolccllooloddo
KK000000KKKKKKKKKKKKKXXXXXXXXKkxllllllloooddddxxxxxxOkkOOkkkOOOkkxkOOkkkkxkkxxxdxxoooodoodOO0000000OOOOOOOOOkkkkkkkkkkkkkkkkkkOOOOOOkdccccloooooooddo
KKKK000KKKKKKKKKKKXXXXXXXXXXX00kocccccccccllllooooooooooddooooooooodoooolllllllclolc:;;;;;cok000000000000OOOOOOOOOOOOkkkkkkOOOOOOkdlcccllooooooooodxo
KKKK00KKKKKKKKKKKXXXXXXXXXXXXXX0lcc::::::::ccclllllllllooooooooooooodddxxdooollooccc:ccloclxO0000000000000OOOOOOOOOOOOOOOOOOOkkxoccclooooooooooodddxd
KKKKKKKKKKKKKKKKXXXXXXXXXXXXXXXOlc::;:::;;::::cccccclllllllooodxxkOKXXXXK0OxkkkxkkOOOkxxollk00KKK00000000000OOOOOOOOOOOOOOkkxdlccldddooooooooooddddxd
KKKKKKKKKKKKKKKXXXXXXXXXXXXXXXXkc::;;;;;;;;;;;:::::cccccccloxkO0XXNWWXKkxxollloddxdk00xdoookO0KKKKK00000000000OOOOOOOOOOkkxoc:clodooollllloooooollldd
KKKKKKKKKKKKKKXXXXXXXXXXXXXXXXKxc::;;;;;,;,;;;;;;;:::::cclodk0KXXNNNKOxdlc:;,,;;;:lxkxoccccldk0K0KK0000000000OOOOOOOOOOkolcccclolllllloolooolcc:ccldd
KKKKKKKKKKKKKXXXXXXXXXXXNNNXXXKdc:;;,;;,,,,,,,,;,,;;;::ccldk00Oxxxxdlc:;;,,,,,,,,,,;;;;,,;;:coxkOOO0OOOOOOOOOOOOOOOOOkkxlccccllllllloooollccccccccldd
KKKKKKKKKKXXXXXXXXXXXXXXXNXXXX0l:;;,,,,,,,,''',,,,,;;;;ccoxkkdolcc:;;,,,''',,;::::::::;,''',;:coxxxxxxxxxxxxxxdOOOOOOkkxoccccccllooooooollllllllllldd
KKKKKKKKKKKXXXXXXXXXXXXNNNXXXXOc:;;,,,,,,''''',,,,,;;::coxOkoc:;;,,,'''',,;:cllllllcc::;,'..'',;cclc:clooolldOdOOOOOOkkxoclcccllloooodoolllloollllldd
KKKKKKKKKKXXXXXXXXXXXXXNNNNXXXxc;;,,'',',''''''',,,,,;codool:,,'''''.'',;cllllllllllcc::;,'.....';:::llodooloOdOOOOOOkkxocllcccclodollccllllllllllldd
KKKKKKKKKKXXXXXXXXXXXXXNNXXXXKo:;,,''''''''''''''',:ccldolc:;''.....'',:cllllllllllcccc::;,'.....',:ccooodocoOdOOOOOOkkxocc:;;:looc::::cccclllllllldd
KKKKKKKKXXXXXXXXXXXXXXNNNNXXX0l:;,''.'''''....'',;;:loool:;,'......';::ccllllllcccccccccc:;,.......,;:cc:c::lOdOOOOOOkkxl:;;,,;;:::;;:cc::::clllclldx
KKKKKKKKXXXXXXXXXXXXXXNNNNXXXOl;;,''.'.''....',;:coooool:,'.......',::ccccclcccccccccccc::;,'.......,:loddddxkdOOOOOOkkxl:,,,,;;:ccccll:;;;;;::ccllod
KKKKKKKKXXXXXXXXXXXXXXNNNXXXXkc;,''..........'',::loool:,'........',::cccccccccccccccccc::;,'.......';cldxxxxxkOOOOOOkkxl:,,,,;cc::lllc;;;;;;;;;:codx
KKKKKKKKXXXXXXXXXXXXXXXXXXXXXx:;,''..........';:::lool:;,.........',;::::::::::::::;;;;;;;,,'.. .....,:odkOOO0OOOOOOOkkxl:,,,,;;,;;;:c:;;;;;;;;;::cox
KKKKKKKKXXXXXXXXXXXXXXXXXXXXKx:;,''.........,;:ccoooc:;,.............''...'',;;,'.............  .....';coxkOO00OOOOOOkkxl:,,;;;;,,,;;:cc:;;;;;;;::clx
KKKKKKKKXXXXXXXXXXXXXXXXXXXXKd;,,'.........',,:cclll:;,..............''.',,'.''..'.............   ....,:odkOO000OOOOOOkxl:,;:;;:;,,,;;:cc:;;:::ccclod
KKKKKKKKKXXXXXXXXXXXXXXXXXXX0o;,''........'',;:ccccc:,'..............''',,,,.','.,''''''..'....    ...':odkkOOOOOOOOOOkkl:,,;;;;;;;;:cllllllllllloood
KKKKKKKKKKXXXXXXXXXXXXXXXXXXOl;,'..........',;:::ccc;'...............'',,,'.';;,..,,,,,,,,''...    ...':cdxkkOOOOOOOOOkxl:::::cccccccclcclllodxkkO0OO
KKKKKKKKKKKXXXXXXXXXXXXXXXXKOl,,'..........',:::ccc:,'...... .. ...........',;;;,..'''''......     ...';d000000OOOOOOOOkocllloooollloddxxkOOO0KXXXNNN
KKKKKKKKKKKKXXXXXXXXXXXXXXXKkc,''.........',;:::::;,''.....     .....'',,,,,',,'.''',,,'''''..      ...,cdkkxx0KKKK0OOOkkolloddooodxxkkxlcc:;;ckXXNNN
KKKKKKKKKKKKKXXXXXXXXXXXXXKKx:,''........'',;:cll:,,'.....      .....',,,,''',,'''',,,,,,''..       ...',::ccllodxkOOOxoooxdkxodooxxxkkOOOxooooxkkOKN
KKKKKKKKKKKKKKXXXXXXXXXXXXKKx;''.......',,,:cccc:;,'......       ....',,,,,,;;;;,,,,,,,,,''..       ...''',;:ccclloooooolcddkxxOxkOxlllloolllolooddON
KK000KKKKKKKKKKKKXXXXXXXXKK0d;''......',,;ccccc:;;,'.......      ....'',,,,,,,,,,,,,,,,,,'...        ..'''',;:ccclllolllooddkxk0kkOkOkxddxxxxddddxkKN
00000KKKKKKKKKKKKKKKKKKKKKKOo;''.....',;;:ccllc:;,'.......    . ......''''.........'',,,'...          ....'',;:cccclllllllloxxO0xxddkOxdxkddddddxxkOX
000000KKKKKKKKKKKKKKKKKKKKKkl,''.....',;clooolc;,''.......       .....''''''''''''',,,,''...           ..'''',::cccclllcllcoxocddxOkkkddddooolloooldX
000000KKKKKKKKKKKKKKKKKKKK0kc,''....',;:lodccc:,'........         ....''',,,,,,,,,,,,'''....           .....',;:ccccllllllcllccoooxokKKK0OkddxxxollxK
000000000000KKKKKKKKKKKKKK0xc,''...':oO0Odoo:;;'.........          .....'',,,,,,,,,,'.....              ......,;:cccclllllcc:;,'',,::ccc:::ccccc:;:lO
000000000000000000KKKKKKK00x:''''';okKXK0xllc;,'.....                ......'''''''.......                .....',;:::cllllcc::l:,'',;c:::c::::;:::cllk
OOOO0000000000000000000000Od:,,,cxKKO0K0kxoc:,'......                 ..................                 .....',::clcllllcc:',.,,,,:dlcco;,,,,,;:oxkO
OOOOOOOOOkkOOO0O00OkxxkxdkOo;:dOXK0Odokxdoc:;,'.....                   ..................                .....'',;:llloxdlc:,c....;ck0xxd:cll:;cdkkkk
Okkxdddddc:lxkOOOxlloc:::ldox0KXOkkxl:colc:;,'.....                  ......................               .....''',;:::cddoc:c;...';x0OOx:looooxXXXXX
xl:;,,,,:;,,;:clllccccccclx0kxodkdlc::::c;,,'.....                   ..............'.''....                .......',;:;:;;:oddl'..',dkOkocoxkkkk0KXK0
l;',,;;,'',,,,;;;codddddx0Okxlcc:llc;;;;,;'''.....                  .....''''''''''''''''..                .......'',,;;;;;;cxd;.'.,kOkxocoKNXXXXXK0O
;;;::,''....',;lddodddx00Oxxdl::;;;;;,,,,''.......                  .....'''',,,,,,,,,,,'..                ........',,,,;,,,;:ll;,:;k0oll:okO0XNXXXXX
,',,'......,,::clodxO00Okxddlc:;;,,,,,''''........                  ....''',,,,,,,;;;;;,'..                ........''',,,,,,;;:clcllxOdll:ldx0NWWWWNN
....''''',:c;;;''',lOOkxxdolc:;,,,,'''''........                     ..''',,,,,;;;;;;;,'...                ........''',,''',;;;:::looxool:lodxkkOO00K
............',,;,:xOkxxdoolc:;,,''''''..'.....                       ..''',,,;;;;;;;;,......               ...........','''',;;;;:::;,;::;::okOO0OOkk
...............'okkxxddoolc:;,,''''''....... .                       ...'',,,,,,;;;;'.......               ............'''.'',;;;;;;:c;;,,,,,;:lllodd
.............';xkxxoooollc:;;,,,'''''.........                       ...'',,,,;;,,,'........              .................''',,,;,;;:;,,'...,llccccc
........''',,cxxdoooccccccc:;,,'''''.........                       ......',,,,''...........              ....................''',,,,;;;;'....';:::::
....''.''''':oollcc:::;;;;,,,,,'''''..........                     .........'...............              .....................''''',,,;:'.....'''',;
.''.....''';odoolcc:;;;,,,,,,,,''''.............                 ...........................              .....................'''.''',,;,........',c
.......''',lxxdddoolc:;;,,''''''''..............              .............................             .............................''',;;'......;;c
.......',:dO0000Okxdolc::;,,''...................           ..............................             ...............................''',;;'.....;::
''''''',o0KK0000Okkxollccc::;,''.................         ...................................           ................................'''''.....;c:
....',lOKKK00OOkxxxdolcc::::;;;,'...............         .....................................         ...................................'..,....;cc
..':oOKKK0OOkxddooollcc::::;;;;,,'...............        ......................................        ............... ......................''...;cc
,;oOKXXXKK0kxdoollllcc::::;;;;,,''...............        .......................................       ..............  ......................''...,cc"

vistest = "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMWXXXXWMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMNOddddxodooddoodOXMMMMMMMMMMMMMM
MMMMMMMMMMMNxodOXWMMMMMMMMMMWKkoldXMMMMMMMMMMM
MMMMMMMMM0ol0MMMMMMMMMMMMMMMMMMMW0cc0MMMMMMMMM
MMMMMMMWxdKWMMMMMMMMMMMMMMMMMMMMMMW0coNMMMMMMM
MMMMMMKckMMMMMMMMMMMMMMMMMMMMMMMMMMMWxlXMMMMMM
MMMMMO;OMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO:0MMMMM
MMMMK;0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKlNMMMM
MMMMooWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMxkMMMM
MMMW:OMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0lMMMM
MMMX'0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXlMMMM
MMMX,0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0:MMMM
MMMM:dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMkoMMMM
MMMMd;XMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWckMMMM
MMMMN:cXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNlcWMMMM
MMMMMK;;XMMMMMMMMMMMMMMMMMMMMMMMMMMMMNclNMMMMM
MMMMMMNo,kWMMMMMMMMMMMMMMMMMMMMMMMMM0cxWMMMMMM
MMMMMMMMO,:0WMMMMMMMMMMMMMMMMMMMMM0ccKMMMMMMMM
MMMMMMMMMNxc:xKWMMMMMMMMMMMMMMMXkll0WMMMMMMMMM
MMMMMMMMMMMMXxlclxOKXNMMNXKOxoookXMMMMMMMMMMMM
MMMMMMMMMMMMMMMMXOxxodxxddxk0NMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"


langresult = language.classify(langtest)
memresult  = memory.classify(memtest)
visresult  = imagery.classify(vistest)

langbayes = langresult
membayes  = memresult
visbayes  = visresult

langstats = :langstat, " #{langbayes[0]} #{langbayes[1]}"
memstats  = :memstat,  " #{membayes[0]}  #{membayes[1]}"
vistats   = :vistats,  "#{visbayes[0]}  #{visbayes[1]}"

puts "#{memstats[0]}:  #{memstats[1]}"
puts "#{langstats[0]}: #{langstats[1]}"
puts "#{vistats[0]}    #{vistats[1]}"
