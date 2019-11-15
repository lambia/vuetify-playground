<template>
  <v-row no-gutters class="pa-1">
    <v-col
      v-for="(item, key) in items"
      :key="key"
      :cols="item.card.columns"
      :class="[item.column.classes]"
    >
      <v-card
        :elevation="item.card.elevation"
        :outlined="item.card.outline"
        :max-width="item.card.width"
        :class="[item.card.classes]"
      >
        <v-img
          v-if="item.cover && item.cover.src"
          :src="item.cover.src"
          :class="[item.cover.classes]"
          :gradient="item.cover.gradient"
          :height="item.cover.height"
        >
          <v-card-title v-text="item.cover.caption"></v-card-title>
        </v-img>
        <v-icon
          v-if="item.icon && item.icon.name"
          :size="item.icon.size"
          :color="item.icon.color"
          :class="item.icon.classes"
        >{{item.icon.name}}</v-icon>

        <v-card-title v-text="item.title.text" :class="item.title.classes"></v-card-title>

        <!-- <v-card-title :class="'justify-'+config.align.caption+' pa-2'" v-if="item.img.caption">
          <v-spacer v-if="config.align.caption=='right'"></v-spacer>
          {{item.img.caption}}
          <v-spacer v-if="config.align.caption=='left'"></v-spacer>
        </v-card-title>-->

        <v-card-text v-text="item.text.text" :class="item.text.classes"></v-card-text>

        <!-- check per array di action nulle -->

        <v-card-actions v-if="item.actions && item.actions.items">
          <v-btn text v-for="(action,key) in item.actions.items" :key="key">
            <v-icon v-if="action.icon">{{action.icon}}</v-icon>
            <v-label v-if="action.icon && action.text">&nbsp;</v-label>
            {{action.text}}
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-col>
  </v-row>
</template>


<script>
export default {
  methods: {
    // buildSpace(pa, ma) {
    //   let r = {};
    //   if (!isNaN(pa)) {
    //     r["pa-" + pa] = true;
    //   }
    //   if (!isNaN(ma)) {
    //     r["ma-" + ma] = true;
    //   }
    // }
  },
  created() {
    //this.items = [...this.services, ...this.random, ...this.cars];
    this.items = [this.newItem];
  },
  data: () => ({
    config: {
      width: "100%",
      img: {
        height: 200
      },
      icon: {
        size: 64,
        color: "gray"
      }
    },
    newItem: {
      column: {
        classes: ["pa-1", "ma-0"]
      },
      card: {
        width: "100%",
        //width: 300,
        columns: 4,
        elevation: 0,
        outline: true,
        classes: ["mx-auto", "pa-0", "ma-0"]
        //aggiungere gli altri padding
      },
      cover: {
        src:
          "https://www.ultimatecarpage.com/images/car/960/BMW-M3-GTR-Strassen-Version-59370.jpg",
        caption: "Due titoli is megl che uan",
        height: 200,
        //height: 1.2 //con moltiplicatore item*config, ma forse meglio usare un layout fluido
        //action: "page/altra",
        classes: ["white--text", "align-end", "pa-0", "ma-0"],
        gradient: "to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
      },
      /*
      image: {
        align: "left",
        src:
          "https://www.ultimatecarpage.com/images/car/960/BMW-M3-GTR-Strassen-Version-59370.jpg",
        caption: "Immaginina",
        href: "www.google.it"
      },
      */
      icon: {
        name: "mdi-earth",
        size: 64,
        color: "green",
        //color: "#0CC",
        classes: "pa-4"
      },
      /*
      overline: { text: "overline", align: "center" },
      */
      title: {
        text: "TITOLONE",
        classes: ["justify-center", "pa-2", "black--text"]
      },
      /*
      subtitle: {
        text: "sottotitolo",
        align: "center",
        color: "black",
        size: 16
      },
      */
      text: {
        text: "lorem ipsum lorem ipsum",
        classes: "text-center black--text"
      },
      actions: {
        /*
        align: "left",
        size: 16,
        color: "black",
        */
        items: [
          { text: "solo testo" },
          { text: "con icona", icon: "mdi-heart" },
          { icon: "mdi-pencil" }
        ]
      }
    },
    items: [],
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
