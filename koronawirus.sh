#!/bin/bash


# Polish goverment offical site with Covid-19 cases death and infections for whole country and different województwa
Strona_z_przypadkami_wirusa=$(curl https://www.gov.pl/web/koronawirus/wykaz-zarazen-koronawirusem-sars-cov-2)

# echo $Strona_z_przypadkami_wirusa

data=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'aktualne na \: [[:digit:]]*\.[[:digit:]]*\.[[:digit:]]* [[:digit:]]*\:[[:digit:]]*'`
echo $data


#Polska ogólnie
cala_polska=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'Cała Polska\;[[:digit:]]*\;[[:digit:]]*'`
cala_polska_zakazenia=`echo "$cala_polska" | grep -o '[[:digit:]].*'`
cala_polska_zgony=`echo "$cala_polska_zakazenia" | grep -o ';[[:digit:]]*'`
cala_polska_zakazenia=`echo "$cala_polska_zakazenia" | grep -o '[[:digit:]].*\;'`
cala_polska_zgony=`echo "$cala_polska_zgony" | grep -oP '[0-9]'`
cala_polska_zakazenia=`echo "$cala_polska_zakazenia" | grep -oP '[0-9]'`

cala_polska_zgony="$(echo -e "${cala_polska_zgony}" | tr -d '[:space:]')"
cala_polska_zakazenia="$(echo -e "${cala_polska_zakazenia}" | tr -d '[:space:]')"

cala_polska_zakazenia=$(($cala_polska_zakazenia))
cala_polska_zgony=$(($cala_polska_zgony))
echo ""
echo "Cała Polska"
echo $cala_polska_zakazenia "zakażeń"
echo $cala_polska_zgony "zgonów"
echo ""

#Wielkopolskie
wielkopolska=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'wielkopolskie\;[[:digit:]]*\;[[:digit:]]*'`
wielkopolska_zakazenia=`echo "$wielkopolska" | grep -o '[[:digit:]].*'`
wielkopolska_zgony=`echo "$wielkopolska_zakazenia" | grep -o ';[[:digit:]]*'`
wielkopolska_zakazenia=`echo "$wielkopolska_zakazenia" | grep -o '[[:digit:]].*\;'`
wielkopolska_zgony=`echo "$wielkopolska_zgony" | grep -oP '[0-9]'`
wielkopolska_zakazenia=`echo "$wielkopolska_zakazenia" | grep -oP '[0-9]'`

wielkopolska_zgony="$(echo -e "${wielkopolska_zgony}" | tr -d '[:space:]')"
wielkopolska_zakazenia="$(echo -e "${wielkopolska_zakazenia}" | tr -d '[:space:]')"

wielkopolska_zakazenia=$(($wielkopolska_zakazenia))
wielkopolska_zgony=$(($wielkopolska_zgony))

echo "Wielkopolskie"
echo $wielkopolska_zakazenia
echo $wielkopolska_zgony
echo ""

#Zachodniopomorskie
zachodniopomorskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'zachodniopomorskie\;[[:digit:]]*\;[[:digit:]]*'`
zachodniopomorskie_zakazenia=`echo "$zachodniopomorskie" | grep -o '[[:digit:]].*'`
zachodniopomorskie_zgony=`echo "$zachodniopomorskie_zakazenia" | grep -o ';[[:digit:]]*'`
zachodniopomorskie_zakazenia=`echo "$zachodniopomorskie_zakazenia" | grep -o '[[:digit:]].*\;'`
zachodniopomorskie_zgony=`echo "$zachodniopomorskie_zgony" | grep -oP '[0-9]'`
zachodniopomorskie_zakazenia=`echo "$zachodniopomorskie_zakazenia" | grep -oP '[0-9]'`

zachodniopomorskie_zgony="$(echo -e "${zachodniopomorskie_zgony}" | tr -d '[:space:]')"
zachodniopomorskie_zakazenia="$(echo -e "${zachodniopomorskie_zakazenia}" | tr -d '[:space:]')"

zachodniopomorskie_zakazenia=$(($zachodniopomorskie_zakazenia))
zachodniopomorskie_zgony=$(($zachodniopomorskie_zgony))

echo "Zachodniopomorskie"
echo $zachodniopomorskie_zakazenia
echo $zachodniopomorskie_zgony
echo ""

#Kujawsko-Pomorskie
kujawsko_pomorskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'kujawsko-pomorskie\;[[:digit:]]*\;[[:digit:]]*'`
kujawsko_pomorskie_zakazenia=`echo "$kujawsko_pomorskie" | grep -o '[[:digit:]].*'`
kujawsko_pomorskie_zgony=`echo "$kujawsko_pomorskie_zakazenia" | grep -o ';[[:digit:]]*'`
kujawsko_pomorskie_zakazenia=`echo "$kujawsko_pomorskie_zakazenia" | grep -o '[[:digit:]].*\;'`
kujawsko_pomorskie_zgony=`echo "$kujawsko_pomorskie_zgony" | grep -oP '[0-9]'`
kujawsko_pomorskie_zakazenia=`echo "$kujawsko_pomorskie_zakazenia" | grep -oP '[0-9]'`

kujawsko_pomorskie_zgony="$(echo -e "${kujawsko_pomorskie_zgony}" | tr -d '[:space:]')"
kujawsko_pomorskie_zakazenia="$(echo -e "${kujawsko_pomorskie_zakazenia}" | tr -d '[:space:]')"

kujawsko_pomorskie_zakazenia=$(($kujawsko_pomorskie_zakazenia))
kujawsko_pomorskie_zgony=$(($kujawsko_pomorskie_zgony))

echo "Kujawsko-Pomorskie"
echo $kujawsko_pomorskie_zakazenia
echo $kujawsko_pomorskie_zgony
echo ""

#Lubuskie
lubuskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'lubuskie\;[[:digit:]]*\;[[:digit:]]*'`
lubuskie_zakazenia=`echo "$lubuskie" | grep -o '[[:digit:]].*'`
lubuskie_zgony=`echo "$lubuskie_zakazenia" | grep -o ';[[:digit:]]*'`
lubuskie_zakazenia=`echo "$lubuskie_zakazenia" | grep -o '[[:digit:]].*\;'`
lubuskie_zgony=`echo "$lubuskie_zgony" | grep -oP '[0-9]'`
lubuskie_zakazenia=`echo "$lubuskie_zakazenia" | grep -oP '[0-9]'`

lubuskie_zgony="$(echo -e "${lubuskie_zgony}" | tr -d '[:space:]')"
lubuskie_zakazenia="$(echo -e "${lubuskie_zakazenia}" | tr -d '[:space:]')"

lubuskie_zakazenia=$(($lubuskie_zakazenia))
lubuskie_zgony=$(($lubuskie_zgony))

echo "Lubuskie"
echo $lubuskie_zakazenia
echo $lubuskie_zgony
echo ""

#Dolnośląskie
dolnoslaskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'dolnośląskie\;[[:digit:]]*\;[[:digit:]]*'`
dolnoslaskie_zakazenia=`echo "$dolnoslaskie" | grep -o '[[:digit:]].*'`
dolnoslaskie_zgony=`echo "$dolnoslaskie_zakazenia" | grep -o ';[[:digit:]]*'`
dolnoslaskie_zakazenia=`echo "$dolnoslaskie_zakazenia" | grep -o '[[:digit:]].*\;'`
dolnoslaskie_zgony=`echo "$dolnoslaskie_zgony" | grep -oP '[0-9]'`
dolnoslaskie_zakazenia=`echo "$dolnoslaskie_zakazenia" | grep -oP '[0-9]'`

dolnoslaskie_zgony="$(echo -e "${dolnoslaskie_zgony}" | tr -d '[:space:]')"
dolnoslaskie_zakazenia="$(echo -e "${dolnoslaskie_zakazenia}" | tr -d '[:space:]')"

dolnoslaskie_zakazenia=$(($dolnoslaskie_zakazenia))
dolnoslaskie_zgony=$(($dolnoslaskie_zgony))

echo "Dolnośląskie"
echo $dolnoslaskie_zakazenia
echo $dolnoslaskie_zgony
echo ""

#Lubelskie
lubelskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'lubelskie\;[[:digit:]]*\;[[:digit:]]*'`
lubelskie_zakazenia=`echo "$lubelskie" | grep -o '[[:digit:]].*'`
lubelskie_zgony=`echo "$lubelskie_zakazenia" | grep -o ';[[:digit:]]*'`
lubelskie_zakazenia=`echo "$lubelskie_zakazenia" | grep -o '[[:digit:]].*\;'`
lubelskie_zgony=`echo "$lubelskie_zgony" | grep -oP '[0-9]'`
lubelskie_zakazenia=`echo "$lubelskie_zakazenia" | grep -oP '[0-9]'`

lubelskie_zgony="$(echo -e "${lubelskie_zgony}" | tr -d '[:space:]')"
lubelskie_zakazenia="$(echo -e "${lubelskie_zakazenia}" | tr -d '[:space:]')"

lubelskie_zakazenia=$(($lubelskie_zakazenia))
lubelskie_zgony=$(($lubelskie_zgony))

echo "Lubelskie"
echo $lubelskie_zakazenia
echo $lubelskie_zgony
echo ""

#Łódzkie
lodzkie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'łódzkie\;[[:digit:]]*\;[[:digit:]]*'`
lodzkie_zakazenia=`echo "$lodzkie" | grep -o '[[:digit:]].*'`
lodzkie_zgony=`echo "$lodzkie_zakazenia" | grep -o ';[[:digit:]]*'`
lodzkie_zakazenia=`echo "$lodzkie_zakazenia" | grep -o '[[:digit:]].*\;'`
lodzkie_zgony=`echo "$lodzkie_zgony" | grep -oP '[0-9]'`
lodzkie_zakazenia=`echo "$lodzkie_zakazenia" | grep -oP '[0-9]'`

lodzkie_zgony="$(echo -e "${lodzkie_zgony}" | tr -d '[:space:]')"
lodzkie_zakazenia="$(echo -e "${lodzkie_zakazenia}" | tr -d '[:space:]')"

lodzkie_zakazenia=$(($lodzkie_zakazenia))
lodzkie_zgony=$(($lodzkie_zgony))

echo "Łódzkie"
echo $lodzkie_zakazenia
echo $lodzkie_zgony
echo ""

#Małopolskie
malopolskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'małopolskie\;[[:digit:]]*\;[[:digit:]]*'`
malopolskie_zakazenia=`echo "$malopolskie" | grep -o '[[:digit:]].*'`
malopolskie_zgony=`echo "$malopolskie_zakazenia" | grep -o ';[[:digit:]]*'`
malopolskie_zakazenia=`echo "$malopolskie_zakazenia" | grep -o '[[:digit:]].*\;'`
malopolskie_zgony=`echo "$malopolskie_zgony" | grep -oP '[0-9]'`
malopolskie_zakazenia=`echo "$malopolskie_zakazenia" | grep -oP '[0-9]'`

malopolskie_zgony="$(echo -e "${malopolskie_zgony}" | tr -d '[:space:]')"
malopolskie_zakazenia="$(echo -e "${malopolskie_zakazenia}" | tr -d '[:space:]')"

malopolskie_zakazenia=$(($malopolskie_zakazenia))
malopolskie_zgony=$(($malopolskie_zgony))

echo "Małopolskie"
echo $malopolskie_zakazenia
echo $malopolskie_zgony
echo ""

#Mazowieckie
mazowieckie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'mazowieckie\;[[:digit:]]*\;[[:digit:]]*'`
mazowieckie_zakazenia=`echo "$mazowieckie" | grep -o '[[:digit:]].*'`
mazowieckie_zgony=`echo "$mazowieckie_zakazenia" | grep -o ';[[:digit:]]*'`
mazowieckie_zakazenia=`echo "$mazowieckie_zakazenia" | grep -o '[[:digit:]].*\;'`
mazowieckie_zgony=`echo "$mazowieckie_zgony" | grep -oP '[0-9]'`
mazowieckie_zakazenia=`echo "$mazowieckie_zakazenia" | grep -oP '[0-9]'`

mazowieckie_zgony="$(echo -e "${mazowieckie_zgony}" | tr -d '[:space:]')"
mazowieckie_zakazenia="$(echo -e "${mazowieckie_zakazenia}" | tr -d '[:space:]')"

mazowieckie_zakazenia=$(($mazowieckie_zakazenia))
mazowieckie_zgony=$(($mazowieckie_zgony))

echo "Mazowieckie"
echo $mazowieckie_zakazenia
echo $mazowieckie_zgony
echo ""

#Opolskie
opolskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'opolskie\;[[:digit:]]*\;[[:digit:]]*'`
opolskie_zakazenia=`echo "$opolskie" | grep -o '[[:digit:]].*'`
opolskie_zgony=`echo "$opolskie_zakazenia" | grep -o ';[[:digit:]]*'`
opolskie_zakazenia=`echo "$opolskie_zakazenia" | grep -o '[[:digit:]].*\;'`
opolskie_zgony=`echo "$opolskie_zgony" | grep -oP '[0-9]'`
opolskie_zakazenia=`echo "$opolskie_zakazenia" | grep -oP '[0-9]'`

opolskie_zgony="$(echo -e "${opolskie_zgony}" | tr -d '[:space:]')"
opolskie_zakazenia="$(echo -e "${opolskie_zakazenia}" | tr -d '[:space:]')"

opolskie_zakazenia=$(($opolskie_zakazenia))
opolskie_zgony=$(($opolskie_zgony))

echo "Opolskie"
echo $opolskie_zakazenia
echo $opolskie_zgony
echo ""

#Podkarpackie
podkarpackie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'podkarpackie\;[[:digit:]]*\;[[:digit:]]*'`
podkarpackie_zakazenia=`echo "$podkarpackie" | grep -o '[[:digit:]].*'`
podkarpackie_zgony=`echo "$podkarpackie_zakazenia" | grep -o ';[[:digit:]]*'`
podkarpackie_zakazenia=`echo "$podkarpackie_zakazenia" | grep -o '[[:digit:]].*\;'`
podkarpackie_zgony=`echo "$podkarpackie_zgony" | grep -oP '[0-9]'`
podkarpackie_zakazenia=`echo "$podkarpackie_zakazenia" | grep -oP '[0-9]'`

podkarpackie_zgony="$(echo -e "${podkarpackie_zgony}" | tr -d '[:space:]')"
podkarpackie_zakazenia="$(echo -e "${podkarpackie_zakazenia}" | tr -d '[:space:]')"

podkarpackie_zakazenia=$(($podkarpackie_zakazenia))
podkarpackie_zgony=$(($podkarpackie_zgony))

echo "Podkarpackie"
echo $podkarpackie_zakazenia
echo $podkarpackie_zgony
echo ""

#Podlaskie
podlaskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'podlaskie\;[[:digit:]]*\;[[:digit:]]*'`
podlaskie_zakazenia=`echo "$podlaskie" | grep -o '[[:digit:]].*'`
podlaskie_zgony=`echo "$podlaskie_zakazenia" | grep -o ';[[:digit:]]*'`
podlaskie_zakazenia=`echo "$podlaskie_zakazenia" | grep -o '[[:digit:]].*\;'`
podlaskie_zgony=`echo "$podlaskie_zgony" | grep -oP '[0-9]'`
podlaskie_zakazenia=`echo "$podlaskie_zakazenia" | grep -oP '[0-9]'`

podlaskie_zgony="$(echo -e "${podlaskie_zgony}" | tr -d '[:space:]')"
podlaskie_zakazenia="$(echo -e "${podlaskie_zakazenia}" | tr -d '[:space:]')"

podlaskie_zakazenia=$(($podlaskie_zakazenia))
podlaskie_zgony=$(($podlaskie_zgony))

echo "Podlaskie"
echo $podlaskie_zakazenia
echo $podlaskie_zgony
echo ""

#Pomorskie
pomorskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'pomorskie\;[[:digit:]]*\;[[:digit:]]*'`
pomorskie_zakazenia=`echo "$pomorskie" | grep -o '[[:digit:]].*'`
pomorskie_zgony=`echo "$pomorskie_zakazenia" | grep -o ';[[:digit:]]*'`
pomorskie_zakazenia=`echo "$pomorskie_zakazenia" | grep -o '[[:digit:]].*\;'`
pomorskie_zgony=`echo "$pomorskie_zgony" | grep -oP '[0-9]'`
pomorskie_zakazenia=`echo "$pomorskie_zakazenia" | grep -oP '[0-9]'`

pomorskie_zgony="$(echo -e "${pomorskie_zgony}" | tr -d '[:space:]')"
pomorskie_zakazenia="$(echo -e "${pomorskie_zakazenia}" | tr -d '[:space:]')"

pomorskie_zakazenia=$(($pomorskie_zakazenia))
pomorskie_zgony=$(($pomorskie_zgony))

echo "Pomorskie"
echo $pomorskie_zakazenia
echo $pomorskie_zgony
echo ""

#Śląskie
slaskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'śląskie\;[[:digit:]]*\;[[:digit:]]*'`
slaskie_zakazenia=`echo "$slaskie" | grep -o '[[:digit:]].*'`
slaskie_zgony=`echo "$slaskie_zakazenia" | grep -o ';[[:digit:]]*'`
slaskie_zakazenia=`echo "$slaskie_zakazenia" | grep -o '[[:digit:]].*\;'`
slaskie_zgony=`echo "$slaskie_zgony" | grep -oP '[0-9]'`
slaskie_zakazenia=`echo "$slaskie_zakazenia" | grep -oP '[0-9]'`

slaskie_zgony="$(echo -e "${slaskie_zgony}" | tr -d '[:space:]')"
slaskie_zakazenia="$(echo -e "${slaskie_zakazenia}" | tr -d '[:space:]')"

slaskie_zakazenia=$(($slaskie_zakazenia))
slaskie_zgony=$(($slaskie_zgony))

echo "Śląskie"
echo $slaskie_zakazenia
echo $slaskie_zgony
echo ""

#Świętokrzyskie
swietokrzyskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'świętokrzyskie\;[[:digit:]]*\;[[:digit:]]*'`
swietokrzyskie_zakazenia=`echo "$swietokrzyskie" | grep -o '[[:digit:]].*'`
swietokrzyskie_zgony=`echo "$swietokrzyskie_zakazenia" | grep -o ';[[:digit:]]*'`
swietokrzyskie_zakazenia=`echo "$swietokrzyskie_zakazenia" | grep -o '[[:digit:]].*\;'`
swietokrzyskie_zgony=`echo "$swietokrzyskie_zgony" | grep -oP '[0-9]'`
swietokrzyskie_zakazenia=`echo "$swietokrzyskie_zakazenia" | grep -oP '[0-9]'`

swietokrzyskie_zgony="$(echo -e "${swietokrzyskie_zgony}" | tr -d '[:space:]')"
swietokrzyskie_zakazenia="$(echo -e "${swietokrzyskie_zakazenia}" | tr -d '[:space:]')"

swietokrzyskie_zakazenia=$(($swietokrzyskie_zakazenia))
swietokrzyskie_zgony=$(($swietokrzyskie_zgony))

echo "Świętokrzyskie"
echo $swietokrzyskie_zakazenia
echo $swietokrzyskie_zgony
echo ""

#Warmińsko-Mazurskie
warminsko_mazurskie=`echo "$Strona_z_przypadkami_wirusa" | grep -o 'warmińsko-mazurskie\;[[:digit:]]*\;[[:digit:]]*'`
warminsko_mazurskie_zakazenia=`echo "$warminsko_mazurskie" | grep -o '[[:digit:]].*'`
warminsko_mazurskie_zgony=`echo "$warminsko_mazurskie_zakazenia" | grep -o ';[[:digit:]]*'`
warminsko_mazurskie_zakazenia=`echo "$warminsko_mazurskie_zakazenia" | grep -o '[[:digit:]].*\;'`
warminsko_mazurskie_zgony=`echo "$warminsko_mazurskie_zgony" | grep -oP '[0-9]'`
warminsko_mazurskie_zakazenia=`echo "$warminsko_mazurskie_zakazenia" | grep -oP '[0-9]'`

warminsko_mazurskie_zgony="$(echo -e "${warminsko_mazurskie_zgony}" | tr -d '[:space:]')"
warminsko_mazurskie_zakazenia="$(echo -e "${warminsko_mazurskie_zakazenia}" | tr -d '[:space:]')"

warminsko_mazurskie_zakazenia=$(($warminsko_mazurskie_zakazenia))
warminsko_mazurskie_zgony=$(($warminsko_mazurskie_zgony))

echo "Warmińsko-Mazurskie"
echo $warminsko_mazurskie_zakazenia
echo $warminsko_mazurskie_zgony
echo ""


