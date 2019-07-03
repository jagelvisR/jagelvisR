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
    type: 'number',
    fab: false,
    duration: 900,
  }),
  methods: {
    onScroll (e) {
      if (typeof window === 'undefined') return
      const top = window.pageYOffset ||   e.target.scrollTop || 0;
      this.fab = top > 20
    },
    toTop () {
      this.$vuetify.goTo(0, { offset: -100 ,duration: 200 })
    }
  }
};
</script>

<style scoped>

</style>