<template>
    <div class="about">
        <h1>This is NOT an about page</h1>
        <CardsRecursive />
        <Cards />
    </div>
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