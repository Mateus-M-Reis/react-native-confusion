import React, { Component } from 'react';
import { ScrollView, View, Text } from 'react-native';
import { Card } from 'react-native-elements';
import { CONTACT } from '../shared/assigment1';
import * as Animatable from 'react-native-animatable'

function RenderContact(props) {
   
   const item = props.item;

   if (item != null) {
      return(
             <Animatable.View animation='fadeInDown' duration={2000} delay={1000}>
         <Card
            // featuredTitle={'Contact Information'}
            title={'Contact Information'}
            // featuredSubtitle={'item.designation'}
            // image={require('./images/uthappizza.png')}
            >
            <Text style={{margin: 10}}>
               {item.text}
            </Text>
         </Card>
            </Animatable.View>
      );
   }
   else {
      return(<View></View>);
   }
}

class Contact extends Component {

   constructor(props) {
      super(props);
      //  this.state = {

      //  }
   }

   static navigationOptions = {
      title: ''
   };

   render() {
      return(
         <ScrollView>
            <RenderContact
               item={CONTACT}
            />
         </ScrollView>
      );
   }
}

export default Contact;
