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
        </v-row>
    </v-flex>
</template>


<script>
import GenericComponent from "@/components/GenericComponent";

export default {
    components: { GenericComponent },
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
                            class: ["pa-6", "ma-0"]
                        },
                        body: "x",
                        children: [
                            {
                                component: "v-btn",
                                properties: {
                                    class: ["pa-3"]
                                },
                                body: "button1"
                            }
                        ]
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
