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
    <span class="placeholderLabel">{{text}}</span>
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
.placeholderLabel {
  display: block;
  height: 1px;
  visibility: hidden;
}
/* Enter and leave animations can use different */
/* durations and timing functions.              */
.slide-fade-enter-active {
  transition: all 0.3s ease;
}
.slide-fade-leave-active {
  transition: all 0.8s cubic-bezier(1, 0.5, 0.8, 1);
}
.slide-fade-enter, .slide-fade-leave-to
/* .slide-fade-leave-active below version 2.1.8 */ {
  transform: translateX(10px);
  opacity: 0;
}
</style>
