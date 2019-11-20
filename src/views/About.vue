<template>
    <v-container fluid class="pa-0" ref="pageTop">
        <v-layout text-center wrap>
            <h1>This is NOT an about page</h1>
            <CardsRecursive />
            <Cards />
        </v-layout>
    </v-container>
</template>

<script>
import Cards from "@/components/Cards";
import CardsRecursive from "@/components/CardsRecursive";

export default {
    components: {
        Cards,
        CardsRecursive
    }
};
</script>