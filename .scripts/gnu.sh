#/usr/bin/bash
wget -q -nc https://www.gnu.org/software/allgnupkgs -O /tmp/allgnupkgs.unformatted
cat  /tmp/allgnupkgs.unformatted | sed 's/<\/.*>.*$//' | sed 's/<.*>//' | sed '/^$/d' |  sort > /tmp/allgnupkgs
pacman -Qq |  sort > /tmp/allpkgs

cnt=0
have=$(cat /tmp/allpkgs | wc -l)
havegnu=$[ $(comm -12 /tmp/allpkgs /tmp/allgnupkgs | wc -l) + $cnt ]
i=$havegnu
for pkg in $(comm -23 /tmp/allpkgs /tmp/allgnupkgs); do
        if [ "$(pacman -Qi $pkg| grep URL |grep gnu.org)" != "" ];then
                cnt=$[ $cnt + 1 ]
        fi
        i=$[ $i + 1 ]
        if [ $[ i % ( $have / 89 ) ] -eq 0 ]; then
                havegnu=$[ $(comm -12 /tmp/allpkgs /tmp/allgnupkgs | wc -l) + $cnt ]
                echo -ne "your rig is $[ 100  * $havegnu / $have ]%...(investigating $[ 100 * $i / $have ]%)\r"
        fi
done
echo "your rig is $[ 100  * $havegnu / $have ]% GNU                          "

