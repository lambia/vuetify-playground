<template>
    <v-flex xs12 pa-0 ma-0>
        <v-row no-gutters class="pa-1">
            <genericComponent
                v-for="(item,key) in items"
                :key="key"
                :component="item.component"
                :properties="item.properties"
                :body="item.body"
                :children="item.children"
            ></genericComponent>

            <!--
            <v-col v-for="(item, key) in items" :key="key" v-bind="item.column">
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
                </v-card>
            </v-col>
            -->
        </v-row>
    </v-flex>
</template>


<script>
import { VBtn, VCol, VCard } from "vuetify/lib";
import GenericComponent from "@/components/GenericComponent";

export default {
    components: { VBtn, VCol, VCard, GenericComponent },
    data: () => ({
        items: [
            {
                component: "v-col",
                properties: {
                    class: ["pa-1", "ma-0"],
                    cols: 6
                },
                body: "a",
                children: [
                    {
                        component: "v-card",
                        properties: {
                            class: ["pa-1", "ma-0"]
                        },
                        body: "x"
                    }
                ]
            },
            {
                component: "v-col",
                properties: {
                    cols: 6,
                    class: ["pa-1", "ma-0"]
                },
                body: "b"
            }
        ],
        template: [
            {
                component: "title1",
                props: {},
                children: [
                    {
                        component: "title1a",
                        props: {}
                    },
                    {
                        component: "title1b",
                        props: {},
                        children: [
                            {
                                component: "title1b.2",
                                props: {}
                            }
                        ]
                    }
                ]
            },
            {
                component: "title2",
                props: {}
            }
        ]
    })
};
</script>
