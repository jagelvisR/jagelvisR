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
                        
                                <v-avatar
                                :tile="tile"
                                :size="avatarSize"
                                color="red darken-4"
                                >
                                    <i color="white" :class="`${serv.icon}`"></i>
                                </v-avatar>                                    
                            
                            <div class="mt-3">
                                <!-- Services name-->
                            
                                <h5>{{serv.name}}</h5>
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

<style lang="scss" scoped>

</style>