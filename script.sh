#!/bin/bash

#eksik değer girildi mi diye kontrol ediyoruz
if [ "$#" -ne 7 ]; then
    echo "Hatalı kullanım. Lütfen doğru sayıda argüman sağlayın."
    exit 1
fi

permission=$1
user=$2
group=$3
file=$4
ad=$5
soyad=$6
numara=$7

#mevcut olmayan bir dosya girildi mi diye kontrol ediyoruz.
if [ ! -e "$file" ]; then
    echo "Hata: Dosya mevcut değil."
    exit 1
fi

echo "$ad $soyad $numara" >> "$file"

chmod "$permission" "$file"
chown "$user:$group" "$file"

ls -l "$file"
cat "$file"
