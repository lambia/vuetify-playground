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
  methods: {},
  created() {},
  props: {
    items: Array
  },
  data: () => ({})
};
</script>

<style scoped>
</style>
