<template>
    <v-container fluid class="pa-0" ref="pageTop">
        <v-parallax src="http://i.imgur.com/rkobCEp.jpg" :height="windowHeight">
            <v-layout align-center column justify-center>
                <h1 class="display-2 font-weight-thin mb-4">Titolo Parallax</h1>
                <h4 class="subheading">Parole a caso, per chi sa leggere.</h4>
            </v-layout>
        </v-parallax>

        <v-layout text-center wrap>
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
export default {
    created() {
        window.addEventListener("resize", this.handleResize);
        this.handleResize();
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
        }
    },
    data: () => ({
        windowHeight: 300,
        importantLinks: [
            {
                text: "Documentation",
                href: "https://vuetifyjs.com"
            }
        ]
    })
};
</script>

<style scoped>
</style>