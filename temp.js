newItem = {
    card: {
        width: "100%",
        //width: 300,
        columns: 4,
        elevation: 0,
        outline: true,
        padding: 1,
        margin: 0
        //aggiungere gli altri padding
    },
    cover: {
        color: "red",
        src:
            "https://www.ultimatecarpage.com/images/car/960/BMW-M3-GTR-Strassen-Version-59370.jpg",
        caption: "Due titoli is megl che uan",
        height: 200,
        //height: 1.2 //con moltiplicatore item*config, ma forse meglio usare un layout fluido
        action: "page/altra"
    },
    image: {
        align: "left",
        src:
            "https://www.ultimatecarpage.com/images/car/960/BMW-M3-GTR-Strassen-Version-59370.jpg",
        caption: "Immaginina",
        href: "www.google.it"
    },
    icon: {
        name: "mdi-earth",
        size: 64,
        color: "green"
        //color: "#0CC"
    },
    overline: { text: "overline", align: "center", color: "black", size: 16 },
    title: { text: "TITOLONE", align: "center", color: "black", size: 16 },
    subtitle: {
        text: "sottotitolo",
        align: "center",
        color: "black",
        size: 16
    },
    text: {
        text: "lorem ipsum lorem ipsum",
        align: "left",
        color: "black",
        size: 16
    },
    actions: {
        align: "left",
        color: "black",
        size: 16,
        items: [
            { text: "solo testo" },
            { text: "con icona", icon: "mdi-heart" },
            { icon: "mdi-pencil" }
        ]
    }
};