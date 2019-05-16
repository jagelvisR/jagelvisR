<template>
    <section id="Services">
            <v-container grid-list-md fluid>   
            <!-- Servicios -->
            <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-4">Services</h1>    
                <v-layout row wrap>
                    <v-flex
                        xs6
                        sm6
                        md3
                        lg3
                        align-center
                        justify-center
                        text-xs-center
                        v-for="(serv, index) in service"
                        :key="`${index}`"
                        class="mt-4"
                    >
                        <v-progress-circular
                        :width="5"
                        :size="120"
                        color="red darken-4"
                        indeterminate
                        >
                        <v-avatar
                            :tile="tile"
                            :size="avatarSize"
                            color="grey darken-2"
                            size="115"
                            >
                            <v-avatar
                                :tile="tile"
                                :size="avatarSize"
                                color="grey darken-3"
                            >
                                        <i :class="`${serv.icon}`"></i>
                            </v-avatar>     
                        </v-avatar>                                    
                        
                        </v-progress-circular>   
                        <div class="mt-3">
                                <!-- Services name-->
                            
                                <h4>{{serv.name}}</h4>
                                <br>
                            </div>   
                        
                    </v-flex>
                </v-layout>
            </v-container>          
    </section>
</template>

<script>
    export default {
        name: 'ServicesJA',
            data: () => ({
                slider: 100,
                tile: false,
                service: [
                    {icon: 'fa fa-code fa-4x', name:'Front-End'},
                    {icon: 'fa fa-laptop fa-4x', name:'Back-End'},
                    {icon: 'fa fa-database fa-4x', name:'Database'},
                    {icon: 'fa fa-cart-plus fa-4x', name:'E-Commerce'},
                ]
            }),

            computed: {
            avatarSize () {
                return `${this.slider}px`
            }
        }
    }
</script>

<style lang="stylus" scoped>
  .v-progress-circular
    margin: 1rem
</style>