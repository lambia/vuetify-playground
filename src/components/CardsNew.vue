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
                :slots="item.slots"
            ></genericComponent>
        </v-row>
    </v-flex>
</template>


<script>
import GenericComponent from "@/components/GenericComponent";

export default {
    components: { GenericComponent },
    data: () => ({
        items: [],
        items_ok: [
            {
                component: "v-flex",
                properties: {
                    xs12: true,
                    class: ["pa-0", "ma-0"]
                },
                children: [
                    {
                        component: "v-row",
                        properties: {
                            "no-gutters": true,
                            class: ["pa-1"]
                        },
                        children: [
                            {
                                component: "v-col",
                                properties: {
                                    key: 0,
                                    cols: 4,
                                    class: ["pa-1", "ma-0"]
                                },
                                children: [
                                    {
                                        component: "v-card",
                                        properties: {
                                            elevation: 3,
                                            maxWidth: null,
                                            outlined: false,
                                            class: ["mx-auto", "pa-0", "ma-0"]
                                        },
                                        children: [
                                            {
                                                component: "v-img",
                                                properties: {
                                                    src:
                                                        "https://www.ultimatecarpage.com/images/car/960/BMW-M3-GTR-Strassen-Version-59370.jpg",
                                                    class: [
                                                        "black--text",
                                                        "align-end",
                                                        "pa-2",
                                                        "ma-0"
                                                    ],
                                                    gradient:
                                                        "to bottom, rgba(0,0,0,0.25), rgba(0,0,0,0.75)",
                                                    height: 150
                                                },
                                                slots: [
                                                    {
                                                        name: "placeholder",
                                                        properties: {
                                                            class: [
                                                                "pa-1",
                                                                "ma-0"
                                                            ]
                                                        },
                                                        children: [
                                                            {
                                                                component:
                                                                    "v-row",
                                                                properties: {
                                                                    align:
                                                                        "center",
                                                                    justify:
                                                                        "center",
                                                                    class: [
                                                                        "fill-height",
                                                                        "ma-0"
                                                                    ]
                                                                },
                                                                children: [
                                                                    {
                                                                        component:
                                                                            "v-progress-circular",
                                                                        properties: {
                                                                            indeterminate: true,
                                                                            color:
                                                                                "grey lighten-5",
                                                                            size: 48
                                                                        }
                                                                    }
                                                                ]
                                                            }
                                                        ]
                                                    }
                                                ],
                                                children: [
                                                    {
                                                        component:
                                                            "v-card-text",
                                                        properties: {
                                                            class: [
                                                                "pa-0",
                                                                "ma-0"
                                                            ]
                                                        },
                                                        children: [
                                                            {
                                                                component: "h2",
                                                                properties: {
                                                                    class: [
                                                                        "title",
                                                                        "text-center",
                                                                        "white--text"
                                                                    ]
                                                                },
                                                                body:
                                                                    "TITOLO IMG"
                                                            }
                                                        ]
                                                    },
                                                    {
                                                        component:
                                                            "v-card-text",
                                                        properties: {
                                                            class: [
                                                                "text-center",
                                                                "white--text",
                                                                "pa-0"
                                                            ]
                                                        },
                                                        body: "SOTTOTITOLO IMG"
                                                    }
                                                ]
                                            },
                                            {
                                                component: "v-icon",
                                                properties: {
                                                    size: 64,
                                                    color: "#0CC",
                                                    class: ["pa-4"]
                                                },
                                                body: "mdi-pencil"
                                            },
                                            {
                                                component: "v-card-text",
                                                properties: {
                                                    class: ["pa-0", "ma-0"]
                                                },
                                                children: [
                                                    {
                                                        component: "h4",
                                                        body: "Drago Alato",
                                                        properties: {
                                                            class: [
                                                                "title",
                                                                "primary--text",
                                                                "pa-2",
                                                                "text-center"
                                                            ]
                                                        }
                                                    }
                                                ]
                                            },
                                            {
                                                component: "v-card-text",
                                                properties: {
                                                    class: [
                                                        "text-center",
                                                        "pa-1",
                                                        "pb-2",
                                                        "black--text"
                                                    ]
                                                },
                                                body:
                                                    "Una BMW E46 M3 GTR Strassen Version"
                                            },
                                            {
                                                component: "v-card-actions",
                                                children: [
                                                    {
                                                        component: "v-flex",
                                                        properties: {
                                                            xs12: true,
                                                            class: [
                                                                "pa-0",
                                                                "ma-0",
                                                                "text-center"
                                                            ]
                                                        },
                                                        children: [
                                                            {
                                                                component:
                                                                    "v-btn",
                                                                properties: {
                                                                    class: [
                                                                        "black--text"
                                                                    ],
                                                                    outlined: true,
                                                                    text: true,
                                                                    to: "/about"
                                                                },
                                                                children: [
                                                                    {
                                                                        component:
                                                                            "v-icon",
                                                                        body:
                                                                            "mdi-heart"
                                                                    },
                                                                    {
                                                                        component:
                                                                            "v-label",
                                                                        body:
                                                                            "Con Icona"
                                                                    }
                                                                ]
                                                            }
                                                        ]
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
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
                body: "template",
                children: []
            }
        ],
        items_data: [
            [
                {
                    identity: "card.cover.img",
                    src:
                        "https://www.ultimatecarpage.com/images/car/960/BMW-M3-GTR-Strassen-Version-59370.jpg"
                },
                {
                    identity: "card.cover.title",
                    body: "TITOLO IMG"
                },
                {
                    identity: "card.cover.text",
                    body: "Drago Alato"
                },
                {
                    identity: "card.text",
                    body: "Una BMW E46 M3 GTR Strassen Version"
                }
            ]
        ],
        items_flat: [
            {
                id: 1,
                parentId: 0,
                component: "v-flex",
                properties: {
                    xs12: true,
                    class: ["pa-0", "ma-0"]
                }
            },
            {
                id: 2,
                parentId: 1,
                component: "v-row",
                properties: {
                    "no-gutters": true,
                    class: ["pa-1"]
                }
            },
            {
                id: 3,
                parentId: 2,
                component: "v-col",
                properties: {
                    key: 0,
                    cols: 4,
                    class: ["pa-1", "ma-0"]
                }
            },
            {
                id: 4,
                parentId: 3,
                component: "v-card",
                properties: {
                    elevation: 3,
                    maxWidth: null,
                    outlined: false,
                    class: ["mx-auto", "pa-0", "ma-0"]
                }
            },
            //INIZIO DA AGGIUSTARE
            {
                id: 5,
                parentId: 4,
                identity: "card.cover.img",
                component: "v-img",
                properties: {
                    src:
                        "https://www.ultimatecarpage.com/images/car/960/BMW-M3-GTR-Strassen-Version-59370.jpg", //SPOSTARE
                    class: ["black--text", "align-end", "pa-2", "ma-0"],
                    gradient: "to bottom, rgba(0,0,0,0.25), rgba(0,0,0,0.75)",
                    height: 150
                },
                slots: [6]
            },
            // {
            //     //SLOT
            //     id: 6,
            //     parentId: 4,
            //     component: "template",
            //     type: "slot",
            //     name: "placeholder",
            //     properties: {
            //         class: ["pa-1", "ma-0"]
            //     }
            // },

            // {
            //     //FIGLIO SLOT
            //     id: 7,
            //     parentId: 6,
            //     component: "v-row",
            //     properties: {
            //         align: "center",
            //         justify: "center",
            //         class: ["fill-height", "ma-0"]
            //     }
            // },
            // {
            //     //NIPOTE SLOT
            //     id: 8,
            //     parentId: 7,
            //     component: "v-progress-circular",
            //     properties: {
            //         indeterminate: true,
            //         color: "grey lighten-5",
            //         size: 48
            //     }
            // },
            {
                id: 9,
                parentId: 4,
                component: "v-card-text",
                properties: {
                    class: ["pa-0", "ma-0"]
                }
            },
            {
                id: 10,
                parentId: 4,
                identity: "card.cover.title",
                component: "h2",
                properties: {
                    class: ["title", "text-center", "white--text"]
                },
                body: "TITOLO IMG" //SPOSTARE
            },
            {
                id: 11,
                parentId: 4,
                identity: "card.cover.text",
                component: "v-card-text",
                properties: {
                    class: ["text-center", "white--text", "pa-0"]
                },
                body: "SOTTOTITOLO IMG" //SPOSTARE
            },
            {
                id: 12,
                parentId: 4,
                component: "v-icon",
                properties: {
                    size: 64,
                    color: "#0CC",
                    class: ["pa-4"]
                },
                body: "mdi-pencil" //SPOSTARE
            },
            {
                id: 13,
                parentId: 4,
                component: "v-card-text",
                properties: {
                    class: ["pa-0", "ma-0"]
                }
            },

            {
                id: 14,
                parentId: 13,
                identity: "card.title",
                component: "h4",
                body: "Drago Alato", //SPOSTARE
                properties: {
                    class: ["title", "primary--text", "pa-2", "text-center"]
                }
            },
            {
                id: 15,
                parentId: 4,
                identity: "card.text",
                component: "v-card-text",
                properties: {
                    class: ["text-center", "pa-1", "pb-2", "black--text"]
                },
                body: "Una BMW E46 M3 GTR Strassen Version" //SPOSTARE
            },
            {
                id: 16,
                parentId: 4,
                component: "v-card-actions"
            },
            {
                id: 17,
                parentId: 16,
                component: "v-flex",
                properties: {
                    xs12: true,
                    class: ["pa-0", "ma-0", "text-center"]
                }
            },
            {
                id: 18,
                parentId: 17,
                component: "v-btn",
                properties: {
                    class: ["black--text"],
                    outlined: true,
                    text: true,
                    to: "/about" //SPOSTARE
                }
            },
            {
                id: 19,
                parentId: 18,
                component: "v-icon",
                body: "mdi-heart" //SPOSTARE
            },
            {
                id: 20,
                parentId: 18,
                component: "v-label",
                body: "Con Icona" //SPOSTARE
            },
            {
                id: 999,
                component: "v-col",
                properties: {
                    cols: 6,
                    class: ["pa-1", "ma-0"]
                },
                body: "template"
            }
        ]
    }),
    created() {
        this.items = this.items_ok;
    }
};
</script>
