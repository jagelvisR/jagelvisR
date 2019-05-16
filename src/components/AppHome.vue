<template>
    <section id="Home">
        <v-navigation-drawer 
        app 
        v-model="drawer" 
        class="grey darken-4" 
        dark 
        temporary
        width="200"
        clipped
        fixed
        >
            <v-list class="pa-1 mt-2" dense>
                    <v-list-tile avatar>
                        <v-list-tile-avatar>
                            <img :src="require('@/assets/jagelvisR.jpeg')" height="600">
                    </v-list-tile-avatar>

                    <v-list-tile-content>
                        <v-list-tile-title>{{appTitle}}</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
                <v-divider></v-divider>
            </v-list>
                
            <v-list
                v-for="item in items"
                :key="item.title"
                class="pt-0" 
                dense
                >
                <scrollactive 
                    class="my-nav" 
                    active-class="active"
                    :offset="80"
                    :duration="900"
                    bezier-easing-value=".5,0,.35,1">
                     <!-- btn con flat sin contact Me-->
                    <v-btn
                        flat
                        :color="`${item.color}`" 
                        class="scrollactive-item nav-item" 
                        :href="`${item.scroll}`" 
                        @click="drawer = !drawer"
                        v-if="item.scroll != '#ContactMe'"
                    >
                        {{ item.title }}
                    </v-btn>
                    <!-- btn sin flat para contact Me-->
                    <v-btn
                        
                        :color="`${item.color}`" 
                        class="scrollactive-item nav-item" 
                        :href="`${item.scroll}`" 
                        @click="drawer = !drawer"
                        v-else
                    >
                        {{ item.title }}
                    </v-btn> 
                </scrollactive>
            </v-list>
        </v-navigation-drawer>

        <!--Scroll para ONEPAGE HOME con Scrollactive-->

        <scrollactive 
            class="my-nav" 
            active-class="active"
            :offset="80"
            :duration="900"
            bezier-easing-value=".5,0,.35,1"
        >
            <v-toolbar 
            app 
            color="grey darken-4" 
            dark 
            class="white"
            >
                <v-toolbar-side-icon 
                    class="hidden-md-and-up" 
                    @click="drawer = !drawer"
                >
                </v-toolbar-side-icon>
                
                <v-toolbar-title>{{appTitle}}</v-toolbar-title>

                <v-spacer class="hidden-md-and-up"></v-spacer>
                
                <v-spacer class="hidden-sm-and-down"></v-spacer>

                <v-btn flat class="hidden-sm-and-down scrollactive-item nav-item" href="#Home">Home</v-btn>
                <v-btn flat class="hidden-sm-and-down scrollactive-item" href="#AboutMe">About Me</v-btn>
                <v-btn flat class="hidden-sm-and-down scrollactive-item" href="#Services">Services</v-btn>
                <v-btn flat class="hidden-sm-and-down scrollactive-item" href="#Portfolio">Portfolio</v-btn>
                <v-btn color="red darken-4" class="hidden-sm-and-down scrollactive-item" href="#ContactMe">Contact Me</v-btn>
            
            </v-toolbar>
        </scrollactive>
    </section>
</template>

<script>

export default {    
    name: 'AppHome',
    data() {
        return {
            appTitle: 'José Agelvis',
            drawer: false,
            items: [
                { title: 'Home', scroll: '#Home', color: ''},
                { title: 'About Me', scroll: '#AboutMe', color: '' },
                { title: 'Services', scroll: '#Services', color: '' },
                { title: 'Portfolio', scroll: '#Portfolio', color: '' },
                { title: 'Contact Me', scroll: '#ContactMe', color: 'red darken-4'  }
            ],
        }   
    },   
};
</script>

<style scoped>
a {
    color: red;
    text-decoration: none;
}
</style>

