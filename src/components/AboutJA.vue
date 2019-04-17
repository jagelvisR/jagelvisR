<template>
 <section>
   <vContainer fluid>
     <v-layout row wrap>
       <v-flex xs9>
         <v-card tile flat color="red darken-4">
           <v-card-text>
             <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-2">About Me</h1>
             <br>
             <p>
                Soy José Agelvis Desarrollador Web Freelance de Caracas, Venezuela. Estudiante de VIII Semestre 
              de Ing. Sistema de la Universidad Nacional Experimental Politécnica de la Fuerza Armada Nacional (UNEFA).
              Trabajo actualmente en la misma institución. Debido a el valor de cambio monetario del bolívar venezolano y dolar estdounidense, tengo la oportunidad de ofrecer tarifas 
              de servicios competitivas. Usted tiene la oprtunidad de contratar mis servicios a un costo mucho menor
              que un desarrollador web junior local. 
             </p>
           </v-card-text>
         </v-card>
         <v-card tile flat color="white" class="black--text">
           <v-card-text>
            <h2 class="font-weight-red darken-4--text text-xs-center mb-2 mt-2">Habilidades</h2>
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
        <v-flex xs3>
         <v-card tile flat>
             <img src="@/assets/jagelvisR.jpeg" alt="jagelvisr" width="320" height="426">
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
        this.value += 10
      }, 1000)
    }
  }
</script>

<style lang="stylus" scoped>
  .v-progress-circular
    margin: 1rem
</style>