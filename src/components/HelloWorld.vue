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
      this.items = this.newItem;
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
    newItem: [
      {
        column: {
          //CFG
          classes: ["pa-1", "ma-0"]
        },
        card: {
          //CFG
          classes: ["mx-auto", "pa-0", "ma-0"],
          width: "100%", //percentuale, pixel, vp
          columns: 4,
          elevation: 0,
          outline: true
        },
        cover: {
          src:
            "https://www.ultimatecarpage.com/images/car/960/BMW-M3-GTR-Strassen-Version-59370.jpg",
          caption: "Due titoli is megl che uan",
          //CFG
          gradient: "to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)",
          classes: ["white--text", "align-end", "pa-0", "ma-0"],
          height: 200
        },
        icon: {
          name: "mdi-earth",
          //CFG
          size: 64,
          color: "#0CC",
          classes: "pa-4"
        },
        title: {
          text: "TITOLONE",
          //CFG
          classes: ["justify-center", "pa-2", "black--text"]
        },
        text: {
          text: "lorem ipsum lorem ipsum",
          //CFG
          classes: "text-center black--text"
        },
        actions: {
          items: [
            { text: "solo testo" },
            { text: "con icona", icon: "mdi-heart" },
            { icon: "mdi-pencil" }
          ]
        }
      }
    ],
    cars: [
      {
        img: {
          src:
            "https://www.ultimatecarpage.com/images/car/960/BMW-M3-GTR-Strassen-Version-59370.jpg"
        },
        columns: 6,
        title: "Drago Alato",
        text: "Una BMW E46 M3 GTR Strassen Version"
      },
      {
        img: {
          src:
            "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/images/car-reviews/first-drives/legacy/lotus-exige-430-rear.jpg"
        },
        columns: 6,
        title: "GoKart Rumoroso Plus",
        text: "La Lotus Exige Cup 430"
      },
      {
        img: {
          src:
            "https://foto1.newsauto.it/wp-content/uploads/2019/06/Fiat-Uno-Turbo-elaborate-8.jpg",
          height: 1.5
        },
        columns: 12,
        title: "Bara Volante",
        text: "Fiat Uno 45 Turbo"
      }
    ],
    random: [
      {
        columns: 6,
        title: "Contenitore 1",
        text: "lorem ipsum lorem ipsum",
        actions: [
          { text: "solo testo" },
          { text: "con icona", icon: "mdi-heart" },
          { icon: "mdi-pencil" }
        ]
      },
      {
        columns: 6,
        title: "Contenitore 2",
        text: "lorem ipsum lorem ipsum diverso",
        actions: [{ text: "OK" }]
      }
    ],
    services: [
      {
        width: 300,
        columns: 4,
        title: "Facciamo Cose",
        text: "Fare cose è importante",
        icon: {
          name: "mdi-earth"
        }
      },
      {
        width: 300,
        columns: 4,
        title: "Finte Porte",
        text: "Compra le uniche vere finte porte",
        icon: {
          name: "mdi-earth"
        }
      },
      {
        width: 300,
        columns: 4,
        title: "Attenzione",
        text: "Questo ha l'icona custom",
        icon: {
          name: "mdi-earth",
          size: 64,
          color: "#0CC"
        }
      }
    ]
  })
};
</script>

<style scoped>
</style>