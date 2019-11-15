CARDS

    refactoring
        creare un costruttore di classi per pa/ma/fontsize/textcolor
        vedere se si può bindare una prop "padding o size" direttamente (es. oggetto di style senza vuetify)

    lodash.merge
        lodash/fp/merge
        mergeWith con customizer per array di classes [pa0, prova] + [pa2] = [pa2, prova]

    gestire dimensionamento delle cards
        non in pixel ma in ratio
        numero di colonne automatico (dispari daccapo)
        responsive (non vanno daccapo ne resizano)
        altezza img con moltiplicatore invece di px

    cover
        aggiungere action/href/emitter

    actions
        aggiungere action/href/emitter
        config size/color/align
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
- per il momento i dataset sono all'interno del padre, metterli in store?
- store con namespace/components
- Spostare l'handle resize da helloworld ad app, con store+emit, in modo che sia accessibile a tutti
- v-app-bar si spacca il layout se usi shrink o expand
- v-app-bar usare shrink ed expand per le versioni di menu, e bg on-scroll va via

Da usare per nav.vue (hover e idle)
- Nav/NavLink con gestione active
- Crea component div vuoto che accetta template-inline e bg(video,img,color,parallax)
