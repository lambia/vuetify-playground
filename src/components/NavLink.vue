<template>
  <v-btn
    class="vertical"
    text
    :color="appliedColor"
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
    hovered: false,
    appliedColor: null
  }),
  beforeMount() {
    this.appliedColor = this.color || this.idle.color;
  },
  methods: {
    onHover(status) {
      this.hovered = status;
      if (status) {
        this.appliedColor = this.hover.color || this.color || this.idle.color;
      } else {
        this.appliedColor = this.color || this.idle.color;
      }
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
.placeholderLabel {
  display: block;
  height: 1px;
  visibility: hidden;
}
</style>
