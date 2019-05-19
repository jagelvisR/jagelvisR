<template>
    <section id="ContactMe">
            <v-container fluid grid-list-md text-xs-center> 
            <!-- Contact ME-->
                <h1 class="display-2 font-weight-black white--text text-xs-center mb-2 mt-4">Contact Me</h1>
                <br>
                <v-layout wrap row justify-center>
                    <v-flex xs10 sm10 md6 lg6>
                        <v-card>
                            <v-card-text>
                                <form>
                                    <!--Name-->
                                    <v-text-field
                                        v-model="name"
                                        :error-messages="nameErrors"
                                        :counter="20"
                                        label="Name"
                                        box
                                        outline
                                        required
                                        @input="$v.name.$touch()"
                                        @blur="$v.name.$touch()"
                                    >
                                    </v-text-field>
                                    <!--E-mail-->
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
                                    <!--Select item para servicio-->
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
                                    <!--Subject-->
                                    <v-text-field
                                        v-model="subject"
                                        :error-messages="subjectErrors"
                                        :counter="30"
                                        label="Subject"
                                        box
                                        outline
                                        required
                                        @input="$v.subject.$touch()"
                                        @blur="$v.subject.$touch()"
                                    >
                                    </v-text-field>
                                    <!--Textarea Comment-->
                                    <v-textarea
                                        v-model="text"
                                        outline
                                        box
                                        height="200"
                                        cols="200"
                                        auto-grow
                                        name="input-7-1"
                                        label="Message"
                                        required
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
                                
                                    <v-btn
                                        @click="clear" 
                                        color="warning" 
                                        align-center 
                                        justify-center>
                                    clear
                                    </v-btn>
                                    
                                    <v-btn 
                                        @click="submit" 
                                        color="red darken-4" 
                                        align-center 
                                        justify-center 
                                        :loading="loading"
                                        :disabled="loading">
                                    submit
                                    </v-btn>
                                </form>
                            </v-card-text>
                        </v-card>    
                    </v-flex>

                    <!-- Columna 2 datos de contacto-->

                    <v-flex xs10 sm10 md6 lg6 class="px-1">
                        <v-card fluid tile flat>
                            <v-card-text>
                                <br>
                                <v-btn
                                    v-for="(contact, index) in contact"
                                    :key="`${index}`"
                                    @click="abrirURL(`${contact.url}`)"
                                    target="_blank"
                                    class="red darken-4"
                                    >
                                    <!--svg WP-->
                                    <v-img
                                        v-if="contact.message == 'WhatsApp'"
                                        :src="require('@/assets/whatsapp.svg')" 
                                        height="25"
                                        width="25"
                                        >
                                    </v-img>
                                    <!--svg Telegram-->
                                    <v-img
                                        v-if="contact.message == 'Telegram'"
                                        :src="require('@/assets/telegram.svg')" 
                                        height="25"
                                        width="25"
                                        >
                                    </v-img>
                                    <!--svg Gmail-->
                                    <v-img
                                        v-if="contact.message == 'Gmail'"
                                        :src="require('@/assets/gmail.svg')" 
                                        height="25"
                                        width="25"
                                        >
                                    </v-img>
                                        {{contact.message}}
                                    </v-btn>
                                <br>
                                <br>
                                <p class="font-weight-medium"><i class="fa fa-map-marker fa-2x btn-circle btn-sm red darken-4"></i> Caracas, Venezuela</p>
                            </v-card-text>
                        </v-card>
                            <!-- Redes sociales-->
                        <v-card
                            fluid
                            flat
                            tile
                            class="red darken-4 white--text text-xs-center mt-2"
                            >
                            <v-card-text>
                                <v-btn
                                    wrap
                                    v-for="(icon, index) in icons"
                                    :key="`${index}`"
                                    class="mx-3 white--text"
                                    icon
                                    dark
                                    target="_blank"
                                    @click="abrirURL(`${icon.url}`)"
                                >
                                <v-icon size="24px">{{ icon.perfil }}</v-icon>
                                </v-btn>
                            </v-card-text>
                        </v-card>    
                    </v-flex>
                    <!-- Snackbar para mensajes de alerta para envío de form exitoso-->
                    <v-snackbar
                        v-model="snackbarSuccess"
                        :bottom="y === 'bottom'"
                        :left="x === 'left'"
                        :multi-line="mode === 'multi-line'"
                        :right="x === 'right'"
                        :timeout="timeout"
                        :top="y === 'top'"
                        :vertical="mode === 'vertical'"
                        color="success"
                        >
                        <v-icon
                            right
                            dark
                            size="40"
                        >
                        check
                        </v-icon>
                         {{ textAlertSuccess }}
                            <v-btn
                                color="white"
                                flat
                                @click="snackbarSuccess = false"
                            >
                                Close
                            </v-btn>
                        </v-snackbar>   

                        <!-- Snackbar para mensajes de alerta form vacio con error-->
                     <v-snackbar
                        v-model="snackbarDanger"
                        :bottom="y === 'bottom'"
                        :left="x === 'left'"
                        :multi-line="mode === 'multi-line'"
                        :right="x === 'right'"
                        :timeout="timeout"
                        :top="y === 'top'"
                        :vertical="mode === 'vertical'"
                        color="red"
                        >
                        <v-icon
                            right
                            dark
                            size="40"
                        >
                        cancel
                        </v-icon>
                         {{ textAlertDanger }}
                            <v-btn
                                color="white"
                                flat
                                @click="snackbarDanger = false"
                            >
                                Close
                            </v-btn>
                        </v-snackbar>   
                </v-layout>
            </v-container>
    </section>
