import React, { Component } from 'react';
import Home from './HomeComponent';
import Menu from './MenuComponent';
import Dishdetail from './DishDetailComponent';
import Contact from './ContactComponent';
import About from './AboutComponent';
import Reservation from './ReservationComponent'
import Favorites from './FavoritesComponent'
import Login from './LoginComponent'
import { View, Platform, Image, StyleSheet, Text, ToastAndroid } from 'react-native';
import NetInfo from "@react-native-community/netinfo";
import { createStackNavigator } from 'react-navigation-stack'; 
import { createDrawerNavigator, DrawerItems } from 'react-navigation-drawer'; 
import { createAppContainer, ScrollView, SafeAreaView  } from 'react-navigation'; 
import { Icon } from 'react-native-elements'
import Constants from 'expo-constants';
import { connect } from 'react-redux';
import { fetchDishes, fetchComments, fetchPromos, fetchLeaders } from '../redux/ActionCreators';

const mapStateToProps = state => {
   return {
      dishes: state.dishes,
      comments: state.comments,
      promotions: state.promotions,
      leaders: state.leaders
   }
}
const mapDispatchToProps = dispatch => ({
   fetchDishes: () => dispatch(fetchDishes()),
   fetchComments: () => dispatch(fetchComments()),
   fetchPromos: () => dispatch(fetchPromos()),
   fetchLeaders: () => dispatch(fetchLeaders())
})

const MenuNavigator = createStackNavigator({
   Menu: { 
      screen: Menu,
      navigationOptions: ({ navigation }) => ({
         headerLeft: () => <Icon name='menu' size={24} 
            type='font-aweasome5'
            color='white'
            onPress={ () => navigation.toggleDrawer() }
         />,
         headerStyle: {
            backgroundColor: '#512DA8'
         },
         headerTintColor: '#fff',
         headerTitleStyle: {
            color: '#fff'
         }
      })
   },
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
   Home: { 
      screen: Home ,
      navigationOptions: ({ navigation }) => ({
         headerStyle: {
            backgroundColor: '#512DA8'
         },
         headerTintColor: '#fff',
         headerTitleStyle: {
            color: '#fff'
         },
         headerLeft: () => <Icon name='menu' size={24} 
            type='font-aweasome5'
            color='white'
            onPress={ () => navigation.toggleDrawer() }
         />
      })
   }
})

const ContactNavigator = createStackNavigator({
   Contact: { 
      screen: Contact,
      navigationOptions: ({ navigation }) => ({
         headerStyle: {
            backgroundColor: '#512DA8'
         },
         headerTintColor: '#fff',
         headerTitleStyle: {
            color: '#fff'
         }
      })
   }}
)

const AboutNavigator = createStackNavigator({
   About: { 
      screen: About,
      navigationOptions: ({ navigation }) => ({
         headerStyle: {
            backgroundColor: '#512DA8'
         },
         headerTintColor: '#fff',
         headerTitleStyle: {
            color: '#fff'
         },
         headerLeft: <Icon name='menu' size={24} 
            color='white'
            onPress={ () => navigation.toggleDrawer() }
         />
      })
   }
})

const ReservationNavigator = createStackNavigator({
   Reservation: { 
      screen: Reservation,
      navigationOptions: ({ navigation }) => ({
         headerStyle: {
            backgroundColor: '#512DA8'
         },
         headerTintColor: '#fff',
         headerTitleStyle: {
            color: '#fff'
         }
      })
   }}
)

const FavoritesNavigator = createStackNavigator({
   Favorites: { 
      screen: Favorites,
      navigationOptions: ({ navigation }) => ({
         headerStyle: {
            backgroundColor: '#512DA8'
         },
         headerTintColor: '#fff',
         headerTitleStyle: {
            color: '#fff'
         }
      })
   }}
)

const LoginNavigator = createStackNavigator({
   Login: Login
}, {
   navigationOptions: ({ navigation }) => ({
      headerStyle: {
         backgroundColor: "#512DA8"
      },
      headerTitleStyle: {
         color: "#fff"            
      },
      title: 'Login',
      headerTintColor: "#fff",
      headerLeft: <Icon name="menu" size={24}
         iconStyle={{ color: 'white' }} 
         onPress={ () => navigation.toggleDrawer() } />    
   })
});

const CustomDrawerContentComponent = (props) => (
   <ScrollView>
      <SafeAreaView style={styles.container} forceInset={{ top: 'always', horizontal: 'never' }}>
         <View style={styles.drawerHeader}>
            <View style={{flex:1}}>
               <Image source={require('./images/logo.png')} style={styles.drawerImage} />
                  </View>
                     <View style={{flex: 2}}>
                        <Text style={styles.drawerHeaderText}>Ristorante Con Fusion</Text>
                           </View>
                              </View>
                                 <DrawerItems {...props} />
                                    </SafeAreaView>
                                       </ScrollView>
);

