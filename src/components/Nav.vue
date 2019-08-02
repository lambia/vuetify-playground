<template>
  <v-toolbar-items>
    <NavLink
      v-for="(item,key) in items"
      :key="key"
      :text="item.text"
      :link="item.link"
      :path="item.path"
      :icon="item.icon"
      :color="item.color || config.color"
      :idle="config.idle"
      :hover="config.hover"
    />
  </v-toolbar-items>
</template>

<script>
import NavLink from "@/components/NavLink";

export default {
  components: {
    NavLink
  },
  props: {
    config: Object,
    items: Array
  },
  data: () => ({})
};
</script>