</template>

<script>
    import { validationMixin } from 'vuelidate'
    import { required, maxLength, email } from 'vuelidate/lib/validators'
    import { log } from 'util';

    import { db } from '../config/db';

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
            },
            subject: { required, maxLength: maxLength(30) },
        },
        firebase: { //conectar a db firebase json
            jagelvisr: db.ref('jagelvisr')
        },
        data: () => ({
            //form contact
            name: '',
            email: '',
            select: null,
            subject: '',
            tile: false,
            items: [
                'Websites',
                'Web applications',
                'Marketplace',
                'E-Commerce',
                'Other'
            ],
            checkbox: false,
            text: '',
            //icons de redes sociales
            icons: [
                {perfil:'fa-facebook-f', url: 'https://facebook.com/jagelvisR'},
                {perfil:'fa-twitter', url: 'https://twitter.com/jagelvisR'},
                {perfil:'fa-instagram', url: 'https://instagram.com/jagelvisR'},
                {perfil:'fa-github', url: 'https://github.com/jagelvisR'},
                {perfil:'fa-gitlab', url: 'https://gitlab.com/jagelvisR'},
                {perfil:'fa-linkedin', url: 'https://www.linkedin.com/in/jos%C3%A9-agelvis-34a6aa158/'},
            ],
            //Snackbar como alert al enviar form con succes y danger
            snackbarSuccess: false,//form enviado
            snackbarDanger: false,//form con error
            y: 'bottom',
            x: 'right',
            mode: 'multi-line',
            timeout: 6500,
            textAlertSuccess: 'Form sent successfully',
            textAlertDanger: 'Error: Please fill in the form fields',
            //loading
            loader: null,
            loading: false,
            //Contact me wp, telegram y gmail
            contact: [
                {message: 'WhatsApp', url: 'https://wa.me/584142144478'},
                {message: 'Telegram', url: 'https://t.me/jagelvisr'},
                {message: 'Gmail', url: 'mailto:agelvisbusinessdeveloper@gmail.com'},
            ],

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
            nameErrors ( ) {
                const errors = []
                if (!this.$v.name.$dirty) return errors
                !this.$v.name.maxLength && errors.push('Name must be at most 20 characters long')
                !this.$v.name.required && errors.push('Name is required.')
                return errors
            },
            emailErrors () {
                const errors = [] 
                if (!this.$v.email.$dirty) return errors
                !this.$v.email.email && errors.push('Must be valid e-mail')
                !this.$v.email.required && errors.push('E-mail is required')
                return errors
            },
            subjectErrors () {
                const errors = []
                if (!this.$v.subject.$dirty) return errors
                !this.$v.subject.maxLength && errors.push('Subject must be at most 30 characters long')
                !this.$v.subject.required && errors.push('Subject is required.')
                return errors
            },
            
        },
        methods: {
            submit() {                
                //submit form al hacer loading
                if (this.name != '' && this.email != '' && this.subject != '' && this.text != '' && this.select != null && this.checkbox != false) {
                    
                    this.$firebaseRefs.jagelvisr.push({//enviar datos a Firebase
                    name: this.name,
                    email: this.email,
                    service: this.select,
                    subject: this.subject,
                    message: this.text,
                    acuerdo: this.checkbox
                    });
                    this.$v.$reset()
                    this.name = '';
                    this.email = '';
                    this.subject = '';
                    this.text = '';
                    this.select = null;
                    this.checkbox = false;
                    //Mostrar Alert Success
                    this.snackbarSuccess = true;
                }
                else {
                    
                    this.snackbarDanger = true;

                }
            },
            clear () {
                this.$v.$reset()
                this.name = ''
                this.email = ''
                this.subject = ''
                this.text = ''
                this.select = null
                this.checkbox = false
            },
            abrirURL(url) { //Abrir url de mis redes sociales en otra pestaña
                return window.open(url);
            },
            //prohibir determinados caracteres
            soloLetras(event) {
                var regex = new RegExp("^[a-zA-Z ]+$");
                var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
                if (!regex.test(key)) {
                    event.preventDefault();
                    return false;
                }           
            },
            soloNum(e){
                if (e.keyCode < 48 || e.keyCode > 57) {
                    let value = e.keyCode;
                    let v = e.returnValue;
                    v = false;
                    return v;
                }
            },            
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

/*boton loeading*/
  .custom-loader {
    animation: loader 1s infinite;
    display: flex;
  }
  @-moz-keyframes loader {
    from {
      transform: rotate(0);
    }
    to {
      transform: rotate(360deg);
    }
  }
  @-webkit-keyframes loader {
    from {
      transform: rotate(0);
    }
    to {
      transform: rotate(360deg);
    }
  }
  @-o-keyframes loader {
    from {
      transform: rotate(0);
    }
    to {
      transform: rotate(360deg);
    }
  }
  @keyframes loader {
    from {
      transform: rotate(0);
    }
    to {
      transform: rotate(360deg);
    }
  }
</style>
