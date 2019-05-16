<template>
  <v-app dark>
    <AppHome/>
    <HomeJA/>
    <AboutJA/>
    <ServicesJA/>
    <PortfolioJA/>
    <ContactJA/>
    <FooterJA/>
  </v-app> 
</template>

<script>
import AppHome from '@/components/AppHome.vue';
import HomeJA from '@/components/HomeJA.vue';
import AboutJA from '@/components/AboutJA.vue';
import ServicesJA from '@/components/ServicesJA.vue';
import PortfolioJA from '@/components/PortfolioJA.vue';
import ContactJA from '@/components/ContactJA.vue';
import FooterJA from '@/components/FooterJA.vue';


  export default {
    name: 'Home',
    components: {
      AppHome,
      HomeJA,
      AboutJA,
      ServicesJA,
      PortfolioJA,
      ContactJA,
      FooterJA
    }
  }
</script>

