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
import AppService from "@/services/app.service";
import GenericComponent from "@/components/GenericComponent";

export default {
    components: { GenericComponent },
    data: () => ({
        items: []
    }),
    created() {
        const srv = new AppService();
        this.items = srv.getData(true);
    }
};
</script>
