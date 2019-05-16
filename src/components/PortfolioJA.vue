<template>
    <section id='Portfolio'>
        <v-container grid-list-md fluid class="red darken-4">   
            <!-- Portafolio -->
            <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-4">Portfolio</h1>    
            <v-layout>
                <v-carousel>
                    <v-carousel-item
                    v-for="(item,i) in items"
                    :key="i"
                    :src="item.src"
                    ></v-carousel-item>
                </v-carousel>
            </v-layout>        
        </v-container>       
    </section>
</template>

<script>
    export default {
        name: 'PortfolioJA',
            data () {
                return {
                    items: [
                    {
                        src: 'https://cdn.vuetifyjs.com/images/carousel/squirrel.jpg'
                    },
                    {
                        src: 'https://cdn.vuetifyjs.com/images/carousel/sky.jpg'
                    },
                    {
                        src: 'https://cdn.vuetifyjs.com/images/carousel/bird.jpg'
                    },
                    {
                        src: 'https://cdn.vuetifyjs.com/images/carousel/planet.jpg'
                    }
                ]
            }
        }
    }
</script>

<style scoped>

</style>