<template>
    <section>
    <v-parallax :src="require('@/assets/fondocode.jpg')" height="800">
        <v-container  grid-list-md text-xs-center>
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
                color="red darken-4"
            >
                <img src="@/assets/jagelvisR.jpeg" alt="avatar">
            </v-avatar>
        </v-flex>
        <!-- Nombres y work-->    
        <v-flex xs2>
            <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-2">
                José <b class="">Agelvis</b></h1>
            <div class="display-1 font-weight-bold white--text text-xs-center">
                Desarollador Web - Freelance
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
                >
                    <v-icon large color="white" size="30px">{{ icon.perfil }}</v-icon>
                </v-btn>
            </v-flex>
            </v-layout>
        </v-container>
        <v-container grid-list-md text-xs-center>
            <scrollactive 
            class="my-nav" 
            active-class="active"
            :offset="80"
            :duration="900"
            bezier-easing-value=".5,0,.35,1">    
                <v-btn 
                justify-center 
                align="center" 
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
    </v-parallax>
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


.pinkBg {
    background-color: #ed184f!important;
    background-image: linear-gradient(90deg, #fd5581, #fd8b55);
}
.intro-banner-vdo-play-btn{
    /*height:60px;*/
    /*width:60px;*/
    /*position:absolute;*/
    /*top:50%;*/
    /*left:50%;*/
    text-align:center;
    margin:-30px 0 0 -30px;
    border-radius:100px;
    z-index:1
}
.intro-banner-vdo-play-btn i{
    line-height:56px;
    font-size:30px
}
.intro-banner-vdo-play-btn .ripple{
    position:absolute;
    width:160px;
    height:160px;
    z-index:-1;
    left:50%;
    top:50%;
    opacity:0;
    margin:-80px 0 0 -80px;
    border-radius:100px;
    -webkit-animation:ripple 1.8s infinite;
    animation:ripple 1.8s infinite
}

@-webkit-keyframes ripple{
    0%{
        opacity:1;
        -webkit-transform:scale(0);
        transform:scale(0)
    }
    100%{
        opacity:0;
        -webkit-transform:scale(1);
        transform:scale(1)
    }
}
@keyframes ripple{
    0%{
        opacity:1;
        -webkit-transform:scale(0);
        transform:scale(0)
    }
    100%{
        opacity:0;
        -webkit-transform:scale(1);
        transform:scale(1)
    }
}
.intro-banner-vdo-play-btn .ripple:nth-child(2){
    animation-delay:.3s;
    -webkit-animation-delay:.3s
}
.intro-banner-vdo-play-btn .ripple:nth-child(3){
    animation-delay:.6s;
    -webkit-animation-delay:.6s
}

</style>