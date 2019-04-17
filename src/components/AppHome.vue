<template>
    <section>
        <v-navigation-drawer app v-model="drawer" class="grey darken-4" dark disable-resize-watcher>
            <v-list>
                <template v-for="(item, index) in items">
                    <v-list-tile :key="index">
                        <v-list-tile-content v-if="item.title != 'Contact' ">
                            {{item.title}}
                        </v-list-tile-content>
                        <v-list-tile-content v-else>
                            {{item.title}}
                        </v-list-tile-content>
                    </v-list-tile>
                    <v-divider :key="`divider-${index}`"></v-divider>
                </template>
            </v-list>
        </v-navigation-drawer>
        <v-toolbar app color="grey darken-4" dark class="white">
            <v-toolbar-side-icon class="hidden-md-and-up" @click="drawer = !drawer"></v-toolbar-side-icon>
            <v-toolbar-title>{{appTitle}}</v-toolbar-title>
            <v-spacer class="hidden-md-and-up"></v-spacer>
            <v-spacer class="hidden-sm-and-down"></v-spacer>
            <v-btn flat class="hidden-sm-and-down">Home</v-btn>
            <v-btn flat class="hidden-sm-and-down">About</v-btn>
            <v-btn flat class="hidden-sm-and-down">Services</v-btn>
            <v-btn flat class="hidden-sm-and-down">Portfolio</v-btn>
            <v-btn color="red darken-3" class="hidden-sm-and-down">Contact Me</v-btn>
        </v-toolbar>
    </section>
</template>

<script>
export default {
    name: 'HomeJA',
    data() {
        return {
            appTitle: 'José Agelvis',
            drawer: false,
            items: [
                { title: 'Home' },
                { title: 'About' },
                { title: 'Services' },
                { title: 'Porfolio' },
                { title: 'Contact Us' }
            ]
        };
    }
};
</script>

<style scoped>
a {
    color: white;
    text-decoration: none;
}
</style>