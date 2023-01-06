# HIGH FIVE - Employee Recognition Web Application

## Project Description 

Project High Five is a multilayered web application that helps employees within an organization streamline peer recognition, feedback and Slack integration. Businesses that use Slack will love the integration. It’s easy for users to adopt and for the businesses to begin seeing employee engagement increase.

Employees can send and receive points, feedback based on their performance, engagement and management around their day-to-day activities, projects, team intiatives involved within the organization. Based on the available points employees can also redeem them to purchase gift cards, invest in professional development courses and contribute to local charities. 


## Setup

Note: application currently requires a PostgreSQL database running locally.

1. Run `bundle install` to install dependencies in rails server folder.
2. Run `bin/rake db:reset` to create, load and seed db in rails server.
3. Run `bin/rails s` to start the rails server.
4. Run `npm install` to install dependencies in React web folder.
5. Run `npm start` to start the React server.

Sign in using one of the demo employees in the development db, `SELECT * from employees`

## Functional Requirements (High Level)

### Recognition Flow 
User/Employee sending the rewards should be able to recognize a peer based on their contributions to team projects and intiatives.
* On the Overview page, user should be able to select the appropriate peer to recognize and alot a specific point level (between Level 1 - 5) and submit the recognition for manager's approval.
* User should be able to review points sent history to peers under the 'Sent' points tab on the Rewards History Page.

### Approval Flow 
Manager/Approver should be able to receive slack notifications related to recognitions and be able approve/reject the recognitions based on reward authenticity.
* Under the approvals tab on the overview page, manager should be able to view recognition requests and approve/reject them. 
* Once approved, manager should be able to view approved/rejected history under 'Approvals & Rejections' tab on Rewards History page.

### Redemption Flow 
User/Employee receiving the rewards should be able to receive a slack notifications when they are rewarded, be able to view the points available on slack and be able to redeem the points on the redemption page.
* Under the 'Recent Rewards' tab on the Overview page, user should be able to view the rewards received from a peer. 
* User should be able to review points recived history from peers under the 'Received' points tab on the Rewards History Page.
* While redeeming the points, user should be able to able to view and add the gift cards to the cart, proceed to check out and review/submit the order.



## Final Product 

![Submit Recognition:](https://github.com/binduprakash/HighFive-Employee-Recognition-App/blob/master/web/public/submit_recognition.gif)

![Slack Notification | approval:](https://github.com/binduprakash/HighFive-Employee-Recognition-App/blob/master/web/public/slack_approval.png)

![Web App | approval:](https://github.com/binduprakash/HighFive-Employee-Recognition-App/blob/master/web/public/web_app_approval.png)


![Slack Notification and slash command:](https://github.com/binduprakash/HighFive-Employee-Recognition-App/blob/master/web/public/Slack_notification_and_slash_command.gif)

![Recognize and Redeem Process:](https://github.com/binduprakash/HighFive-Employee-Recognition-App/blob/master/web/public/Recognition_and_redeem.gif)



## Dependencies 

### Web

* axios 0.18.0
* bootstrap ^4.3.1
* prop-types ^15.7.2
* react ^16.8.6
* react-avatar ^3.6.0
* react-bootstrap ^1.0.0-beta.6
* react-confetti ^2.7.3
* react-cookie ^3.1.2
* react-dom ^16.8.6"
* react-router-dom ^5.0.0
* react-scripts 2.1.8
* recompose ^0.30.0

### Server

* rails ~> 5.2.3
* postgresql >= '0.18', '< 2.0'
* puma ~> 3.11
* rack-cors ~> 0.3.1
* bootsnap >= 1.1.0


## Deployment

For development/poc purposes, there is an example CloudFormation template to
provision a server running nginx and postgresql and an associated Capistrano
configuration to deploy the react front end and the rails api to the server.

This is not intended for production use, and is not well-documented, but if you
know your way around Capistrano and CloudFormation you should find it easy to
create the stack, configure your ssh credentials, and deploy the applications.

As the Capistrano config deploys both the react front end and the rails api to
the same server, it is stored in the root of the project/repo. You will need to
`bundle install` and `cap development deploy` within project/repo root.


## Slack Integration Setup

Please refer to Slack API documentation for additional information: https://api.slack.com/

* a Slack team would need to be created as well as a Slack App to handle functionality

### Slash Command

* Reqeust URL needs to be defined with route to handle, including /slack 'route' for the web app to handle the request from Slack user
* App 'Verification Token' needs to be stored in .env file to authenticate requests sent to the route
* Current configuration accepts one slash command /points -> to received a mesage back of how many points a user has.


### Sending Notifications to Users on web app events | uses api/chat.postMessage

* Slack 'oAuth Token' needs to be stored in .env file for Slack to handle http request





