Config { font = "-*-Fixed-Bold-R-Normal-*-13-*-*-*-*-*-*-*"
       , bgColor = "black"
       , fgColor = "grey"
       , position = TopW L 90
       , commands = [ Run Weather "LEGR" ["-t"," <tempC>C","-L","15","-H","27","--normal","green","--high","red","--low","lightblue"] 36000
                    , Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
                    , Run Memory ["-t","Mem: <usedratio>%"] 10
                    , Run Swap [] 10
                    , Run Date "%a %b %_d %_H:%M" "date" 10
                    , Run BatteryP ["BAT0"]["-t", "<acstatus>", "-L", "10", "-H", "80", "-l", "red", "-h", "green", "--", "-O", "Charging", "-o", "Battery: <left>%"] 10
                    , Run StdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{ %cpu% %memory% %swap% | <fc=#ee9a00>%date%</fc> |%LEGR% | %battery%   "
       }
       
