<template>
  <v-container fluid class="pa-0" ref="pageTop">
    <v-parallax src="http://i.imgur.com/rkobCEp.jpg" :height="windowHeight">
      <v-layout align-center column justify-center>
        <h1 class="display-2 font-weight-thin mb-4">Titolo Parallax</h1>
        <h4 class="subheading">Parole a caso, per chi sa leggere.</h4>
      </v-layout>
    </v-parallax>

    <v-layout text-center wrap>
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
const Merge = require("lodash.merge");

export default {
  components: {
    Cards
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

      this.items = this.cardData.items.map(item => {
        return Merge({}, self.cardData.config, item);
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
    cardData: {
      config: {
        column: {
          class: ["pa-1", "ma-0"],
          cols: 4
        },
        card: {
          class: ["mx-auto", "pa-0", "ma-0"],
          maxWidth: "100%", //percentuale, pixel, vp
          elevation: 0,
          outlined: true
        },
        cover: {
          gradient: "to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)",
          class: ["white--text", "align-end", "pa-0", "ma-0"],
          height: 150
        },
        icon: {
          size: 64,
          color: "#0CC",
          class: ["pa-4"]
        },
        title: {
          class: ["justify-center", "pa-2", "black--text"]
        },
        text: {
          class: ["text-center", "black--text"]
        }
      },
      items: [
        {
          cover: {
            src:
              "https://www.ultimatecarpage.com/images/car/960/BMW-M3-GTR-Strassen-Version-59370.jpg"
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
            caption: "didascalia"
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
            cols: 4
          },
          title: { text: "Facciamo Cose" },
          text: { text: "Fare cose è importante" },
          icon: {
            name: "mdi-heart"
          }
        },
        {
          column: {
            cols: 4
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
            cols: 4
          },
          card: {
            elevation: 1,
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
            items: [
              { text: "solo testo" },
              { text: "con icona", icon: "mdi-heart" },
              { icon: "mdi-pencil" }
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