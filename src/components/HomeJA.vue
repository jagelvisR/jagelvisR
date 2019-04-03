<template>
    <v-parallax src="https://www.catalunyapress.es/images/showid2/2158647?w=1200&zc=4" height="1000" xs4 lg4 md4>
        <v-layout justify-center align-center column md12>
            <v-avatar
          :tile="tile"
          :size="avatarSize"
          color="red lighten-4"
        >
          <img src="@/assets/jagelvisR.jpeg" alt="avatar">
        </v-avatar>
        
        <div class="display-4 font-weight-black white--text text-xs-center mb-3">
            José <b class="">Agelvis</b></div>
        <div class="display-1 font-weight-bold white--text text-xs-center">
            Ing. Sistemas | Desarollador Web Full Stack
        </div>

        <v-flex xs4>
            <v-card-text>
        <v-btn
          v-for="icon in icons"
          :key="icon"
          class="mx-3 white--text"
          icon
        >
          <v-icon size="24px">{{ icon }}</v-icon>
        </v-btn>
      </v-card-text>
      
        </v-flex>
        </v-layout>
        
        <v-layout justify-center>
            <v-btn fab class="red darken-4" align="center">
            <v-icon large color="white">expand_more</v-icon>
        </v-btn>
        </v-layout>
        
    </v-parallax>
</template>

<script>
export default {
    name: 'HomeJA',
    data: () => ({
        slider: 225,
        tile: false,
        icons: [
            'fab fa-facebook',
            'fab fa-twitter',
            'fab fa-instagram',
            'fab fa-github'
            ]      
    }),
    computed: {
      avatarSize () {
        return `${this.slider}px`
      }
    }
};
</script>

<style scoped>
.HomeJA {
    background: url('http://source.unsplash.com/0BhSKStVtdM');
    background-size: cover;
    width: 100%;
    height: 100%;
}
</style>