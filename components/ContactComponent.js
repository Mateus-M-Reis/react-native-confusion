import React, { Component } from 'react';
import { ScrollView, View, Text } from 'react-native';
import { Card } from 'react-native-elements';
import { CONTACT } from '../shared/assigment1';

function RenderContact(props) {
   
   const item = props.item;

   if (item != null) {
      return(
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
