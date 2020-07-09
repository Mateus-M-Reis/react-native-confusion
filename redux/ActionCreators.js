import * as ActionTypes from './ActionTypes';
import { baseUrl } from '../shared/baseUrl';
 
export const  fetchComments = () => (dispatch) => {
   return fetch(baseURl + 'comments')
      .then(response => {
         if (response.ok) {
            return response;
         }
         else {
            var error = new Error('Error ' + response.status + ': ' + response.statusText);
            error.response = response;
            throw error
         }
      },
      error => {
         var errMess = new Error(error.message)
         throw errMess;
      })
      .then(response = response.json())
      .then(comments => dispatch(addComments(comments)))
      .catch(error => dispatch(commentsFailed(error.message)))
}

export const commentsFailed = (errMess) => ({
   type: ActionTypes.COMMENTS_FAILED,
   payload: errmess
});

export const addComments = (comments) => ({
   type:ActionTypes.ADD_COMMENTS,
   payload: comments
});
///////////////////////////////////////////////////////////
export const  fetchDishes = () => (dispatch) => {
   dispatch(dishesLoading());
   
   return fetch(baseURl + 'dishes')
      .then(response => {
         if (response.ok) {
            return response;
         }
         else {
            var error = new Error('Error ' + response.status + ': ' + response.statusText);
            error.response = response;
            throw error
         }
      },
      error => {
         var errMess = new Error(error.message)
         throw errMess;
      })
      .then(response = response.json())
      .then(dishes => dispatch(addComments(dishes)))
      .catch(error => dispatch(dishesFailed(error.message)))
}

export const dishesLoading = () => ({
   type: ActionTypes.DISHES_LOADING,
});

export const dishesFailed = (errMess) => ({
   type: ActionTypes.DISHES_FAILED,
   payload: errmess
});

export const addDishes = (dishes) => ({
   type:ActionTypes.ADD_DISHES,
   payload: dishes
});
///////////////////////////////////////////////////////////
export const  fetchPromos = () => (dispatch) => {
   dispatch(promosLoading());
   
   return fetch(baseURl + 'promotions')
      .then(response => {
         if (response.ok) {
            return response;
         }
         else {
            var error = new Error('Error ' + response.status + ': ' + response.statusText);
            error.response = response;
            throw error
         }
      },
      error => {
         var errMess = new Error(error.message)
         throw errMess;
      })
      .then(response = response.json())
      .then(dishes => dispatch(addPromos(dishes)))
      .catch(error => dispatch(promosFailed(error.message)))
}

export const promosLoading = () => ({
   type: ActionTypes.PROMOS_LOADING,
});

export const promosFailed = (errMess) => ({
   type: ActionTypes.PROMOS_FAILED,
   payload: errmess
});

export const addPromos = (promos) => ({
   type:ActionTypes.ADD_PROMOS,
   payload: promos
});
///////////////////////////////////////////////////////////
export const  fetchLeaders = () => (dispatch) => {
   dispatch(leadersLoading());
   
   return fetch(baseURl + 'leaders')
      .then(response => {
         if (response.ok) {
            return response;
         }
         else {
            var error = new Error('Error ' + response.status + ': ' + response.statusText);
            error.response = response;
            throw error
         }
      },
      error => {
         var errMess = new Error(error.message)
         throw errMess;
      })
      .then(response = response.json())
      .then(dishes => dispatch(addLeaders(dishes)))
      .catch(error => dispatch(leadersFailed(error.message)))
}

export const leadersLoading = () => ({
   type: ActionTypes.LEADERS_LOADING,
});

export const leadersFailed = (errMess) => ({
   type: ActionTypes.LEADERS_FAILED,
   payload: errmess
});

export const addPromos = (promos) => ({
   type:ActionTypes.ADD_LEADERS,
   payload: leaders
});

