<template>
    <v-row no-gutters class="pa-1">
        <v-col v-for="(item, key) in items" :key="key" v-bind="item.column">
            <v-card v-bind="item.card">
                <v-img v-if="item.cover && item.cover.src" v-bind="item.cover">
                    <v-card-title v-text="item.cover.caption"></v-card-title>
                </v-img>

                <v-icon
                    v-if="item.icon && item.icon.name"
                    v-text="item.icon.name"
                    v-bind="item.icon"
                ></v-icon>

                <!-- <v-card-title :class="'justify-'+config.align.caption+' pa-2'" v-if="item.img.caption">
                        <v-spacer v-if="config.align.caption=='right'"></v-spacer>
                        {{item.img.caption}}
                        <v-spacer v-if="config.align.caption=='left'"></v-spacer>
                </v-card-title>-->

                <v-card-title v-text="item.title.text" v-bind="item.title"></v-card-title>
                <v-card-text v-text="item.text.text" v-bind="item.text"></v-card-text>

                <v-card-actions v-if="item.actions && item.actions.items">
                    <v-btn text v-for="(action,key) in item.actions.items" :key="key">
                        <v-icon v-if="action.icon" v-text="action.icon"></v-icon>
                        <v-label v-if="action.icon && action.text">&nbsp;</v-label>
                        {{action.text}}
                    </v-btn>
                </v-card-actions>
            </v-card>
        </v-col>
    </v-row>
</template>


<script>
export default {
    props: {
        items: Array
    }
};
</script>

<style scoped>
</style>
