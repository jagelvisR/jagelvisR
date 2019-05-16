<template>
  <v-app id="app" app dark fill-height>
        <AppHome/>
        <v-content transition="slide-x-transition">
            <router-view></router-view>
        </v-content>
    </v-app>
</template>

<script>

import AppHome from '@/components/AppHome.vue';

export default {
  name: 'App',
  components :{
    AppHome
  }
};
</script>

<style scoped>
/* play with some lines below */
#progress-container-el {
  /* background */
  background-color: #f4f4f4 !important;
}

#progress-el {
  /* progress bar */
  background-color: red !important;
}
</style>