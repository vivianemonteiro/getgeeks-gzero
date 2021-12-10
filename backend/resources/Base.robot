*Settings*
Documentation       Base Test

Library      RequestsLibrary
Library      factories/Users.py

Resource     routes/SessionsRoute.robot
Resource     routes/UsersRoute.robot
Resource     routes/GeeksRoute.robot

Resource     Helpers.robot

*Variables*
${API_USERS}        https://getgeeks-users-vivis.herokuapp.com
${API_GEEKS}        https://getgeeks-geeks-vivis.herokuapp.com