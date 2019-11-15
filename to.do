CARDS
    base dati
        annullati
            creare un costruttore di classi per pa/ma/fontsize/textcolor
            vedere se si può bindare una prop "padding o size" direttamente (es. oggetto di style senza vuetify)
            lodash/fp/merge
            lodash/mergeWith con customizer per array di classes [pa0, prova] + [pa2] = [pa2, prova]

    generico card padre
        gestire invece che oggetto array per avere ordine dei component-is
        oppure oggetto nested tipo [{component: "nome", props: {}, child: [ {component,prop},{component,prop} ]},{c..}]
        gestire "class" durante il merge (v. lodash mergeWith), es.: colore testo non sovrascrive il config

    card
        align right del testo (title/caption)
        https://vuetifyjs.com/en/components/overlays

    gestire dimensionamento delle cards
        non in pixel ma in ratio
        numero di colonne automatico (dispari daccapo)
        responsive estremo (breakpoint per andare accapo)
        altezza img con moltiplicatore invece di px

    title/caption
        aggiungere action/href -> su overlay?
        text:center non funziona con il flex, ma con space

    cover
        aggiungere action/href -> su overlay
        usare lazysrc
        gestire emitter
        più righe di testo -> quandi usi "bg" invece di cover
        actions -> quandi usi "bg" invece di cover
        icone -> quandi usi "bg" invece di cover

    actions
        gestire emitter
        config size/color/outline anche per singolo (v. lodash.merge)
        gestire spacer

    component mancanti
        img (contain e box)
        avatar
        lista
        subtitle
        overline
        stars
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
- v-parallax[0] top:0 (sotto menu)
- menu che può diventare trasparente

Da usare per nav.vue (hover e idle)
- Nav/NavLink con gestione active
- Crea component div vuoto che accetta template-inline e bg(video,img,color,parallax)
