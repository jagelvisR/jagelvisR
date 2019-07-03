<template>
  <v-app id="app" app dark>
        <v-content transition="slide-x-transition">
            <router-view></router-view>
            <v-btn
              v-scroll="onScroll"
              v-show="fab"
              fab
              dark
              fixed
              bottom
              right
              color="red darken-3"
              @click="toTop"
              class="scroll"
            >
              <v-icon>keyboard_arrow_up</v-icon>
          </v-btn>
        </v-content>
    </v-app>
</template>

<script>

//import AppHome from '@/components/AppHome.vue';

export default {
  name: 'App',
  data: () => ({
    fab: false
  }),
  methods: {
    onScroll (e) {
      if (typeof window === 'undefined') return
      const top = window.pageYOffset ||   e.target.scrollTop || 0;
      this.fab = top > 20
    },
    toTop () {
      this.$vuetify.goTo("#Home", { duration: 2000 })
    }
  }
};
</script>

<style scoped>

</style>