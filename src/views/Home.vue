<template>
  <v-app dark>
    <HomeJA/>
    <AboutJA/>
    <ServicesJA/>
  </v-app> 
</template>

<script>

import HomeJA from '@/components/HomeJA.vue';
import AboutJA from '@/components/AboutJA.vue';
import ServicesJA from '@/components/ServicesJA.vue';
//import HomeDetails from '@/components/HomeDetails';
//import HomePlans from '@/components/HomePlans';

  export default {
    name: 'home',
    components: {
      HomeJA,
      //HomeDetails,
      AboutJA,
      //HomePlans
      ServicesJA
    }
  }
</script>
