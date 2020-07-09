import React, { Component } from 'react';
import { ScrollView, View, Text, FlatList } from 'react-native';
import { Card } from 'react-native-elements';
import { ListItem } from 'react-native-elements';
import { LEADERS } from '../shared/leaders';
import { HISTORY, CONTACT } from '../shared/assigment1';

function RenderHistory(props) {
   
   const item = props.item;

   if (item != null) {
      return(
         <Card
            // featuredTitle={'About Information'}
            title={'history'}
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

function RenderLeader(props) {
   
   const item = props.item;

   if (item != null) {
      return(
         <ListItem
            key={item.index}
            title={item.name}
            subtitle={item.description}
            hideChevron={true}
            leftAvatar={{ source: require('./images/alberto.png') }}
         >
         </ListItem>
      );
   }
   else {
      return(<View></View>);
   }
}

class About extends Component {

   constructor(props) {
      super(props);
      this.state = {
         leaders: LEADERS,
      }
   }

   static navigationOptions = {
      title: 'About Us'
   };

   render() {
      return(
         <ScrollView>
            <RenderHistory
               item={HISTORY}
            />
            <Card
               title={'Corporate Leadership'}
            >

               <FlatList
                  data={this.state.leaders}
                  renderItem={RenderLeader}
                  keyExtractor={item => item.id.toString()}
               />
            </Card>
        </ScrollView>
      );
   }
}

export default About;
