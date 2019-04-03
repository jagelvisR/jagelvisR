<template>
  <v-app id="app">
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
