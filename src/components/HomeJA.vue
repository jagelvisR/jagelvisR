<template>
    <section>
    <v-parallax :src="require('@/assets/fondocode.jpg')" height="800">
        <v-container  grid-list-md text-xs-center>
        <v-layout 
        justify-center 
        align-center 
        column
        class="white--text"
        wrap
        >
        <v-flex xs12>
        <!-- Avatar foto-->    
            <v-avatar
                :tile="tile"
                :size="avatarSize"
                class="mt-2"
                color="red darken-4"
            >
                <img src="@/assets/jagelvisR.jpeg" alt="avatar">
            </v-avatar>
        </v-flex>
        <!-- Nombres y work-->    
        <v-flex xs2>
            <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-2">
                José <b class="">Agelvis</b></h1>
            <div class="display-1 font-weight-bold white--text text-xs-center">
                Desarollador Web - Freelance
            </div>            
            <!-- btn redes sociales-->    
            <v-btn 
                fab
                wrap
                class="red darken-4 mt-5" 
                align="center"
                v-for="(icon, index) in icons"
                :key="`${index}`"
                icon
                dark
                target="_blank"
                @click="abrirURL(`${icon.url}`)"
                >
                    <v-icon large color="white" size="30px">{{ icon.perfil }}</v-icon>
                </v-btn>
            </v-flex>
            </v-layout>
        </v-container>
        <v-container grid-list-md text-xs-center>
            <v-btn 
        justify-center 
        align="center" 
        fab
        wrap
        class="red darken-4 mt-5">
            <v-icon large color="white" size="50px">expand</v-icon>
        </v-btn>
        </v-container>
    </v-parallax>
    </section>
</template>

<script>
export default {
    name: 'HomeJA',
    data: () => ({
        slider: 260,
        tile: false,
        icons: [
            {perfil:'fa-facebook-f', url: 'https://facebook.com/jagelvisR'},
            {perfil:'fa-twitter', url: 'https://twitter.com/jagelvisR'},
            {perfil:'fa-instagram', url: 'https://instagram.com/jagelvisR'},
            {perfil:'fa-github', url: 'https://github.com/jagelvisR'},
            {perfil:'fa-gitlab', url: 'https://gitlab.com/jagelvisR'},
            {perfil:'fa-linkedin', url: 'https://www.linkedin.com/in/jos%C3%A9-agelvis-34a6aa158/'},
            ],        
    }),
    computed: {
      avatarSize () {
        return `${this.slider}px`
      },

    },
    methods: {
        abrirURL(url) {
            return window.open(url);
        }
    }
    
};
</script>

<style scoped>
.HomeJA {
    /*background: url('https://www.catalunyapress.es/images/showid2/2158647?w=1200&zc=4');*/
    /*background-size: cover;
    width: 100%;
    height: 100%;*/

    background-size:cover;

    /* Set a specific height */
    min-height: 100vh;

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>