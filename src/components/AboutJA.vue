<template v-slot:opposite>
 <section id="AboutMe">
   <vContainer fluid>
     <!-- About ME-->
    <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-4">About Me</h1>
      <!-- About descripcion-->
     <v-layout row wrap>
       <v-flex xs12>
         <v-card tile flat color="red darken-4">
           <v-card-text>
             <br>
             <h5>
                I'm José Agelvis Freelance Web Developer from Caracas, Venezuela. Student of VIII Semester of Ing. System of the National Polytechnic Experimental University of the National Armed Force (UNEFA). I am currently working in the same institution. Due to the monetary exchange value of the Venezuelan bolivar and US dollar, I have the opportunity to offer competitive rates. You have the opportunity to hire my services at a lower cost than a local junior web developer.
             </h5>
           </v-card-text>
         </v-card>
    
      <!-- Habilidades -->
     
         <v-card tile flat>
           <v-card-text>
            <h3 class="font-weight-red darken-4--text text-xs-center mb-2 mt-2">Skills</h3>
              <div class="text-xs-center">

                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="value"
                  color="light-blue lighten-1"
                >
                  <h3>{{ value }}</h3>
                  <v-img :src="require('@/assets/vuetifyLogo.png')" width="100"></v-img>
                  <h4 class="white--text mt-2">Vuetify</h4>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="value"
                  color="green accent-3"
                >
                  <h3>{{ value }}</h3>
                  <v-img :src="require('@/assets/vueLogo.png')" width="100"></v-img>
                  <h4 class="white--text mt-2">Vue.js</h4>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="value"
                  color="yellow lighten-1"
                >
                  <h3>{{ value }}</h3>
                  <v-img :src="require('@/assets/jsLogo.png')" width="100"></v-img>
                  <h4 class="white--text mt-2">JavaScript</h4>
                </v-progress-circular>
                
                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="value"
                  color="red"
                >
                  <h3>{{ value }}</h3>
                  <v-img :src="require('@/assets/laravelLogo.png')" width="100"></v-img>
                  <h4 class="white--text mt-2">Laravel</h4>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="value"
                  color="green darken-4"
                >
                  <h3>{{ value }}</h3>
                  <v-img :src="require('@/assets/djangoLogo.png')" width="100"></v-img>
                  <h4 class="white--text mt-2">Django</h4>
                </v-progress-circular>
                  
                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="value"
                  color="light-blue darken-3"
                >
                  <h3>{{ value }}</h3>
                  <v-img :src="require('@/assets/postgresLogo.png')" width="100"></v-img>
                  <h4 class="white--text mt-2">Postgresql</h4>
                </v-progress-circular>
              </div>
           </v-card-text>
         </v-card>
       </v-flex>
     </v-layout>

     <!-- Experiencia Laboral -->

     <v-layout row wrap>
        <v-flex xs12>
          <h3 class="font-weight-red darken-4--text text-xs-center mb-2 mt-4">Experience</h3>
          <v-timeline>
            <v-timeline-item
              v-for="n in 4"
              :key="n"
              color="red darken-4"
              large
            >    
              <v-card class="elevation-2 grey darken-2">
                <v-card-title class="headline red darken-4">Lorem ipsum</v-card-title>
                  <v-card-text>
                    Lorem ipsum dolor sit amet, no i nam oblique veritus. Commune scaevola imperdiet nec ut, sed euismod convenire principes at. Est et nobis iisque percipit, an vim zril disputando voluptatibus, vix an salutandi sententiae.
                  </v-card-text>
              </v-card>
            </v-timeline-item>
          </v-timeline>    
        </v-flex>
     </v-layout>

     <!-- Educación -->

    <v-layout row wrap tile class="grey darken-3">
          <v-flex xs12>
            <h3 class="font-weight-red darken-4--text text-xs-center mb-2 mt-4">Education</h3>
            <v-timeline>
              <v-timeline-item
                v-for="n in 4"
                :key="n"
                color="red darken-4"
                large
              >    
                <v-card class="elevation-2 grey darken-2">
                  <v-card-title class="headline red darken-4">Lorem ipsum</v-card-title>
                    <v-card-text>
                      Lorem ipsum dolor sit amet, no i nam oblique veritus. Commune scaevola imperdiet nec ut, sed euismod convenire principes at. Est et nobis iisque percipit, an vim zril disputando voluptatibus, vix an salutandi sententiae.
                    </v-card-text>
                </v-card>
              </v-timeline-item>
            </v-timeline>    
          </v-flex>  
     </v-layout>

   </vContainer>
 </section>
</template>

<script>
  export default {
    name:'AboutJA',
    data () {
      return {
        interval: {},
        value: 0
      }
    },
    beforeDestroy () {
      clearInterval(this.interval)
    },
    mounted () {
      this.interval = setInterval(() => {
        if (this.value === 100) {
          return (this.value = 0)
        }
        this.value += 100
      }, 1000)
    }
  }
</script>

<style lang="stylus" scoped>
  .v-progress-circular
    margin: 1rem
</style>