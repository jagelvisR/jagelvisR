<template>
  <section id="Portfolio">
      <v-container grid-list-md fluid> 
          <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-4">Portfolio</h1>
            <v-tabs
                v-model="active"
                color="grey darken-4"
                dark
                slider-color="red darken-4"
                fixed-tabs
                class="mt-4"
            >
                <v-tab
                    v-for="(port, index) in portfolios"
                    :key="index"
                    ripple
                >
                    {{ port.name }}

                </v-tab>
                    <v-tab-item
                        v-for="(item, i) in items"
                        :key="i"
                    >
                        <v-hover>

                            <v-card
                                fluid
                                flat
                                tile
                                slot-scope="{ hover }"
                                class="mx-auto"
                            >
                                <v-card-text
                                    v-if="item.category == 'All'"
                                >
                                    <v-img
                                        :aspect-ratio="16/9"
                                        :src="item.src" 
                                        :height="item.height" 
                                        :width="item.width"
                                        :alt="item.alt"
                                    >
                                    <v-expand-transition>
                                        <div
                                            v-if="hover"
                                            class="d-flex transition-fast-in-fast-out red darken-2 v-card--reveal display-4 white--text"
                                            style="height: 100%;"
                                            icon
                                            wrap
                                        >
                                            <v-layout>
                                                <v-flex 
                                                    md2
                                                    sm12
                                                    lg2
                                                    justify-center
                                                    wrap
                                                    class="mx-4"
                                                    
                                                    
                                                >
                                                    <!-- Sub-v-For para btn-->
                                                    <v-btn 
                                                        icon
                                                        wrap
                                                        absolute
                                                        v-for="(btn, i) in item.icon"
                                                        :key="i"
                                                        class="mx-5"
                                                    >
                                                        <v-icon  
                                                            size="60px">{{btn.fa}}
                                                        </v-icon>
                                                    </v-btn>
                                                </v-flex>
                                            </v-layout>
                                        </div>
                                    </v-expand-transition>
                                </v-img>
                            </v-card-text>
                        </v-card>
                    </v-hover>
                </v-tab-item>
            </v-tabs>
        </v-container>
  </section>
</template>

<script>
    export default {
        name: 'PortfolioJA',
            data () {
                return {
                    items: [
                    {
                        src: require('@/assets/vuetifyLogo.svg'),
                        height: "250",
                        width: "180",
                        alt: 'Vuetify',
                        icon:[
                            { 
                                fa:'fa-github'
                            },
                            {    
                                fa: 'fa-gitlab'
                            }
                        ],
                        category: 'All'

                    },
                    {
                        src: require('@/assets/djangoLogo.svg'),
                        height: "250",
                        width: "250",
                        alt: 'Django',
                        icon:[
                            { 
                                fa:'fa-github'
                            },
                            
                        ],
                        category: 'All'
                    },
                    {
                        src: require('@/assets/vueLogo.svg'),
                        height: "250",
                        width: "250",
                        alt: 'Vue',
                        icon:
                            [ 
                                'fa-github'
                                ,
                                'fa-gitlab'
                            ],
                        category: 'All'
                    },
                    {
                        src: require('@/assets/fondo.jpg'),
                        height: "250",
                        width: "250",
                        alt: 'Code',
                        icon:
                            [ 
                                'fa-github'
                                ,
                                'fa-gitlab'
                            ],
                        category: 'All'
                    }
                ],
                portfolios: [
                    {name: 'All'},
                    {name: 'Recents'},
                    {name: 'Olds'},
                ],
                active: null,
                text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
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