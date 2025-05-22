--- Available options:
--- ar: for Arabic
--- bg: for Bulgarian
--- cz: for Czech
--- de: for German
--- en: for English
--- es: for Spanish
--- fr: for French
--- hu: for Hungarian
--- it: for Italian
--- pl: for Polish
--- pt: for Portuguese
--- ro: for Romanian
--- ru: for Russian
--- tr: for Turkish
--- ko: for Korean
Language = "en"
Languages = {

    --- Title displayed at the top of the slot machine UI
    --- Supports basic HTML formatting (e.g., <b>, <i>, etc.)
    --- @type string
    Title = "v<b>Slots</b>",

    --- Multi-language configuration for slot machine UI
    ["en"] = {
        ["currency"] = "$",
        ["betSlider"] = "BET",
        ["slotsNotReady"] = "The slot machine configuration hasn't loaded yet.",
        ["cantCloseError"] = "You can't close the slot machine right now.",
        ["lowestBetError"] = "You already have the lowest possible bet!",
        ["highestBetError"] = "You already have the highest possible bet!",
        ["pressKey"] = "~g~[E] ~w~- Play Slots",
        ["notNear"] = "You're not close enough to any slot machine.",
        ["betChanged"] = "You changed the bet to the amount of %s.",
        ["notEnoughMoney"] = "You don't have enough money.",
        ["soundTurnedOff"] = "Slot machine sounds have been muted.",
        ["soundTurnedOn"] = "Slot machine sounds have been enabled.",
        ["DOMS"] = {
            [".balance h1"] = "BALANCE",
            [".lastWin h1"] = "LAST WIN",
            [".gamble .history h1"] = "HISTORY",
            [".gamble .header .left h1"] = "ACTUAL PRIZE",
            [".gamble .header .right h1"] = "GAMBLE TO WIN",
            [".gamble .body .win"] = "WIN!",
            [".settings p"] = "SETTINGS",
            [".info .payouts .info-title"] = "PAYMENT TABLE",
            [".info .howitwork .info-title"] = "HOW SLOT MACHINE WORK?",
            [".info .howitwork .info-description"] = [[
                All wins are awarded for matching symbols on selected paylines, from left to right, starting with the leftmost reel. Only the highest win per payline is paid.
                Line wins are multiplied by your bet per line. Malfunctions void all plays and winnings.
                The gamble feature gives you a chance to double your winnings, but choosing the wrong card will reset your prize. Please play responsibly — all outcomes are random and based on luck. Your skill or timing does not affect the result.
            ]],
            [".lines .line1"] = "10 LINES"
        }
    },

    ["ro"] = {
        ["currency"] = "$",
        ["betSlider"] = "PARIU",
        ["slotsNotReady"] = "Configurația păcănelei nu a fost încă încărcată.",
        ["cantCloseError"] = "Nu poți închide aparatul în acest moment.",
        ["lowestBetError"] = "Ai deja cea mai mică sumă posibilă!",
        ["highestBetError"] = "Ai deja cea mai mare sumă posibilă!",
        ["pressKey"] = "~g~[E] ~w~- Joacă la păcănele",
        ["notNear"] = "Nu ești suficient de aproape de niciun aparat.",
        ["betChanged"] = "Ai modificat pariul la suma de %s.",
        ["notEnoughMoney"] = "Nu ai suficienți bani.",
        ["soundTurnedOff"] = "Sunetele păcănelei au fost dezactivate.",
        ["soundTurnedOn"] = "Sunetele păcănelei au fost activate.",
        ["DOMS"] = {
            [".balance h1"] = "BALANȚĂ",
            [".lastWin h1"] = "ULTIMUL CÂȘTIG",
            [".gamble .history h1"] = "ISTORIC",
            [".gamble .header .left h1"] = "PREMIU ACTUAL",
            [".gamble .header .right h1"] = "PARIAZĂ SĂ DUBLEZI",
            [".gamble .body .win"] = "AI CÂȘTIGAT!",
            [".settings p"] = "SETĂRI",
            [".info .payouts .info-title"] = "TABEL PLĂȚI",
            [".info .howitwork .info-title"] = "CUM FUNCȚIONEAZĂ PĂCĂNEAUA?",
            [".info .howitwork .info-description"] = [[
                Toate câștigurile sunt acordate pentru combinații de simboluri pe liniile selectate, de la stânga la dreapta, începând cu primul tambur. Doar cel mai mare câștig pe linie este plătit.
                Câștigurile pe linie sunt înmulțite cu pariul pe linie. Defecțiunile anulează toate câștigurile și rundele.
                Funcția de pariere îți oferă șansa să-ți dublezi câștigurile, dar alegerea greșită îți va anula premiul. Joacă responsabil — rezultatul este aleatoriu și bazat pe noroc.
            ]],
            [".lines .line1"] = "10 LINII"
        }
    },

    ["de"] = {
        ["currency"] = "$",
        ["betSlider"] = "EINSATZ",
        ["slotsNotReady"] = "Der Spielautomat ist noch nicht bereit.",
        ["cantCloseError"] = "Du kannst den Spielautomat jetzt nicht schließen.",
        ["lowestBetError"] = "Du hast bereits den niedrigsten Einsatz!",
        ["highestBetError"] = "Du hast bereits den höchsten Einsatz!",
        ["pressKey"] = "~g~[E] ~w~- Spielautomaten spielen",
        ["notNear"] = "Du bist zu weit vom Spielautomaten entfernt.",
        ["betChanged"] = "Einsatz geändert auf %s.",
        ["notEnoughMoney"] = "Nicht genug Geld.",
        ["soundTurnedOff"] = "Spielautomat-Sounds wurden deaktiviert.",
        ["soundTurnedOn"] = "Spielautomat-Sounds wurden aktiviert.",
        ["DOMS"] = {
            [".balance h1"] = "GUTHABEN",
            [".lastWin h1"] = "LETZTER GEWINN",
            [".gamble .history h1"] = "VERLAUF",
            [".gamble .header .left h1"] = "AKTUELLER GEWINN",
            [".gamble .header .right h1"] = "RISIKO ZUM VERDOPPELN",
            [".gamble .body .win"] = "GEWONNEN!",
            [".settings p"] = "EINSTELLUNGEN",
            [".info .payouts .info-title"] = "GEWINNTABELLE",
            [".info .howitwork .info-title"] = "WIE FUNKTIONIERT DER AUTOMAT?",
            [".info .howitwork .info-description"] = [[
                Alle Gewinne werden für passende Symbole auf aktiven Gewinnlinien von links nach rechts vergeben. Nur der höchste Gewinn pro Linie wird gezahlt.
                Liniengewinne werden mit dem Einsatz pro Linie multipliziert. Störungen annullieren alle Spiele und Gewinne.
                Die Risikofunktion gibt dir die Chance, deinen Gewinn zu verdoppeln – eine falsche Karte setzt den Gewinn zurück. Bitte spiele verantwortungsbewusst — alle Ergebnisse basieren auf Zufall.
            ]],
            [".lines .line1"] = "10 LINIEN"
        }
    },

    ["es"] = {
        ["currency"] = "$",
        ["betSlider"] = "APUESTA",
        ["slotsNotReady"] = "La máquina tragaperras aún no está lista.",
        ["cantCloseError"] = "No puedes cerrar la máquina ahora.",
        ["lowestBetError"] = "¡Ya tienes la apuesta más baja posible!",
        ["highestBetError"] = "¡Ya tienes la apuesta más alta posible!",
        ["pressKey"] = "~g~[E] ~w~- Jugar tragamonedas",
        ["notNear"] = "No estás lo suficientemente cerca de una máquina.",
        ["betChanged"] = "Has cambiado la apuesta a %s.",
        ["notEnoughMoney"] = "No tienes suficiente dinero.",
        ["soundTurnedOff"] = "Sonidos de la máquina desactivados.",
        ["soundTurnedOn"] = "Sonidos de la máquina activados.",
        ["DOMS"] = {
            [".balance h1"] = "SALDO",
            [".lastWin h1"] = "ÚLTIMA GANANCIA",
            [".gamble .history h1"] = "HISTORIAL",
            [".gamble .header .left h1"] = "PREMIO ACTUAL",
            [".gamble .header .right h1"] = "DOBLAR GANANCIA",
            [".gamble .body .win"] = "¡GANASTE!",
            [".settings p"] = "AJUSTES",
            [".info .payouts .info-title"] = "TABLA DE PAGOS",
            [".info .howitwork .info-title"] = "¿CÓMO FUNCIONA LA MÁQUINA?",
            [".info .howitwork .info-description"] = [[
                Todas las ganancias se otorgan por símbolos coincidentes en líneas seleccionadas de izquierda a derecha, comenzando por el primer carrete. Solo se paga el mayor premio por línea.
                Las ganancias se multiplican por la apuesta por línea. Las fallas anulan todas las jugadas y ganancias.
                La función de apuesta te da la oportunidad de duplicar tu ganancia, pero si eliges mal, pierdes el premio. Juega con responsabilidad — todos los resultados son aleatorios.
            ]],
            [".lines .line1"] = "10 LÍNEAS"
        }
    },

    ["fr"] = {
        ["currency"] = "$",
        ["betSlider"] = "MISE",
        ["slotsNotReady"] = "La machine à sous n'est pas encore prête.",
        ["cantCloseError"] = "Vous ne pouvez pas fermer la machine maintenant.",
        ["lowestBetError"] = "Vous avez déjà la mise la plus basse !",
        ["highestBetError"] = "Vous avez déjà la mise la plus élevée !",
        ["pressKey"] = "~g~[E] ~w~- Jouer aux machines à sous",
        ["notNear"] = "Vous n'êtes pas assez proche d'une machine.",
        ["betChanged"] = "Vous avez changé la mise à %s.",
        ["notEnoughMoney"] = "Vous n'avez pas assez d'argent.",
        ["soundTurnedOff"] = "Les sons de la machine ont été désactivés.",
        ["soundTurnedOn"] = "Les sons de la machine ont été activés.",
        ["DOMS"] = {
            [".balance h1"] = "SOLDE",
            [".lastWin h1"] = "DERNIER GAIN",
            [".gamble .history h1"] = "HISTORIQUE",
            [".gamble .header .left h1"] = "GAIN ACTUEL",
            [".gamble .header .right h1"] = "PARIER POUR DOUBLER",
            [".gamble .body .win"] = "GAGNÉ !",
            [".settings p"] = "PARAMÈTRES",
            [".info .payouts .info-title"] = "TABLEAU DES GAINS",
            [".info .howitwork .info-title"] = "COMMENT ÇA MARCHE ?",
            [".info .howitwork .info-description"] = [[
                Les gains sont accordés pour des combinaisons de symboles sur les lignes sélectionnées, de gauche à droite. Seul le gain le plus élevé par ligne est payé.
                Les gains de ligne sont multipliés par votre mise par ligne. Les erreurs techniques annulent toutes les parties et les gains.
                La fonction de pari vous permet de doubler vos gains, mais une mauvaise carte les annulera. Jouez de manière responsable — tous les résultats sont aléatoires.
            ]],
            [".lines .line1"] = "10 LIGNES"
        }
    },

    ["hu"] = {
        ["currency"] = "$",
        ["betSlider"] = "TÉT",
        ["slotsNotReady"] = "A nyerőgép még nem töltött be.",
        ["cantCloseError"] = "Most nem zárhatod be a gépet.",
        ["lowestBetError"] = "Már a legalacsonyabb téten vagy!",
        ["highestBetError"] = "Már a legmagasabb téten vagy!",
        ["pressKey"] = "~g~[E] ~w~- Játssz a gépen",
        ["notNear"] = "Nem vagy elég közel egy géphez.",
        ["betChanged"] = "A tétet módosítottad: %s.",
        ["notEnoughMoney"] = "Nincs elég pénzed.",
        ["soundTurnedOff"] = "A nyerőgép hangjai kikapcsolva.",
        ["soundTurnedOn"] = "A nyerőgép hangjai bekapcsolva.",
        ["DOMS"] = {
            [".balance h1"] = "EGYENLEG",
            [".lastWin h1"] = "UTOLSÓ NYEREMÉNY",
            [".gamble .history h1"] = "ELŐZMÉNYEK",
            [".gamble .header .left h1"] = "AKTUÁLIS NYEREMÉNY",
            [".gamble .header .right h1"] = "TÉT MEGDUPLÁZÁSA",
            [".gamble .body .win"] = "NYERTÉL!",
            [".settings p"] = "BEÁLLÍTÁSOK",
            [".info .payouts .info-title"] = "KIFIZETÉSI TÁBLA",
            [".info .howitwork .info-title"] = "HOGYAN MŰKÖDIK A GÉP?",
            [".info .howitwork .info-description"] = [[
                A nyereményeket balról jobbra fizetjük, ha azonos szimbólumok jelennek meg aktív vonalakon. Csak a legnagyobb nyeremény kerül kifizetésre egy vonalon.
                A vonalnyereményeket a vonalra tett tét szorozza. A hibák minden játékot és nyereményt érvénytelenítenek.
                A dupla vagy semmi funkcióval megduplázhatod a nyereményed – de rossz választás esetén elveszíted azt. Játssz felelősséggel – az eredmények véletlenszerűek.
            ]],
            [".lines .line1"] = "10 VONAL"
        }
    },

    ["bg"] = {
        ["currency"] = "$",
        ["betSlider"] = "ЗАЛОГ",
        ["slotsNotReady"] = "Слот машината все още не е готова.",
        ["cantCloseError"] = "Не можеш да затвориш машината сега.",
        ["lowestBetError"] = "Вече си на най-ниския залог!",
        ["highestBetError"] = "Вече си на най-високия залог!",
        ["pressKey"] = "~g~[E] ~w~- Играй на слот машината",
        ["notNear"] = "Не си достатъчно близо до слот машина.",
        ["betChanged"] = "Залогът е променен на %s.",
        ["notEnoughMoney"] = "Нямаш достатъчно пари.",
        ["soundTurnedOff"] = "Звуците на машината са изключени.",
        ["soundTurnedOn"] = "Звуците на машината са включени.",
        ["DOMS"] = {
            [".balance h1"] = "БАЛАНС",
            [".lastWin h1"] = "ПОСЛЕДНА ПЕЧАЛБА",
            [".gamble .history h1"] = "ИСТОРИЯ",
            [".gamble .header .left h1"] = "ТЕКУЩА НАГРАДА",
            [".gamble .header .right h1"] = "ЗАЛОЖИ ЗА УДВОЯВАНЕ",
            [".gamble .body .win"] = "СПЕЧЕЛИ!",
            [".settings p"] = "НАСТРОЙКИ",
            [".info .payouts .info-title"] = "ТАБЛИЦА С ПЕЧАЛБИ",
            [".info .howitwork .info-title"] = "КАК РАБОТИ МАШИНАТА?",
            [".info .howitwork .info-description"] = [[
                Всички печалби се изплащат за съвпадащи символи на активни линии отляво надясно. Изплаща се само най-високата печалба на линия.
                Печалбите се умножават по залога на линия. Грешки анулират всички печалби и игри.
                Функцията за удвояване ти дава шанс да удвоиш печалбата си – но грешният избор ще я нулира. Играйте отговорно – резултатите са на случаен принцип.
            ]],
            [".lines .line1"] = "10 ЛИНИИ"
        }
    },

    ["it"] = {
        ["currency"] = "$",
        ["betSlider"] = "PUNTATA",
        ["slotsNotReady"] = "La slot machine non è ancora pronta.",
        ["cantCloseError"] = "Non puoi chiudere la slot in questo momento.",
        ["lowestBetError"] = "Hai già la puntata minima possibile!",
        ["highestBetError"] = "Hai già la puntata massima possibile!",
        ["pressKey"] = "~g~[E] ~w~- Gioca alla slot",
        ["notNear"] = "Non sei abbastanza vicino a nessuna slot machine.",
        ["betChanged"] = "Hai cambiato la puntata a %s.",
        ["notEnoughMoney"] = "Non hai abbastanza soldi.",
        ["soundTurnedOff"] = "I suoni della slot sono stati disattivati.",
        ["soundTurnedOn"] = "I suoni della slot sono stati attivati.",
        ["DOMS"] = {
            [".balance h1"] = "SALDO",
            [".lastWin h1"] = "ULTIMA VINCITA",
            [".gamble .history h1"] = "STORICO",
            [".gamble .header .left h1"] = "PREMIO ATTUALE",
            [".gamble .header .right h1"] = "RISCHIA PER RADDOPPIARE",
            [".gamble .body .win"] = "HAI VINTO!",
            [".settings p"] = "IMPOSTAZIONI",
            [".info .payouts .info-title"] = "TABELLA PAGAMENTI",
            [".info .howitwork .info-title"] = "COME FUNZIONA LA SLOT?",
            [".info .howitwork .info-description"] = [[
                Tutte le vincite vengono assegnate per simboli uguali su linee di pagamento selezionate, da sinistra a destra, iniziando dal primo rullo. Viene pagata solo la vincita più alta per linea.
                Le vincite sulle linee vengono moltiplicate per la puntata per linea. Malfunzionamenti annullano tutte le giocate e vincite.
                La funzione rischio ti permette di raddoppiare la vincita, ma se scegli la carta sbagliata perderai tutto. Gioca in modo responsabile — i risultati sono casuali e basati sulla fortuna.
            ]],
            [".lines .line1"] = "10 LINEE"
        }
    },

    ["tr"] = {
        ["currency"] = "$",
        ["betSlider"] = "BAHİS",
        ["slotsNotReady"] = "Slot makinesi henüz hazır değil.",
        ["cantCloseError"] = "Slot makinesini şu anda kapatamazsın.",
        ["lowestBetError"] = "Zaten en düşük bahis değerindesin!",
        ["highestBetError"] = "Zaten en yüksek bahis değerindesin!",
        ["pressKey"] = "~g~[E] ~w~- Slot oyna",
        ["notNear"] = "Hiçbir slot makinesine yeterince yakın değilsin.",
        ["betChanged"] = "Bahis miktarı %s olarak değiştirildi.",
        ["notEnoughMoney"] = "Yeterli paran yok.",
        ["soundTurnedOff"] = "Slot sesleri kapatıldı.",
        ["soundTurnedOn"] = "Slot sesleri açıldı.",
        ["DOMS"] = {
            [".balance h1"] = "BAKİYE",
            [".lastWin h1"] = "SON KAZANÇ",
            [".gamble .history h1"] = "GEÇMİŞ",
            [".gamble .header .left h1"] = "MEVCUT ÖDÜL",
            [".gamble .header .right h1"] = "KATLA",
            [".gamble .body .win"] = "KAZANDIN!",
            [".settings p"] = "AYARLAR",
            [".info .payouts .info-title"] = "ÖDEME TABLOSU",
            [".info .howitwork .info-title"] = "SLOT NASIL ÇALIŞIR?",
            [".info .howitwork .info-description"] = [[
                Kazançlar, seçili ödeme çizgilerinde soldan sağa eşleşen semboller için verilir. Her çizgi için yalnızca en yüksek kazanç ödenir.
                Çizgi kazançları, çizgi başına bahisle çarpılır. Hatalar tüm oyunları ve kazançları geçersiz kılar.
                Kumar özelliği, kazancınızı ikiye katlama şansı sunar, ancak yanlış kartı seçerseniz kazancınızı kaybedersiniz. Lütfen sorumlu oynayın – sonuçlar tamamen şansa dayalıdır.
            ]],
            [".lines .line1"] = "10 ÇİZGİ"
        }
    },
    
    ["pt"] = {
        ["currency"] = "$",
        ["betSlider"] = "APOSTA",
        ["slotsNotReady"] = "A máquina de slots ainda não está pronta.",
        ["cantCloseError"] = "Você não pode fechar a máquina agora.",
        ["lowestBetError"] = "Você já está com a aposta mínima!",
        ["highestBetError"] = "Você já está com a aposta máxima!",
        ["pressKey"] = "~g~[E] ~w~- Jogar Slot",
        ["notNear"] = "Você não está perto o suficiente de uma slot machine.",
        ["betChanged"] = "Aposta alterada para %s.",
        ["notEnoughMoney"] = "Você não tem dinheiro suficiente.",
        ["soundTurnedOff"] = "Sons da slot desativados.",
        ["soundTurnedOn"] = "Sons da slot ativados.",
        ["DOMS"] = {
            [".balance h1"] = "SALDO",
            [".lastWin h1"] = "ÚLTIMO GANHO",
            [".gamble .history h1"] = "HISTÓRICO",
            [".gamble .header .left h1"] = "PRÊMIO ATUAL",
            [".gamble .header .right h1"] = "DOBRAR APOSTA",
            [".gamble .body .win"] = "VOCÊ GANHOU!",
            [".settings p"] = "CONFIGURAÇÕES",
            [".info .payouts .info-title"] = "TABELA DE PAGAMENTO",
            [".info .howitwork .info-title"] = "COMO FUNCIONA A SLOT?",
            [".info .howitwork .info-description"] = [[
                Todos os ganhos são concedidos para símbolos correspondentes nas linhas selecionadas, da esquerda para a direita. Apenas o maior ganho por linha é pago.
                Os ganhos são multiplicados pela aposta por linha. Falhas anulam todas as jogadas e ganhos.
                O modo aposta permite dobrar seus ganhos, mas uma escolha errada irá zerá-los. Jogue com responsabilidade – os resultados são baseados na sorte.
            ]],
            [".lines .line1"] = "10 LINHAS"
        }
    },

    ["pl"] = {
        ["currency"] = "$",
        ["betSlider"] = "ZAKŁAD",
        ["slotsNotReady"] = "Automat do gry nie jest jeszcze gotowy.",
        ["cantCloseError"] = "Nie możesz teraz zamknąć automatu.",
        ["lowestBetError"] = "Masz już najniższy możliwy zakład!",
        ["highestBetError"] = "Masz już najwyższy możliwy zakład!",
        ["pressKey"] = "~g~[E] ~w~- Zagraj w slot",
        ["notNear"] = "Nie jesteś wystarczająco blisko automatu.",
        ["betChanged"] = "Zmieniono zakład na %s.",
        ["notEnoughMoney"] = "Nie masz wystarczająco pieniędzy.",
        ["soundTurnedOff"] = "Dźwięki automatu wyłączone.",
        ["soundTurnedOn"] = "Dźwięki automatu włączone.",
        ["DOMS"] = {
            [".balance h1"] = "SALDO",
            [".lastWin h1"] = "OSTATNIA WYGRANA",
            [".gamble .history h1"] = "HISTORIA",
            [".gamble .header .left h1"] = "AKTUALNA WYGRANA",
            [".gamble .header .right h1"] = "ZAGRAJ ABY PODWOIĆ",
            [".gamble .body .win"] = "WYGRAŁEŚ!",
            [".settings p"] = "USTAWIENIA",
            [".info .payouts .info-title"] = "TABELA WYPŁAT",
            [".info .howitwork .info-title"] = "JAK DZIAŁA AUTOMAT?",
            [".info .howitwork .info-description"] = [[
                Wszystkie wygrane są przyznawane za pasujące symbole od lewej do prawej na aktywnych liniach. Wypłacana jest tylko najwyższa wygrana na linię.
                Wygrane mnożone są przez zakład na linię. Błędy unieważniają wszystkie gry i wygrane.
                Funkcja ryzyka pozwala podwoić wygraną, ale błędny wybór ją resetuje. Graj odpowiedzialnie – wyniki są losowe.
            ]],
            [".lines .line1"] = "10 LINII"
        }
    },
    
    ["cz"] = {
        ["currency"] = "$",
        ["betSlider"] = "SÁZKA",
        ["slotsNotReady"] = "Automat ještě není připraven.",
        ["cantCloseError"] = "Nyní nelze automat zavřít.",
        ["lowestBetError"] = "Už máš nejnižší možnou sázku!",
        ["highestBetError"] = "Už máš nejvyšší možnou sázku!",
        ["pressKey"] = "~g~[E] ~w~- Hrát automat",
        ["notNear"] = "Nejsi dostatečně blízko k automatu.",
        ["betChanged"] = "Změněna sázka na %s.",
        ["notEnoughMoney"] = "Nemáš dost peněz.",
        ["soundTurnedOff"] = "Zvuky automatu byly vypnuty.",
        ["soundTurnedOn"] = "Zvuky automatu byly zapnuty.",
        ["DOMS"] = {
            [".balance h1"] = "ZŮSTATEK",
            [".lastWin h1"] = "POSLEDNÍ VÝHRA",
            [".gamble .history h1"] = "HISTORIE",
            [".gamble .header .left h1"] = "AKTUÁLNÍ VÝHRA",
            [".gamble .header .right h1"] = "ZKUSIT ZDVOJNÁSOBIT",
            [".gamble .body .win"] = "VYHRÁL JSI!",
            [".settings p"] = "NASTAVENÍ",
            [".info .payouts .info-title"] = "VÝPLATNÍ TABULKA",
            [".info .howitwork .info-title"] = "JAK FUNGUJE AUTOMAT?",
            [".info .howitwork .info-description"] = [[
                Výhry se udělují za odpovídající symboly zleva doprava na aktivních liniích. Platí pouze nejvyšší výhra na linii.
                Výhry se násobí sázkou na linii. Chyby ruší všechny hry a výhry.
                Funkce rizika umožňuje zdvojnásobit výhru – špatná volba ji zruší. Hraj zodpovědně – výsledky jsou náhodné.
            ]],
            [".lines .line1"] = "10 LINIÍ"
        }
    },
        
    ["ru"] = {
        ["currency"] = "$",
        ["betSlider"] = "СТАВКА",
        ["slotsNotReady"] = "Игровой автомат еще не готов.",
        ["cantCloseError"] = "Вы не можете закрыть автомат сейчас.",
        ["lowestBetError"] = "Вы уже выбрали минимальную ставку!",
        ["highestBetError"] = "Вы уже выбрали максимальную ставку!",
        ["pressKey"] = "~g~[E] ~w~- Играть в слот",
        ["notNear"] = "Вы слишком далеко от автомата.",
        ["betChanged"] = "Ставка изменена на %s.",
        ["notEnoughMoney"] = "Недостаточно средств.",
        ["soundTurnedOff"] = "Звуки автомата отключены.",
        ["soundTurnedOn"] = "Звуки автомата включены.",
        ["DOMS"] = {
            [".balance h1"] = "БАЛАНС",
            [".lastWin h1"] = "ПОСЛЕДНИЙ ВЫИГРЫШ",
            [".gamble .history h1"] = "ИСТОРИЯ",
            [".gamble .header .left h1"] = "ТЕКУЩИЙ ВЫИГРЫШ",
            [".gamble .header .right h1"] = "УДВОИТЬ",
            [".gamble .body .win"] = "ВЫЙГРАЛ!",
            [".settings p"] = "НАСТРОЙКИ",
            [".info .payouts .info-title"] = "ТАБЛИЦА ВЫПЛАТ",
            [".info .howitwork .info-title"] = "КАК РАБОТАЕТ АВТОМАТ?",
            [".info .howitwork .info-description"] = [[
                Все выигрыши начисляются за совпадающие символы на активных линиях слева направо. Учитывается только самый высокий выигрыш на линии.
                Выигрыши умножаются на ставку на линию. Ошибки аннулируют все игры и выигрыши.
                Функция удвоения позволяет увеличить выигрыш, но неправильный выбор сбросит его. Играйте ответственно — результат зависит от удачи.
            ]],
            [".lines .line1"] = "10 ЛИНИЙ"
        }
    },

    ["ko"] = {
        ["currency"] = "$",
        ["betSlider"] = "베팅",
        ["slotsNotReady"] = "슬롯 머신이 아직 준비되지 않았습니다.",
        ["cantCloseError"] = "지금은 슬롯 머신을 닫을 수 없습니다.",
        ["lowestBetError"] = "이미 최소 베팅 금액입니다!",
        ["highestBetError"] = "이미 최대 베팅 금액입니다!",
        ["pressKey"] = "~g~[E] ~w~- 슬롯 머신 플레이",
        ["notNear"] = "슬롯 머신에서 너무 멀리 떨어져 있습니다.",
        ["betChanged"] = "베팅이 %s로 변경되었습니다.",
        ["notEnoughMoney"] = "잔액이 부족합니다.",
        ["soundTurnedOff"] = "슬롯 머신 사운드가 꺼졌습니다.",
        ["soundTurnedOn"] = "슬롯 머신 사운드가 켜졌습니다.",
        ["DOMS"] = {
            [".balance h1"] = "잔액",
            [".lastWin h1"] = "최근 당첨",
            [".gamble .history h1"] = "기록",
            [".gamble .header .left h1"] = "현재 상금",
            [".gamble .header .right h1"] = "더블업",
            [".gamble .body .win"] = "당첨!",
            [".settings p"] = "설정",
            [".info .payouts .info-title"] = "지불표",
            [".info .howitwork .info-title"] = "슬롯 머신 작동 원리",
            [".info .howitwork .info-description"] = [[
                모든 당첨은 왼쪽에서 오른쪽으로 활성화된 라인에 같은 심볼이 나타날 때 지급됩니다. 한 줄당 가장 높은 당첨만 인정됩니다.
                당첨 금액은 라인당 베팅 금액에 따라 계산됩니다. 오류 발생 시 모든 게임과 당첨이 무효 처리됩니다.
                더블업 기능으로 상금을 두 배로 늘릴 수 있지만, 실패 시 모든 상금이 사라집니다. 책임감 있게 플레이하세요 — 결과는 운에 달려 있습니다.
            ]],
            [".lines .line1"] = "10 라인"
        }
    }
}