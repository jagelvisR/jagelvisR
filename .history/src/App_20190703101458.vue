<template>
  <v-app 
    id="app" 
    app 
    dark
    v-scroll="onScroll"
    :color="isTransparent ? 'transparent' : '#ffffff'"
    :flat="isTransparent"
    fixed
    >
        <v-content transition="slide-x-transition">
            <router-view></router-view>
             <v-toolbar-side-icon class="hidden-md-and-up" @click="toggleDrawer" />
        </v-content>
    </v-app>
</template>

<script>

//import AppHome from '@/components/AppHome.vue';

export default {
  name: 'App',
  data: () => ({
    isTransparent: true
  }),
  methods: {
    onScroll () {
      this.isTransparent = window.pageYOffset < 40
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