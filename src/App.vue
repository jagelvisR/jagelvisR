<template>
  <v-app id="app" app dark>
        <v-content transition="slide-x-transition">
            <router-view></router-view>
            <back-to-top 
                visibleoffset="150"
                bottom="75px" 
                right="05px"
                >
                <v-btn
                    id="lateral"
                    justify-center 
                    wrap
                    icon
                    dark
                    bottom
                    fab
                    class="red darken-3 btn-to-top"
                    
                    >
                        <v-icon large color="white">keyboard_arrow_up</v-icon>
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

/* This is for documentation purposes and will not be needed in your application */
  #lateral .v-speed-dial,
  #lateral .v-btn--floating {
    position: absolute;
  }
  #lateral .v-btn--floating {
    margin: 0 0 16px 16px;
  }

</style>