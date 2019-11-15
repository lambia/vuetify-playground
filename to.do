CARDS
    gestire l'altezza delle img (al momento in px) e la larghezza del col (in col), fare una roba tipo bricks
    cover: aggiungere action/href/emitter
    actions: aggiungere action/href/emitter e config size/color/align
    component mancanti: img inline, subtitle e overline


    organizzare l'oggetto: img, caption, titolo, sovratitolo, sottotitolo, testo, bottoni con spacer, allineamento di ogni singola
    organizzare l'oggetto: al component ne arriva uno che è [...config, ...item]
    attaccare ogni prop dell'oggetto alle prop del component (vedi gradient di img)
    creare un costruttore di classi per pa/ma/fontsize/textcolor
    vedere se si può bindare una prop "padding o size" direttamente (es. oggetto di style senza vuetify)
    
    nuovo template: card con img+icona+hover

    gestire il width della card come l'height dell'img (ternario+moltiplicatore)
    auto cols (che riporta i dispari in auto sul 12)
    Spaziatura varie (pa-n ma-n) parametrizzate
    Gestire immagini come cover(ok), contain e box
    Gestire list e layout più complessi
    Gestire contenitore tutto immagine di fondo con div testo+azioni all'hover
    Gestire action con spacer in mezzo
    bottoni con event emitter

GENERALE
- per il momento i dataset sono all'interno dei component stessi, poi bisogna metterli in store il cui pointer viene passato dalle prop
- store con namespace/components
- Spostare l'handle resize da helloworld ad app, con store+emit, in modo che sia accessibile a tutti
- v-app-bar si spacca il layout se usi shrink o expand
- v-app-bar usare shrink ed expand per le versioni di menu, e bg on-scroll va via



- Funzione over(value,default)
Se esistente prende il primo valore, altrimenti il secondo

a   b   R
0   0   0
1   0   1
0   1   0
1   1   1
-   0   0
-   1   1
1   -   1
0   -   0

Da usare per nav.vue (hover e idle)

- Nav/NavLink con gestione active
- NavLink larghezza fissa (quella del componente interno più largo)
- Crea component div vuoto che accetta template-inline e bg(video,img,color,parallax)
