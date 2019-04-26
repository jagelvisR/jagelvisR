<template>
    <section id="ContactMe">
        <v-parallax :src="require('@/assets/fondocode.jpg')" height="1200">
            <v-container fluid grid-list-md text-xs-center> 
            <!-- Contact ME-->
                <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-4">Contact Me</h1>
                <br>
                <v-layout wrap row justify-center>
                    <v-flex xs10 sm10 md6 lg6>
                        <v-card>
                            <v-card-text>
                                <v-text-field
                                    v-model="name"
                                    :error-messages="nameErrors"
                                    :counter="10"
                                    label="Name"
                                    box
                                    outline
                                    required
                                    @input="$v.name.$touch()"
                                    @blur="$v.name.$touch()"
                                >
                                </v-text-field>

                                <v-text-field
                                    v-model="email"
                                    :error-messages="emailErrors"
                                    label="E-mail"
                                    box
                                    outline
                                    required
                                    @input="$v.email.$touch()"
                                    @blur="$v.email.$touch()"
                                >
                                </v-text-field>
                            
                                <v-select
                                    v-model="select"
                                    :items="items"
                                    :error-messages="selectErrors"
                                    label="Item"
                                    box
                                    outline
                                    required
                                    @change="$v.select.$touch()"
                                    @blur="$v.select.$touch()"
                                >
                                </v-select>
                            
                                <v-textarea
                                    outline
                                    box
                                    height="200"
                                    cols="200"
                                    auto-grow
                                    name="input-7-1"
                                    label="Outline textarea"
                                    >
                                </v-textarea>
                        
                                <v-checkbox
                                    v-model="checkbox"
                                    :error-messages="checkboxErrors"
                                    label="Do you agree?"
                                    required
                                    @change="$v.checkbox.$touch()"
                                    @blur="$v.checkbox.$touch()"
                                >
                                </v-checkbox>
                            
                                <v-btn @click="clear" color="warning" align-center justify-center>clear</v-btn>
                                <v-btn @click="submit" color="primary" align-center justify-center>submit</v-btn>
                            </v-card-text>
                        </v-card>    
                    </v-flex>

                    <!-- Columna 2 datos-->

                    <v-flex xs10 sm10 md6 lg6 class="px-1">
                        <v-card fluid tile flat>
                            <v-card-text>
                                <p class="font-weight-medium"><i class="fa fa-map-marker fa-2x btn-circle btn-sm red darken-4"></i> Caracas, Venezuela</p>
                                <br>
                                <p class="font-weight-medium"><i class="fa fa-envelope fa-2x btn-circle btn-sm red darken-4"></i> josegagelvisdeveloper@gmail.com</p>
                                <br>
                                <p class="font-weight-medium"><i class="fa fa-whatsapp fa-2x btn-circle btn-sm red darken-4"></i> +58 414 214 44 78</p>
                                <br>
                                <p class="font-weight-medium"><i class="fa fa-telegram fa-2x btn-circle btn-sm-x red darken-4"></i> +58 414 214 44 78</p>
                            </v-card-text>
                        </v-card>
                    </v-flex>    
                </v-layout>
            </v-container>
        </v-parallax>    
    </section>
</template>

<script>
  import { validationMixin } from 'vuelidate'
  import { required, maxLength, email } from 'vuelidate/lib/validators'

    export default {
        name: 'ContactJA',
            mixins: [validationMixin],

        validations: {
            name: { required, maxLength: maxLength(20) },
            email: { required, email },
            select: { required },
            checkbox: {
                checked (val) {
                return val
                }
            }
        },

        data: () => ({
            name: '',
            email: '',
            select: null,
            items: [
                'Item 1',
                'Item 2',
                'Item 3',
                'Item 4'
            ],
            checkbox: false
        }),

        computed: {
            checkboxErrors () {
                const errors = []
                if (!this.$v.checkbox.$dirty) return errors
                !this.$v.checkbox.checked && errors.push('You must agree to continue!')
                return errors
            },
            selectErrors () {
                const errors = []
                if (!this.$v.select.$dirty) return errors
                !this.$v.select.required && errors.push('Item is required')
                return errors
            },
            nameErrors () {
                const errors = []
                if (!this.$v.name.$dirty) return errors
                !this.$v.name.maxLength && errors.push('Name must be at most 10 characters long')
                !this.$v.name.required && errors.push('Name is required.')
                return errors
            },
            emailErrors () {
                const errors = []
                if (!this.$v.email.$dirty) return errors
                !this.$v.email.email && errors.push('Must be valid e-mail')
                !this.$v.email.required && errors.push('E-mail is required')
                return errors
            }
        },
        methods: {
            submit () {
                this.$v.$touch()
            },
            clear () {
                this.$v.$reset()
                this.name = ''
                this.email = ''
                this.select = null
                this.checkbox = false
            }
        }
    }
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

.btn-circle.btn-sm {
  width: 30px;
  height: 30px;
  padding: 4px 2px;
  font-size: 18px;
  line-height: 1.33;
  border-radius: 25px;
}

.btn-circle.btn-sm-x {
  width: 30px;
  height: 30px;
  padding: 2px 0px;
  font-size: 20px;
  line-height: 1.33;
  border-radius: 25px;
}
</style>