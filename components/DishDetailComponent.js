import React, { Component } from 'react';
import { View, Text, FlatList, Modal, StyleSheet } from 'react-native';
import { Card, Icon, Button, Input, Rating } from 'react-native-elements';
import { connect } from 'react-redux';
import { baseUrl } from '../shared/baseUrl';
import { postFavorite, postComment } from '../redux/ActionCreators';
import * as Animatable from 'react-native-animatable'

const mapStateToProps = state => {
   return {
      dishes: state.dishes,
      comments: state.comments,
      favorites: state.favorites
   }
}

const mapDispatchToProps = dispatch => ({
   postFavorite: (dishId) => dispatch(postFavorite(dishId)),
   postComment: (dishId, rating, author, comment) => dispatch(postComment(dishId, rating, author, comment))
})

function RenderDish(props) {
   const dish = props.dish;

   if (dish != null) {
      return(
         <Animatable.View animation='fadeInDown' duration={2000} delay={1000}>
            <Card featuredTitle={dish.name} image={{uri: baseUrl + dish.image}}>
               <Text style={{margin: 10}}>
                  {dish.description}
                  </Text>
                     <View style={{flexDirection: 'row', alignContent: 'center', justifyContent: 'center'}}>
                        <Icon 
                           raised
                           reverse 
                           name={ props.favorite ? 'heart' : 'heart-o' }
                           type='font-awesome' 
                           color='#f50'
                           onPress = {() => props.favorite? console.log("Added already") : props.onPressFavorite()} />
                        <Icon 
                           raised
                           reverse 
                           name= 'pencil' 
                           type='font-awesome' 
                           color='#512DA8'
                           onPress = {() => props.onPressComment()} />
                     </View>
            </Card>
         </Animatable.View>
      );
   }
   else {
      return(<View></View>)
   }   
}

function RenderComments(props) {
   const comments = props.comments;
   const renderCommentItem = ({item, index}) => {
      return(
            <View key={index} style={{margin: 10}}>
               <Text style={{fontSize: 14}} > {item.comment} </Text>
                  <Text style={{fontSize: 12}} > {item.rating} Stars</Text>
               <Text style={{fontSize: 12}} > {'-- ' + item.author + ', ' + item.date} </Text>
            </View>
      )
   }
   return(
      <View>
         <Card title="Comments">
            <FlatList 
               data={comments}
               renderItem={renderCommentItem}
               keyExtractor={item => item.id.toString()}
            />
                  </Card>
                     </View>
   )
}

class Dishdetail extends Component {

   constructor(props) {
      super(props);
      this.state = {
         showModal: false,
         rating: 5,
         author: '',
         comment: '',
      };
   }

   toggleModal() {
      this.setState({showModal: !this.state.showModal})
   }

   ratingCompleted(rating) {
      this.setState({rating: rating})
   }

   onCommentSubmit(dishId, rating, author, comment){
      this.props.postComment(dishId, rating, author, comment);
      this.toggleModal();
   }

   markFavorite(dishId) {
      this.props.postFavorite(dishId);
   }

   render() {
      const dishId = this.props.navigation.getParam('dishId', '');
      return(
         <View>
            <Modal animationType = {"slide"} transparent = {false}
               visible = {this.state.showModal}
               onDismiss = {() => this.toggleModal() }
               onRequestClose = {() => this.toggleModal() }>
               <View style = {styles.modal}>
                  <Text style = {styles.modalTitle}>Write comment</Text>
                  <Rating
                     defaultRating={5}
                     startingValue={5}
                     showRating
                     onFinishRating={rating => this.ratingCompleted(rating)}
                  />
                  <Input
                     placeholder='Author'
                     leftIcon={
                        <Icon
                           name='user'
                           type='font-awesome'
                           size={24}
                           color='black'
                        />
                     }
                     onChangeText={text => this.setState({author: text})}
                     value={this.state.author}
                  />
                  <Input
                     placeholder='Comment'
                     leftIcon={
                        <Icon
                           name='comment-o'
                           type='font-awesome'
                           size={24}
                           color='black'
                        />
                     }
                     onChangeText={text => this.setState({comment: text})}
                     value={this.state.comment}
                  />
                  <Button 
                     onPress = {() =>{this.onCommentSubmit(dishId, this.state.rating, this.state.author, this.state.comment)}}
                     buttonStyle={{margin: 10, backgroundColor: "#512DA8"}}
                     title="Submit" 
                  />
                  <Button 
                     onPress = {() =>{this.toggleModal()}}
                     buttonStyle={{margin: 10, backgroundColor: 'grey'}}
                     title="Cancel" 
                     />
               </View>
            </Modal>
            <FlatList
               ListHeaderComponent={
                  <RenderDish 
                     dish={this.props.dishes.dishes[+dishId]}
                     favorite={this.props.favorites.some(el => el === dishId)}
                     onPressFavorite={() => this.markFavorite(dishId)}
                     onPressComment={() => this.toggleModal()} />
               }
               data={[]}
               renderItem={() => (<Text></Text>)}
               ListEmptyComponent={
                  <Animatable.View animation='fadeInUp' duration={2000} delay={1000}>
                     <RenderComments comments={this.props.comments.comments.filter((comment) => comment.dishId === dishId )} />
                  </Animatable.View>
                  }
               ListFooterComponent={
                  <Text></Text>
               }
            />
         </View>
      );
   }
}

const styles = StyleSheet.create({
   modal: {
      justifyContent: 'center',
      margin: 20
   },
   modalTitle: {
      fontSize: 24,
      fontWeight: 'bold',
      textAlign: 'center',
      marginBottom: 20
   },
   modalText: {
      fontSize: 18,
      margin: 10
   }
});

export default connect(mapStateToProps, mapDispatchToProps)(Dishdetail);
