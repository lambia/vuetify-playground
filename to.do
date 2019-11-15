CARDS

    base dati
        annullati
            creare un costruttore di classi per pa/ma/fontsize/textcolor
            vedere se si può bindare una prop "padding o size" direttamente (es. oggetto di style senza vuetify)
            lodash/fp/merge
            lodash/mergeWith con customizer per array di classes [pa0, prova] + [pa2] = [pa2, prova]

    card
        align right del testo
        https://vuetifyjs.com/en/components/overlays

    gestire dimensionamento delle cards
        non in pixel ma in ratio
        numero di colonne automatico (dispari daccapo)
        responsive (non vanno daccapo ne resizano)
        altezza img con moltiplicatore invece di px

    cover
        aggiungere action/href
        usare lazysrc
        gestire emitter
        più righe di testo
        actions
        icone

    actions
        gestire emitter
        config size/color/align/outline anche per singolo (v. lodash.merge)
        gestire spacer
        responsive (non vanno daccapo ne resizano)

    component mancanti
        img (contain e box)
        avatar
        lista
        subtitle
        overline
        hover (tutto img/bg con full text/icon all'hover)
        icona sovra-foto
        layout complessi
        stile (bg)


GENERALE
- gestione eventi messa in un mixins
- per il momento i dataset sono all'interno del padre, metterli in store?
- store con namespace/components
- Spostare l'handle resize da helloworld ad app, con store+emit, in modo che sia accessibile a tutti
- v-app-bar si spacca il layout se usi shrink o expand
- v-app-bar usare shrink ed expand per le versioni di menu, e bg on-scroll va via

Da usare per nav.vue (hover e idle)
- Nav/NavLink con gestione active
- Crea component div vuoto che accetta template-inline e bg(video,img,color,parallax)