const MainNavigator = createAppContainer(createDrawerNavigator({
   Login: {
      screen: LoginNavigator,
      navigationOptions: {
         title: 'Login',
         drawerLabel: 'Login',
         drawerIcon: ({ tintColor }) => (
            <Icon 
               name='sign-in'
               type='font-awesome'
               size={24}
               color={tintColor}
            />
         )
      }
   },
   Home: {
      screen: HomeNavigator,
      navigationOptions: {
         title: 'Home',
         drawerLabel: 'Home',
         drawerIcon: ({ tintColor }) => (
            <Icon 
               name='home'
               type='font-aweasome5'
               size={24}
               color={tintColor}
            />
         )
      }
   },
   Menu: {
      screen: MenuNavigator,
      navigationOptions: {
         title: 'Menu',
         drawerLabel: 'Menu',
         drawerIcon: ({ tintColor }) => (
            <Icon 
               name='list'
               type='font-aweasome5'
               size={24}
               color={tintColor}
            />
         )
      }
   },
   Contact: {
      screen: ContactNavigator,
      navigationOptions: {
         title: 'Contact',
         drawerLabel: 'Contact Us',
         drawerIcon: ({ tintColor }) => (
            <Icon 
               name='contact-mail'
               type='font-aweasome5'
               size={22}
               color={tintColor}
            />
         )
      }
   },
   Favorites: {
      screen: FavoritesNavigator,
      navigationOptions: {
         title: 'My Favorites',
         drawerLabel: 'My Favorites',
         drawerIcon: ({ tintColor }) => (
            <Icon 
               name='heart'
               type='font-awesome'
               size={24}
               color={tintColor}
            />
         )
      }
   },
   Reservation: {
      screen: ReservationNavigator,
      navigationOptions: {
         title: 'Reserve Table',
         drawerLabel: 'Reserve Table',
         drawerIcon: ({ tintColor }) => (
            <Icon 
               name='restaurant'
               type='font-aweasome5'
               size={24}
               color={tintColor}
            />
         )
      }
   },
   About: {
      screen: AboutNavigator,
      navigationOptions: {
         title: 'About',
         drawerLabel: 'About Us',
         drawerIcon: ({ tintColor }) => (
            <Icon 
               name='info'
               type='font-aweasome5'
               size={24}
               color={tintColor}
            />
         )
      }
   }
}, { 
   initialRouteName: 'Home',
   drawerBackgroundColor: '#D1C4E9',
   contentComponent: CustomDrawerContentComponent
})
)

class Main extends Component {

   componentDidMount() {
      this.props.fetchDishes();
      this.props.fetchComments();
      this.props.fetchPromos();
      this.props.fetchLeaders();

      NetInfo.fetch()
         .then((connectionInfo) => {
            ToastAndroid.show(
               'Initial Network Connectivity Type: '
               + connectionInfo.type 
               + ', effectiveType: '
               + connectionInfo.effectiveType,
               ToastAndroid.LONG
            )
         })

      NetInfo.addEventListener(
         'connectionChange', 
         this.handleConnectivityChange
      )
   }

   componentWillUnmount() {
      NetInfo.removeEventListener(
         'connection Change', 
         this.handleConnectivityChange
      )
   }

   handleConnectivityChange = (connectionInfo) => {
      switch (connectionInfo.type) {
         case 'none':
            ToastAndroid.show('You are now offline!', ToadAndroid.LONG)
            break
         case 'wifi':
            ToastAndroid.show('You are connected to WiFi!', ToadAndroid.LONG)
            break

         case 'cellular':
            ToastAndroid.show('You are connected to Cellular!', ToadAndroid.LONG)
            break

         case 'unknown':
            ToastAndroid.show('You now have an unknown connection!', ToadAndroid.LONG)
            break
         default:
            break
      }
   }

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

const styles = StyleSheet.create({
   container: {
      flex: 1
   },
   drawerHeader: {
      backgroundColor: '#512DA8',
      height: 140,
      alignItems: 'center',
      justifyContent: 'center',
      flex: 1,
      flexDirection: 'row'
   },
   drawerHeaderText: {
      color: 'white',
      fontSize: 24, 
      fontWeight: 'bold'
   },
   drawerImage: {
      margin: 10,
      width: 80,
      height: 60
   }
})
export default connect(mapStateToProps, mapDispatchToProps)(Main);
