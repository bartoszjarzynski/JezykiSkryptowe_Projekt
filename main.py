import time
start_time = time.perf_counter()

def zadanieLiterki(txt1, txt2):

    x = list(txt1)
    y = list(txt2)

    x = x.sort()
    y = y.sort()

    if (x == y):
        return 1
    return 0

def kroki(nazwa1, nazwa2, rozmiar):
    jas = list(nazwa1)
    malgosia = list(nazwa2)

    i = 0
    j = 0
    wynik = 0

    while (i < rozmiar):
        j = i

        while (jas[j] != malgosia[i]):
            j += 1

        while (i < j):
            tmp = jas[j]
            jas[j] = jas[j - 1]
            jas[j - 1] = tmp
            j -= 1
            wynik += 1
        i += 1
    return wynik

plikinput = open("input.txt","r")
text = plikinput.read()

lines = text.split("\n")
lines = [line.replace(' ', '') for line in lines]

n = int(lines[0])
jasiek = str(lines[1])
malgorzata = str(lines[2])

if n < 1 or n > 1000001 or n!=len(jasiek) or n!=len(malgorzata):

    error = open("output.txt", "w")
    error.write("Blad podania parametru n lub n!=jasiek/malgosia")
    error.close()

elif (zadanieLiterki(jasiek, malgorzata)):

    plik = open("output.txt", "w")
    plik.write(str(kroki(jasiek, malgorzata, n)))
    plik.close()

else:
     print(-1)

czas = time.perf_counter() - start_time

stat = open("statystyka.txt", "w")
stat.write(str(czas) + " sekund")
stat.close()
