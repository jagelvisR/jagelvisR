<template>
 <section id="AboutMe">
   <vContainer fluid>
     <!-- About ME-->
    <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-2">About Me</h1>
      <!-- About descripcion-->
     <v-layout row wrap>
       <v-flex xs5>
         <v-card tile flat color="red darken-4">
           <v-card-text>
             <br>
             <p>
                I'm José Agelvis Freelance Web Developer from Caracas, Venezuela. Student of VIII Semester of Ing. System of the National Polytechnic Experimental University of the National Armed Force (UNEFA). I am currently working in the same institution. Due to the monetary exchange value of the Venezuelan bolivar and US dollar, I have the opportunity to offer competitive rates. You have the opportunity to hire my services at a lower cost than a local junior web developer.
             </p>
           </v-card-text>
         </v-card>
       </v-flex>
    
      <!-- Habilidades -->
     
       <v-flex xs7>
         <v-card tile flat color="white" class="black--text">
           <v-card-text>
            <h3 class="font-weight-red darken-4--text text-xs-center mb-2 mt-2">Habilidades</h3>
              <div class="text-xs-center">
                <v-progress-circular
                  :rotate="360"
                  :size="100"
                  :width="15"
                  :value="value"
                  color="teal"
                >
                  <h4>{{ value }}</h4>
                  <h5>Vue.js</h5>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="-90"
                  :size="100"
                  :width="15"
                  :value="value"
                  color="primary"
                >
                  <h4>{{ value }}</h4>
                  <h5>JQuery</h5>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="90"
                  :size="100"
                  :width="15"
                  :value="value"
                  color="red"
                >
                  <h4>{{ value }}</h4>
                  <h5>Laravel</h5>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="180"
                  :size="100"
                  :width="15"
                  :value="value"
                  color="pink"
                >
                  <h4>{{ value }}</h4>
                  <h5>Django</h5>
                </v-progress-circular>
              </div>
           </v-card-text>
         </v-card>
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