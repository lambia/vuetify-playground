<template>
    <div>
        <component :is="component" v-bind="properties">
            <span>Component: {{body}}</span>
            <GenericComponent
                v-for="(item,key) in children"
                :key="key"
                :component="item.component"
                :properties="item.properties"
            >
                <span>Child: {{item.body}}</span>
            </GenericComponent>
        </component>
    </div>
</template>


<script>
import { VBtn, VCol, VCard } from "vuetify/lib";

export default {
    name: "GenericComponent",
    components: {
        VBtn,
        VCol,
        VCard,
        GenericComponent: () => import("@/components/GenericComponent")
    },
    props: {
        component: String,
        properties: Object,
        body: String,
        children: Array
    },
    data: () => ({})
};
</script>
