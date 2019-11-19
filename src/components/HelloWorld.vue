<template>
    <v-container fluid class="pa-0" ref="pageTop">
        <v-parallax src="http://i.imgur.com/rkobCEp.jpg" :height="windowHeight">
            <v-layout align-center column justify-center>
                <h1 class="display-2 font-weight-thin mb-4">Titolo Parallax</h1>
                <h4 class="subheading">Parole a caso, per chi sa leggere.</h4>
            </v-layout>
        </v-parallax>

        <v-layout text-center wrap>
            <cardsNew />

            <cards :items="items" />

            <v-flex xs12>
                <v-img :src="require('../assets/logo.svg')" class="my-3" contain height="100"></v-img>
            </v-flex>

            <v-flex mb-4>
                <h1 class="display-2 font-weight-bold mb-3">Test</h1>
                <p class="subheading font-weight-regular">Un blocco di testo abbastanza corto</p>
            </v-flex>

            <v-flex xs12 mb-5>
                <h2 class="headline font-weight-bold mb-3">Capo Sezione</h2>

                <v-layout justify-center>
                    <a
                        v-for="(link, i) in importantLinks"
                        :key="i"
                        :href="link.href"
                        class="subheading mx-3"
                        target="_blank"
                    >{{ link.text }}</a>
                </v-layout>
            </v-flex>
        </v-layout>

        <v-parallax src="http://i.imgur.com/rkobCEp.jpg" :height="500">
            <v-layout align-center column justify-center>
                <h1 class="display-2 font-weight-thin mb-4">Titoletto per Parallax</h1>
                <h4 class="subheading">Magari un giorno sarà un footer</h4>
            </v-layout>
        </v-parallax>
    </v-container>
</template>

<script>
import Cards from "@/components/Cards";
import CardsNew from "@/components/CardsNew";
const Merge = require("lodash.merge");

export default {
    components: {
        Cards,
        CardsNew
    },
    created() {
        window.addEventListener("resize", this.handleResize);
        this.handleResize();
        this.pretendApi();
    },
    mounted() {
        this.handleResize();
    },
    destroyed() {
        window.removeEventListener("resize", this.handleResize);
    },
    methods: {
        handleResize() {
            this.windowHeight = window.innerHeight;
        },
        pretendApi() {
            let self = this;

            this.items = this.cardsData.items.map(item => {
                return Merge({}, self.cardsData.config, item);
            });
        }
    },
    data: () => ({
        windowHeight: 300,
        importantLinks: [
            {
                text: "Documentation",
                href: "https://vuetifyjs.com"
            }
        ],
        items: [],
        cardsData: {
            config: {
                column: {
                    class: ["pa-1", "ma-0"],
                    cols: 4
                },
                card: {
                    class: ["mx-auto", "pa-0", "ma-0"],
                    maxWidth: null, //percentuale, pixel, vp
                    elevation: 0,
                    outlined: true
                },
                cover: {
                    gradient:
                        "to bottom, rgba(255,255,255,0.25), rgba(255,255,255,0.9)",
                    class: ["black--text", "align-end", "pa-2", "ma-0"],
                    height: 150,
                    progress: {
                        indeterminate: true,
                        color: "grey lighten-5",
                        size: 48
                    },
                    title: {
                        class: ["title", "text-center", "white--text"]
                    },
                    text: {
                        class: ["text-center", "white--text", "pa-0"]
                    }
                },
                icon: {
                    size: 64,
                    color: "#0CC",
                    class: ["pa-4"]
                },
                title: {
                    class: ["title", "primary--text", "pa-2"]
                },
                text: {
                    class: ["text-center", "pa-1", "pb-2", "black--text"]
                },
                actions: {
                    class: ["text-right"]
                    // props: {
                    //     class: ["black--text"],
                    //     outlined: true,
                    //     text: true
                    // }
                }
            },
            items: [
                {
                    cover: {
                        src:
                            "https://www.ultimatecarpage.com/images/car/960/BMW-M3-GTR-Strassen-Version-59370.jpg",
                        title: {
                            text: "Need for Speed?",
                            class: ["black--text", "text-right"]
                        }
                    },
                    title: {
                        text: "Drago Alato"
                    },
                    text: {
                        text: "Una BMW E46 M3 GTR Strassen Version"
                    }
                },
                {
                    cover: {
                        src:
                            "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/images/car-reviews/first-drives/legacy/lotus-exige-430-rear.jpg"
                    },
                    title: {
                        text: "GoKart Rumoroso Plus"
                    },
                    text: {
                        text: "La Lotus Exige Cup 430"
                    }
                },
                {
                    cover: {
                        src:
                            "https://foto1.newsauto.it/wp-content/uploads/2019/06/Fiat-Uno-Turbo-elaborate-8.jpg",
                        title: {
                            text: "didascalia"
                        },
                        text: {
                            text: "sottotitolo"
                        },
                        gradient:
                            "to bottom, rgba(0,0,0,0.25), rgba(0,0,0,0.75)"
                    },
                    title: {
                        text: "Bara Volante"
                    },
                    text: {
                        text: "Fiat Uno 45 Turbo"
                    }
                },
                {
                    column: {
                        cols: 3
                    },
                    card: {
                        elevation: 1,
                        outlined: true
                    },
                    title: { text: "Facciamo Cose" },
                    text: { text: "Fare cose è importante" },
                    icon: {
                        name: "mdi-heart",
                        href: "https://www.google.it"
                    }
                },
                {
                    column: {
                        cols: 3
                    },
                    card: {
                        outlined: false
                    },
                    title: { text: "Finte Porte" },
                    text: { text: "Compra le uniche vere finte porte" },
                    icon: {
                        name: "mdi-pencil"
                    }
                },
                {
                    column: {
                        cols: 3
                    },
                    card: {
                        elevation: 5,
                        outlined: false
                    },
                    title: { text: "Attenzione" },
                    text: { text: "Questo ha l'icona custom" },
                    icon: {
                        name: "mdi-earth",
                        size: 48,
                        color: "#C0C"
                    },
                    actions: {
                        class: ["text-center"],
                        items: [
                            {
                                label: "con icona",
                                iconName: "mdi-heart", //string -> oggetto (color, size ecc)
                                to: "/about",
                                //CFG
                                class: ["black--text"],
                                outlined: true,
                                text: true
                            }
                        ]
                    }
                },
                {
                    column: {
                        cols: 3
                    },
                    icon: {
                        name: "mdi-earth"
                    },
                    actions: {
                        items: [
                            {
                                label: "solo testo",
                                href: "https://www.google.it",
                                target: "_blank",
                                //CFG
                                class: ["black--text"],
                                outlined: true,
                                text: true
                            },
                            {
                                iconName: "mdi-pencil", //string -> oggetto (color, size ecc)
                                event: "button.clicked",
                                //CFG
                                class: ["black--text"],
                                outlined: true,
                                text: true
                            }
                        ]
                    }
                }
            ]
        }
    })
};
</script>

<style scoped>
</style>