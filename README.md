# domain_driven_design_note_app
This app was mainly created while Domain Driven Design course by Reso Coder (https://resocoder.com/category/tutorials/flutter/firebase-ddd/), but I'd decided to introduce some important changes.
Firstly, as far as the logic goes, I've resigned from using Value Objects and Data Transfer Objects, deciding to simplify the app architecture in order to look more like "real life" apps. What's more, I have changed the structure of app blocs, going for a simpler one (NotesBloc + NoteFormCubit).
Secondly, I was unhappy with given UI, so I've created my own. You can see some screenshots here:
login screen:
![Screenshot](images/screenshots/screenshot_1.png)
main screen (notes list):
![Screenshot](images/screenshots/screenshot_2.png)
adding a note:
![Screenshot](images/screenshots/screenshot_3.png)
editing a note:
![Screenshot](images/screenshots/screenshot_4.png)

Some other code differences stem from fact that I've created this project two years after the original course was published and I've decided to use the latest dependencies available at the moment (the biggest differences are related to the bloc package breaking changes that occured since then).

Asset resources:
main illustration: <a href="https://www.freepik.com/free-vector/brainstorm-team-work-composition-with-character-girl-holding-rolled-drafts-big-pencil-illustration_17348006.htm#page=2&query=person%20illustration%20writing&position=12&from_view=search&track=ais">Image by macrovector</a> on Freepik
icons:
warning icon: <a href="https://www.flaticon.com/free-icons/error" title="error icons">Error icons created by Freepik - Flaticon</a>
exit icon: <a href="https://www.flaticon.com/free-icons/logout" title="logout icons">Logout icons created by Freepik - Flaticon</a>
rocket icon: <a href="https://www.flaticon.com/free-icons/innovation" title="innovation icons">Innovation icons created by Freepik - Flaticon</a>

