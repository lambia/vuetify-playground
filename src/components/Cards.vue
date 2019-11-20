<template>
    <v-flex xs12 pa-0 ma-0>
        <v-row no-gutters class="pa-1">
            <v-col v-for="(item, key) in items" :key="key" v-bind="item.column">
                <!-- <v-hover>
                <template v-slot:default="{ hover }">-->
                <v-card v-bind="item.card">
                    <v-img v-if="item.cover && item.cover.src" v-bind="item.cover">
                        <v-card-text
                            v-if="item.cover.title && item.cover.title.text"
                            class="pa-0 ma-0"
                        >
                            <h2 v-text="item.cover.title.text" v-bind="item.cover.title"></h2>
                        </v-card-text>

                        <v-card-text
                            v-if="item.cover.text.text"
                            v-text="item.cover.text.text"
                            v-bind="item.cover.text"
                        ></v-card-text>

                        <template v-slot:placeholder v-if="item.cover.progress">
                            <v-row class="fill-height ma-0" align="center" justify="center">
                                <v-progress-circular v-bind="item.cover.progress"></v-progress-circular>
                                <!-- <v-icon size="64" v-if="item.cover.progress">mdi-image</v-icon> -->
                            </v-row>
                        </template>
                    </v-img>

                    <v-icon
                        v-if="item.icon && item.icon.name"
                        v-text="item.icon.name"
                        v-bind="item.icon"
                    ></v-icon>

                    <v-card-text v-if="item.title && item.title.text" class="pa-0 ma-0">
                        <h4 v-bind="item.title" v-text="item.title.text"></h4>
                    </v-card-text>

                    <v-card-text v-if="item.text.text" v-text="item.text.text" v-bind="item.text"></v-card-text>

                    <v-card-actions v-if="item.actions && item.actions.items">
                        <v-flex xs12 pa-0 ma-0 :class="item.actions.class">
                            <v-btn
                                v-for="(action,key) in item.actions.items"
                                :key="key"
                                v-bind="action"
                                @click="pub(action.event)"
                            >
                                <v-icon v-if="action.iconName" v-text="action.iconName"></v-icon>
                                <v-label v-if="action.iconName && action.label">&nbsp;</v-label>
                                {{action.label}}
                            </v-btn>
                        </v-flex>
                    </v-card-actions>

                    <!-- <v-fade-transition>
                        <v-overlay v-if="hover" absolute color="#036358">
                            <v-btn>Apri</v-btn>
                        </v-overlay>
                    </v-fade-transition>-->
                </v-card>
                <!-- </template>
                </v-hover>-->
            </v-col>
        </v-row>
    </v-flex>
</template>


<script>
import AppService from "@/services/app.service";

export default {
    methods: {
        pub(e) {
            if (e) {
                //eventBus.$emit(e);
            }
        }
    },
    data: () => ({
        items: []
    }),
    created() {
        const srv = new AppService();
        this.items = srv.pretendApi(true);
    }
};
</script>

<style scoped>
</style>
