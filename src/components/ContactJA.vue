<template>
    <section id="ContactMe" color="danger">
        <v-parallax :src="require('@/assets/fondocode.jpg')" height="800">
            <v-container grid-list-md grid-list-sm fluid> 
            <!-- Contact ME-->
                <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-2">Contact Me</h1>
                <br>
                <form>
                <v-layout wrap>
                    <v-flex xs6 md6 offset-3>
                        <v-text-field
                            v-model="name"
                            :error-messages="nameErrors"
                            :counter="10"
                            label="Name"
                            outline
                            required
                            @input="$v.name.$touch()"
                            @blur="$v.name.$touch()"
                        >
                        </v-text-field>
                    </v-flex>
                    <v-flex xs6 md6 offset-3>
                        <v-text-field
                            v-model="email"
                            :error-messages="emailErrors"
                            label="E-mail"
                            outline
                            required
                            @input="$v.email.$touch()"
                            @blur="$v.email.$touch()"
                        >
                        </v-text-field>
                    </v-flex>
                    <v-flex xs6 md4 offset-3>
                        <v-select
                            v-model="select"
                            :items="items"
                            :error-messages="selectErrors"
                            label="Item"
                            outline
                            required
                            @change="$v.select.$touch()"
                            @blur="$v.select.$touch()"
                        >
                        </v-select>
                    </v-flex>
                    <v-flex xs6 md4 offset-3 grid-list-md>
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
                    </v-flex> 
                    <v-flex xs6 md4 offset-3>
                        <v-checkbox
                            v-model="checkbox"
                            :error-messages="checkboxErrors"
                            label="Do you agree?"
                            required
                            @change="$v.checkbox.$touch()"
                            @blur="$v.checkbox.$touch()"
                        >
                        </v-checkbox>
                    </v-flex>   
                    <v-flex xs6 md6 sm6 xs2 offset-3 justify-center align-center row fill-height>
                        <v-btn @click="clear" color="warning">clear</v-btn>
                        <v-btn @click="submit" color="primary">submit</v-btn>
                    </v-flex>    
                </v-layout>
                </form>
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
            name: { required, maxLength: maxLength(10) },
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

</style>