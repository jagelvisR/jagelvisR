<template>
  <section id="Portfolio">
        <v-container 
            grid-list-md 
            grid-list-lg
            fluid
            style="min-height: 434px"
        > 
            <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-4">Portfolio</h1>

                <v-layout v-if="show" key="0" row wrap class="mb-2 mt-4">
                    <v-flex xs12 sm12 md4 lg3 xl3 
                        v-for="(item,i) of items"
                        :key="i"
                    >
                        <v-card>
                                <v-img
                                    aspect-ratio="2" 
                                    :src="item.src"
                                    height="250"
                                    :alt="item.alt"
                                >
                                </v-img>
                            
                            <v-card-title class="title">PROYECT</v-card-title>
                        
                        </v-card>
                    </v-flex>
                </v-layout>
        </v-container>
  </section>
</template>

<script>
    export default {
        name: 'PortfolioJA',
            data () {
                return {
                    show: true,
                    items: [
                    {
                        src: require('@/assets/vuetifyLogo.svg'),
                        alt: 'Vuetify',
                        icon:[
                            { 
                                fa:'fa-github'
                            },
                            {    
                                fa: 'fa-gitlab'
                            }
                        ],

                    },
                    {
                        src: require('@/assets/djangoLogo.svg'),
                        alt: 'Django',
                        icon:[
                            { 
                                fa:'fa-github'
                            },
                            
                        ],
                    },
                    {
                        src: require('@/assets/vueLogo.svg'),
                        alt: 'Vue',
                        icon:
                            [ 
                                'fa-github'
                                ,
                                'fa-gitlab'
                            ],
                    },
                    {
                        src: require('@/assets/fondo.jpg'),
                        alt: 'Code',
                        icon:
                            [ 
                                'fa-github'
                                ,
                                'fa-gitlab'
                            ],
                        category: 'All'
                    },
                    {
                        src: require('@/assets/descarga.png'),
                        alt: 'estrellas',
                        icon:
                            [ 
                                'fa-github'
                                ,
                                'fa-gitlab'
                            ],
                    },
                    {
                        src: require('@/assets/descarga.png'),
                        alt: 'estrellas',
                        icon:
                            [ 
                                'fa-github'
                                ,
                                'fa-gitlab'
                            ],
                    },
                    {
                        src: require('@/assets/descarga.png'),
                        alt: 'estrellas',
                        icon:
                            [ 
                                'fa-github'
                                ,
                                'fa-gitlab'
                            ],
                    },
                    {
                        src: "https://picsum.photos/350/165?random",
                        alt: 'estrellas',
                        icon:
                            [ 
                                'fa-github'
                                ,
                                'fa-gitlab'
                            ],
                    }                                       

                ],
                active: null,
            }
        },
        methods: {
            next () {
                const active = parseInt(this.active)
                this.active = (active < 2 ? active + 1 : 0)
            }
        }
    }
</script>

<style scoped>

.v-card--reveal {
    align-items: center;
    bottom: 0;
    justify-content: center;
    opacity: .6;
    position: absolute;
    width: 100%;
}

</style>