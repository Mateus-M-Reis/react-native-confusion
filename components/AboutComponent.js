import React, { Component } from 'react';
import { ScrollView, View, Text, FlatList } from 'react-native';
import { Card } from 'react-native-elements';
import { ListItem } from 'react-native-elements';
import { HISTORY } from '../shared/assigment1';
import { connect } from 'react-redux';
import { baseUrl } from '../shared/baseUrl';
import { Loading } from './LoadingComponent'

const mapStateToProps = state => {
   return {
      leaders: state.leaders,      
   }
}

function RenderHistory(props) {
   
   const item = props.item;

   if (item != null) {
      return(
         <Card
            // featuredTitle={'About Information'}
            title={'History'}
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
            leftAvatar={{ source: { uri: baseUrl + item.image } }}
         >
         </ListItem>
      );
   }
   else {
      return(<View></View>);
   }
}

class About extends Component {

   static navigationOptions = {
      title: 'About Us'
   };

   render() {

      if (this.props.leaders.isLoading) {
         return(
             <ScrollView>
               <RenderHistory item={HISTORY}/>
               <Card title={'Corporate Leadership'} >
                  <Loading />
               </Card>
           </ScrollView>
         );
      }
      else if (this.props.leaders.errmess) {
         return(
             <ScrollView>
               <RenderHistory item={HISTORY}/>
               <Card title={'Corporate Leadership'} >
                  <Text>{this.props.leaders.errmess}</Text>
               </Card>
           </ScrollView>
         );
      }
      else {
         return(
            <ScrollView>
               <RenderHistory item={HISTORY} />
               <Card title={'Corporate Leadership'} >
                  <FlatList
                     data={this.props.leaders.leaders}
                     renderItem={RenderLeader}
                     keyExtractor={item => item.id.toString()}
                  />
               </Card>
           </ScrollView>
         );
      }
   }
}

export default connect(mapStateToProps)(About);
