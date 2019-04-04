<template>
  <span>
    <HomeJA></HomeJA>
    <AboutJA/>
  </span> 
</template>

<script>

import HomeJA from '@/components/HomeJA.vue';
import AboutJA from '@/components/AboutJA.vue';
//import HomeDetails from '@/components/HomeDetails';
//import HomePlans from '@/components/HomePlans';

  export default {
    name: 'home',
    components: {
      HomeJA,
      //HomeDetails,
      AboutJA,
      //HomePlans
    }
  }
</script>
