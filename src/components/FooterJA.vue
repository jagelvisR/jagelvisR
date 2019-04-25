<template>
  <v-footer
    dark
    height="auto"
  >
    <v-card
      class="flex"
      flat
      tile
    >
      <v-card-title class="red darken-4">
        <strong class="subheading">Connect to my social media profiles!</strong>

        <v-spacer></v-spacer>

        <v-btn
          v-for="(icon, index) in icons"
          :key="`${index}`"
          class="mx-3"
          dark
          icon
          @click="abrirURL(`${icon.url}`)"
          target="_blank"
        >
          <v-icon size="24px">{{ icon.perfil }}</v-icon>
        </v-btn>
      </v-card-title>

      <v-card-actions class="grey darken-4 justify-center">
        &copy;2019  —  <strong>José Agelvis</strong>
      </v-card-actions>
    </v-card>
  </v-footer>
</template>

<script>
  export default {
    data: () => ({
      icons: [
        {perfil:'fa-facebook-f', url: 'https://facebook.com/jagelvisR'},
        {perfil:'fa-twitter', url: 'https://twitter.com/jagelvisR'},
        {perfil:'fa-instagram', url: 'https://instagram.com/jagelvisR'},
        {perfil:'fa-github', url: 'https://github.com/jagelvisR'},
        {perfil:'fa-gitlab', url: 'https://gitlab.com/jagelvisR'},
        {perfil:'fa-linkedin', url: 'https://www.linkedin.com/in/jos%C3%A9-agelvis-34a6aa158/'},
      ]
    }),
    methods: {
        abrirURL(url) {
            return window.open(url);
        },
    }
  }
</script>

<style scoped>

</style>