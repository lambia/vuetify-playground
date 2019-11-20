let Structure = [
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
        component: "v-img",
        properties: {
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
        parentId: 5,
        component: "v-card-text",
        properties: {
            class: ["pa-0", "ma-0"]
        }
    },
    {
        id: 10,
        parentId: 9,
        component: "h2",
        properties: {
            class: ["title", "text-center", "white--text"]
        }
    },
    {
        id: 11,
        parentId: 5,
        component: "v-card-text",
        properties: {
            class: ["text-center", "white--text", "pa-0"]
        }
    },
    {
        id: 12,
        parentId: 4,
        component: "v-icon",
        properties: {
            size: 64,
            color: "#0CC",
            class: ["pa-4"]
        }
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
        component: "h4",
        properties: {
            class: ["title", "primary--text", "pa-2", "text-center"]
        }
    },
    {
        id: 15,
        parentId: 4,
        component: "v-card-text",
        properties: {
            class: ["text-center", "pa-1", "pb-2", "black--text"]
        }
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
            text: true
        }
    },
    {
        id: 19,
        parentId: 18,
        component: "v-icon"
    },
    {
        id: 20,
        parentId: 18,
        component: "v-label"
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
];

export default Structure;