<template>
  <v-app id="app" app dark>
        <v-content transition="slide-x-transition">
            <router-view></router-view>
            <back-to-top visibleoffset="150">
                <v-btn 
                    justify-center 
                    wrap
                    icon
                    dark
                    class="red darken-4 mt-5 btn-to-top"
                    >
                        <v-icon large color="white" size="40px">keyboard_arrow_up</v-icon>
                    </v-btn>
            </back-to-top>
        </v-content>
    </v-app>
</template>

<script>

//import AppHome from '@/components/AppHome.vue';

export default {
  name: 'App',
  components :{
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

</style>