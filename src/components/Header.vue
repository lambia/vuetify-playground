<template>
    <v-app-bar app fixed flat elevation="0" dark color="light-blue accent-3">
        <v-toolbar-title class="headline text-uppercase">
            <span class="font-weight-bold">Titolo</span>
            <span>&nbsp;</span>
            <span class="font-weight-light">Sottotitolo</span>
        </v-toolbar-title>
        <v-progress-linear
            :active="loading"
            :indeterminate="loading"
            height="5"
            background-opacity="0"
            absolute
            bottom
            color="light-blue accent-2"
        ></v-progress-linear>
        <v-spacer></v-spacer>
        <Nav :config="nav.config" :items="nav.items" />
    </v-app-bar>
</template>

<script>
import Nav from "@/components/Nav";

export default {
    components: {
        Nav
    },
    data: () => ({
        loading: false,
        nav: {
            config: {
                idle: {
                    text: false,
                    icon: true,
                    color: "#EEE"
                },
                hover: {
                    text: true,
                    icon: false,
                    color: "#FFF"
                }
            },
            items: [
                {
                    text: "Home",
                    icon: "home",
                    path: "/"
                },
                {
                    text: "About",
                    icon: "account-card-details",
                    path: "/about"
                }
            ]
        }
    })
};
</script>
