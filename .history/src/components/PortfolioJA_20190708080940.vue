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
                v-for="n in 4"
                :key="n"
                ripple
            >
                Item {{ n }}

            </v-tab>
            <v-tab-item
                v-for="(item, i) in items"
                :key="i"
            >
            <v-hover>

                <v-card
                    flat
                    slot-scope="{ hover }"
                    class="mx-auto"
                >
                    <v-card-text>
                        <v-img
                            :aspect-ratio="16/9"
                            :src="item.src" 
                            :height="item.height" 
                            :width="item.width"
                        >
                            <v-expand-transition>
                                <div
                                    v-if="hover"
                                    class="d-flex transition-fast-in-fast-out orange darken-2 v-card--reveal display-3 white--text"
                                    style="height: 100%;"
                                >
                                $14.99
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
                        width: "180"
                    },
                    {
                        src: require('@/assets/djangoLogo.svg'),
                        height: "250",
                        width: "250"
                    },
                    {
                        src: require('@/assets/vueLogo.svg'),
                        height: "250",
                        width: "250"
                    },
                    {
                        src: require('@/assets/fondo.jpg'),
                        height: "250",
                        width: "250"
                    }
                ],
                portfolios: [
                    {},
                    {},
                    {},
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

</style>