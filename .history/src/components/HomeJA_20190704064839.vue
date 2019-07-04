<template>
    <section app dark  class="aboutMe">
        <!-- Grafos efect vue-particles con css en toda la template-->
        <vue-particles
            color="#ffffff"
            :particleOpacity="0.7"
            linesColor="#ffffff"
            :particlesNumber="80"
            shapeType="circle"
            :particleSize="5"
            :linesWidth="2"
            :lineLinked="true"
            :lineOpacity="0.4"
            :linesDistance="150"
            :moveSpeed="3"
            :hoverEffect="true"
            hoverMode="grab"
            :clickEffect="false"
            clickMode="push"
            class="particles-js"
            >
        </vue-particles>
        <!-- Content HomeJA-->
            <v-container grid-list-md text-xs-center src="require('@assets/descarga.png')">
               
                <v-layout 
                    justify-center 
                    align-center 
                    column
                    class="white--text"
                    wrap
                >
                <v-flex xs12>
                <!-- Avatar foto-->    
                    <v-avatar
                        :tile="tile"
                        :size="avatarSize"
                        class="mt-2"
                    >
                        <img src="@/assets/jagelvisR.jpeg" alt="avatar">
                    </v-avatar>
                <!-- Nombres y work-->    
                    <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-2">
                        José <b class="">Agelvis</b></h1>
                    <div class="display-1 font-weight-bold white--text text-xs-center">
                        Desarollador Web
                    </div>            
                    <!-- btn redes sociales-->    
                    <v-btn 
                        wrap
                        class="red darken-4 mt-5 btn-circle btn-lg" 
                        align="center"
                        v-for="(icon, index) in icons"
                        :key="`${index}`"
                        icon
                        dark
                        target="_blank"
                        @click="abrirURL(`${icon.url}`)"
                        style=""
                    >
                            <v-icon large color="white" size="30px">{{ icon.perfil }}</v-icon>
                        </v-btn>
                    </v-flex>
                </v-layout>    
            
                <scrollactive 
                    class="my-nav" 
                    active-class="active"
                    :offset="80"
                    :duration="900"
                    bezier-easing-value=".5,0,.35,1"
                    >    
                    <v-btn 
                        justify-center 
                        wrap
                        icon
                        dark
                        class="red darken-4 mt-5 scrollactive-item btn-circle btn-xl"
                        to='#AboutMe'
                    >
                        <v-icon large color="white" size="30px">fa-angle-double-down</v-icon>
                    </v-btn>
                </scrollactive>
            </v-container>
    </section>
</template>

<script>
export default {
    name: 'HomeJA',
    data: () => ({
        slider: 260,
        tile: false,
        icons: [
            {perfil:'fa-facebook-f', url: 'https://facebook.com/jagelvisR'},
            {perfil:'fa-twitter', url: 'https://twitter.com/jagelvisR'},
            {perfil:'fa-instagram', url: 'https://instagram.com/jagelvisR'},
            {perfil:'fa-github', url: 'https://github.com/jagelvisR'},
            {perfil:'fa-gitlab', url: 'https://gitlab.com/jagelvisR'},
            {perfil:'fa-linkedin', url: 'https://www.linkedin.com/in/jos%C3%A9-agelvis-34a6aa158/'},
            ],
                  
    }),
    computed: {
      avatarSize () {
        return `${this.slider}px`
      },

    },
    methods: {
        abrirURL(url) {
            return window.open(url);
        },
    }
    
};
</script>

<style scoped>


 .particles-js {
    background-size: cover;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}

 .aboutMe {
    background-size: cover;
    top: 200px;
    top: 0;
    left: 0;
    width: 100%;
    height: 850px;
}



/*btn circulares*/
.btn-circle {
  width: 30px;
  height: 30px;
  text-align: center;
  padding: 6px 0;
  font-size: 12px;
  line-height: 1.428571429;
  border-radius: 15px;
}
.btn-circle.btn-lg {
  width: 50px;
  height: 50px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.33;
  border-radius: 25px;
}
.btn-circle.btn-xl {
  width: 70px;
  height: 70px;
  padding: 10px 16px;
  font-size: 24px;
  line-height: 1.33;
  border-radius: 35px;
}

/* boton de secciones*/



</style>