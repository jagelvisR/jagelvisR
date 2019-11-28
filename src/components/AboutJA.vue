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
                  :value="valueVuetify"
                  :color="'light-blue lighten-1'"
                >
                  <h2 class="white--text"><b>{{ valueVuetify }}%</b></h2>
                  <v-img :src="require('@/assets/vuetifyLogo.svg')" height="100" width="90"></v-img>
                  <h4 class="white--text mt-2">Vuetify</h4>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="valueVue"
                  :color="'green accent-3'"
                >
                  <h2 class="white--text"><b>{{ valueVue }}%</b></h2>
                  <v-img :src="require('@/assets/vueLogo.svg')" width="100"></v-img>
                  <h4 class="white--text mt-2">Vue</h4>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="valueReact"
                  :color="'light-blue accent-2'"
                >
                  <h2 class="white--text"><b>{{ valueReact }}%</b></h2>
                  <v-img :src="require('@/assets/reactLogo.svg')" width="100"></v-img>
                  <h4 class="white--text mt-2">React</h4>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="valueJavaScript"
                  :color="'yellow lighten-1'"
                >
                  <h2 class="white--text"><b>{{ valueJavaScript }}%</b></h2>
                  <v-img :src="require('@/assets/jsLogo.svg')" width="100"></v-img>
                  <h4 class="white--text mt-2">JavaScript</h4>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="valueGraphQL"
                  :color="'pink'"
                >
                  <h2 class="white--text"><b>{{ valueGraphQL }}%</b></h2>
                  <v-img :src="require('@/assets/graphqlLogo.svg')" width="89"></v-img>
                  <h4 class="white--text mt-2">GraphQL</h4>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="valueNodejs"
                  :color="'light-green darken-1'"
                >
                  <h2 class="white--text"><b>{{ valueNodejs }}%</b></h2>
                  <v-img :src="require('@/assets/nodejsLogo.svg')" width="85"></v-img>
                  <h4 class="white--text mt-2">Node js</h4>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="valueExpress"
                  :color="'blue-grey darken-1'"
                >
                  <h2 class="white--text"><b>{{ valueExpress }}%</b></h2>
                  <br>
                  <v-img :src="require('@/assets/expressLogo.svg')" width="175"></v-img>
                  <br>
                  <h4 class="white--text mt-2">Express js</h4>
                </v-progress-circular>                      
  
                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="valuePython"
                  :color="'yellow darken-1'"
                >
                  <h2 class="white--text"><b>{{ valuePython }}%</b></h2>
                  <v-img :src="require('@/assets/pythonLogo.svg')" width="100"></v-img>
                  <h4 class="white--text mt-2">Python</h4>
                </v-progress-circular>

                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="valueDjango"
                  :color="'green darken-4'"
                >
                  <h2 class="white--text"><b>{{ valueDjango }}%</b></h2>
                  <v-img :src="require('@/assets/djangoLogo.svg')" width="100"></v-img>
                  <h4 class="white--text mt-2">Django</h4>
                </v-progress-circular>
                  
                <v-progress-circular
                  :rotate="270"
                  :size="220"
                  :width="15"
                  :value="valuePostgresql"
                  :color="'light-blue darken-3'"
                >
                  <h2 class="white--text"><b>{{ valuePostgresql }}%</b></h2>
                  <v-img :src="require('@/assets/postgresLogo.svg')" width="100"></v-img>
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
        valueVuetify: 0,
        valueVue: 0,
        valueReact: 0,
        valueJavaScript: 0,
        valueGraphQL: 0,
        valueNodejs: 0,
        valueExpress:0,
        valuePython: 0,
        valueDjango: 0,
        valuePostgresql: 0,
        color : '',
      }
    },
    beforeDestroy () {
      clearInterval(this.interval)
    },
    mounted () {
      this.interval = setInterval(() => {

        if (this.valueVuetify === 80) {
          return (this.valueVuetify = 80)
        }
        
        if (this.valueVue === 60) {
          return (this.valueVue = 60)
        }

        if (this.valueReact === 45) {
          return (this.valueReact = 45)
        }

        if (this.valueJavaScript === 65) {
          return (this.valueJavaScript = 65)
        }

        if (this.valueGraphQL === 45) {
          return (this.valueGraphQL = 45)
        }

        if (this.valueNodejs === 60) {
          return (this.valueNodejs = 60)
        }

        if (this.valueExpress === 50) {
          return (this.valueExpress = 50)
        }

        if (this.valuePython === 70) {
          return (this.valuePython = 70)
        }

        if (this.valueDjango === 55) {
          return (this.valueDjango = 55)
        }

        if (this.valuePostgresql === 75) {
          return (this.valuePostgresql = 75)
        }
       
          this.valueVuetify += 80;

          this.valueVue += 75;
          
          this.valueReact += 45;

          this.valueJavaScript += 65;

          this.valueGraphQL += 40;

          this.valueNodejs += 60;

          this.valueExpress += 50;
          
          this.valuePython += 85;

          this.valueDjango += 55;

          this.valuePostgresql += 70;

      }, 1500)
    }
  }
</script>

<style lang="stylus" scoped>
  .v-progress-circular
    margin: 1rem
</style>