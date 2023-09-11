# Litmatch-Clone-SwiftUI

Litmatch Clone is a SwiftUI Firebase portfolio project I was build to implement what I was learn about basic and intermediate iOS Development Skill.

I use Swiftui because it’s more less code writing and making it easier to test and debug my code
And I’m using Firebase because it’s easy to installation and use, firebase also provide some feature I needed to build this app such as, Authentication for user login, Firebase Firestore to storing any user data and User Chat, Firebase Strorage to storing image and Video post.

My motivation to build this app is to learn and practicing swift in iOS App Development. like creating UI and backend service which I choose Firebase to make user registration, real time chat, social media post, and user settings (Upcoming)

I’m build this app because I’m also litmatch user and I have interested to create similar app. Because this app have beautiful design and very simple registration process.

This app still in development, for now available feature only sign in using google, and facebook.

List of contents :
- Project Description.
- UI Login Screen.
- Demo Sign in with Facebook and Google Account.
- Available Features.
- Upcoming Features.
- Firebase Installation.
- What i've been learn from creating this project.

_**Litmatch-Clone-Screenshot**_

<img src="https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/4ad336dd-f719-4ef7-a045-29dec3f02b8a" width="250" height="541"/>

_**Registration User Flow**_
![Registration User Flow](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/8d82e9d8-9698-498c-ac5c-14f323d3f55a)

_**Facebook Sign in Video.**_

https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/0efa94ac-b8e1-4ae4-a512-bbb68996f979

_**Google Sign In Video.**_

https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/6e6e0365-ce60-4974-89c4-bdb1a12b4405

## **Available Features:**
- Continue with Facebook.
- Continuewith Apple(Still in Development Process).
- Continue With Google.
- Webkit(Ketentuan Penggunaan, Kebijakan Privasi, Kebijakan Cookies) page.

> there’s issue where i’m cannot sign in with apple account. For this case I’m still woking on it to solve this problem!

# **Upcoming Features:**
## Front-End(UI):
- Dark Mode
- Multiple Language
- All Screen UI.

## Back-End(Logic) :
- Profile Registration using FirebaseFirestore
- Real Time chat.
- Social media Post.
- User Settings.

## **Package Depencecy Used:**
- firebase-ios-sdk.  https://github.com/firebase/firebase-ios-sdk.git
- GoogleSignIn-iOS.  https://github.com/google/GoogleSignIn-iOS.git
- facebook-ios-sdk   https://github.com/facebook/facebook-ios-sdk.git

## **Firebase installation Step-by-step:**
Using SDK:
- Go to github  https://github.com/firebase/firebase-ios-sdk
- Copy link
![Group 1](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/e9892efd-2250-4faf-be33-a4cb414888a0)
- Open Your Xcode Project -> go to main SwiftUI file -> Package Dependencies -> then click add Button. See screenshot bellow: 
![Group 2](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/9b37f02d-46e8-4c61-a276-bc28b802802f)
- paste link from github -> in Version Rules (Choose Up to Next Major Version) -> then click add package 
![Group 3](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/b3512125-d4e9-4321-8707-5811dd69675c)
- Wait for minutes to installation process.
![Screenshot 2023-09-09 at 20 46 13](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/6da1c40e-fd42-4123-8e00-9736fa0ed2b6)
- checklist Firebase Analytics, Firebase Analytics Swift, Firebas Auth, Firebase Firestore, Firebase Storage and then click add Packages.
![Screenshot 2023-09-09 at 20 48 55](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/79b7d525-f1de-4c5f-b1a1-329faf7ea7db)
- This image bellow signifies if you have succed install firebase into your project
![Group 9](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/335cc7c9-2463-4d05-ab48-40f8504fe7d3)
- Next Step is go to firebase website https://firebase.google.com/
- sign in with your google account
- choose go to Console or Get started
![Screenshot 2023-09-10 at 15 32 1](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/4d8b4791-ca89-4faf-be35-d6eb87ccb6da)
- choose Add Project 
![Group 5](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/568bbf5b-aec9-4210-802d-a996bb94363d)
- Complete 3 step to continue 
- Choose iOS 
![Group 6](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/f4a9dec8-689d-4ea8-bab6-e3be58270955)
- Register your app  
- this image bellow will show you how to see your bundle ID.
![Group 4](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/076aa9ea-a53e-49a4-a9c4-949491e8e012)
- download Config file -> put GoogleService-Info.pist file into your Xcode Project. 
![Screenshot 2023-09-10 at 15 53 44](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/0927d651-5d2e-4aab-8452-3ed83690b34a)
- Add initialization code to appDelegate File. (copy & paste to your appDelegate in your @main class)
- copy source code here:
![Group 7](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/fda42ecb-c666-4675-83b2-8a07677589ae)
then paste code here...
![Group 8](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/b1c47901-dccb-43e5-bdf4-11b7dd7d19c6)
- Now you can use Firebase Servise as long you import Firebase to your SwiftUI File.<br />
![Screenshot 2023-09-09 at 20 53 47](https://github.com/Surya221299/Litmatch-Clone-SwiftUI/assets/60531747/58883e46-9112-4ca6-85cd-d75a9f4c836d)

## **What I have learned from build this project:**
- I have been practicing the basics of the Swift programming language which I have learned from Udemy courses and YouTube tutorials.
- I learn more about SwiftUI to create UI app such as layouting, put and resizing image, creating custom button with image and text.
- I’m also learning how to use third package dependency which is Firebase. I learn how to install and using it for user registration.




