import React, { Component } from 'react';
import Home from './HomeComponent';
import Menu from './MenuComponent';
import Dishdetail from './DishDetailComponent';
import { View, Platform } from 'react-native';
import { createStackNavigator } from 'react-navigation-stack'; 
import { createDrawerNavigator } from 'react-navigation-drawer'; 
import { createAppContainer } from 'react-navigation'; 
import Constants from 'expo-constants';

const MenuNavigator = createStackNavigator({
   Menu: { screen: Menu },
   Dishdetail: { screen: Dishdetail }
}, {
   initialRouteName: 'Menu',
   navigationOptions: {
      headerStyle: {
         backgroundColor: '#512DA8'
      },
      headerTintColor: '#fff',
      headerTitleStyle: {
         color: '#fff'
      }
   }
})

const HomeNavigator = createStackNavigator({
   Home: { screen: Home },
}, {
   navigationOptions: {
      headerStyle: {
         backgroundColor: '#512DA8'
      },
      headerTintColor: '#fff',
      headerTitleStyle: {
         color: '#fff'
      }
   }
})

const MainNavigator = createAppContainer(createDrawerNavigator({
   Home: {
      screen: HomeNavigator,
      navigationOptions: {
         title: 'Home',
         drawerLabel: 'Home'
      }
   },
   Menu: {
      screen: MenuNavigator,
      navigationOptions: {
         title: 'Menu',
         drawerLabel: 'Menu'
      }
   },
}, {
   drawerBackgroundColor: "#D1C4E9"
})
)

class Main extends Component {

   render() {
      return(
         <View style={{ 
            flex: 1, 
            paddingTop: Platform.OS === 'ios' ? 0 : Constants.statusBarHeight
         }}>
            <MainNavigator />
         </View>
      );
   }
}

export default Main;
