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
    fab: false,
    duration: 900,
    offset:0
  }),
  computed: {
      target () {
        const value = this[this.type]
        if (!isNaN(value)) return Number(value)
        else return value
      },
      options () {
        return {
          duration: this.duration,
          offset: this.offset
        }
      },
  },
  methods: {
    onScroll (e) {
      if (typeof window === 'undefined') return
      let duracionScroll = setTimeout(function(){scrollTop = 0},10000);
      const top = window.pageYOffset ||   e.target.scrollTop || 0;
      this.fab = top > 20
    },
    toTop () {
      this.$vuetify.goTo(target, options)
    }
  }
};
</script>

<style scoped>

</style>