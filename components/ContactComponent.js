import React, { Component } from 'react';
import { Text } from 'react-native';
import { Card, Button, Icon } from 'react-native-elements';
import { CONTACT } from '../shared/assigment1';
import * as Animatable from 'react-native-animatable'
import * as MailComposer from 'expo-mail-composer'

class Contact extends Component {

   sendMail() {
      MailComposer.composeAsync({
         recipients: ['confusion@food.net'],
         subject: 'Enquiry',
         body: 'To whom it may concern: '
      })
   }

   static navigationOptions = {
      title: ''
   };

   render() {

      return(
         <Animatable.View animation='fadeInDown' duration={2000} delay={1000}>
            <Card
               title={'Contact Information'}
            >
               <Text style={{margin: 10}}>{CONTACT.text}</Text>
               <Button
                  title='Send Email'
                  buttonStyle={{ backgroundColor: '#512DA8' }}
                  icon={
                     <Icon 
                        name='envelope-o'
                        type='font-awesome'
                        style={{ size: '10px' }}
                     />
                  }
                  onPress={this.sendMail}
               />
            </Card>
         </Animatable.View>
      );
   }
}

export default Contact;
