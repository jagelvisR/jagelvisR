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
  components :{
  },
  data: () => ({
    fab: false
  }),

  methods: {
    onScroll (e) {
      if (typeof window === 'undefined') return
      const top = window.pageYOffset ||   e.target.scrollTop || 0
      this.fab = top > 20
    },
    toTop () {
      this.$vuetify.goTo(0)
    }
  }
};
</script>

<style scoped>

/* css btn scroll */
.btn-to-top {
  width: 60px;
  height: 60px;
  padding: 10px 16px;
  border-radius: 50%;
  font-size: 22px;
  line-height: 22px;
}

/* This is for documentation purposes and will not be needed in your application */
  #lateral .v-speed-dial,
  #lateral .v-btn--floating {
    position: absolute;
  }
  #lateral .v-btn--floating {
    margin: 0 0 16px 16px;
  }

</style>