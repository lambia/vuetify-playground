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
import { VBtn, VCol } from "vuetify/lib";
import GenericComponent from "@/components/GenericComponent";

export default {
    components: { VBtn, VCol, GenericComponent },
    props: {
        component: String,
        properties: Object,
        body: String,
        children: Array
    },
    data: () => ({})
};
</script>
