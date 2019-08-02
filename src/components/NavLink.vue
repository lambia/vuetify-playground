<template>
  <v-btn
    class="vertical"
    text
    :color="color"
    :href="link"
    :to="path"
    target="_self"
    @mouseover="onHover(true)"
    @mouseleave="onHover(false)"
  >
    <v-icon v-if="icon && visible('icon')" large>mdi-{{icon}}</v-icon>
    <span v-if="text && visible('text')">{{text}}</span>
  </v-btn>
</template>

<script>
export default {
  props: {
    text: String,
    link: String,
    path: String,
    color: String,
    icon: String,
    idle: Object,
    hover: Object
  },
  data: () => ({
    hovered: false
  }),
  methods: {
    onHover(status) {
      this.hovered = status;
    },
    visible(caller) {
      return (
        (!this.hovered && this.idle[caller]) ||
        (this.hovered && this.hover[caller])
      );
    }
  }
};
</script>

<style>
.vertical > .v-btn__content {
  flex-direction: column !important;
}
.navLinkActive {
  background: red;
}
</style>
