# domain_driven_design_note_app
This app was mainly created while Domain Driven Design course by Reso Coder (https://resocoder.com/category/tutorials/flutter/firebase-ddd/), but I'd decided to introduce some important changes.

Firstly, as far as the logic goes, I've resigned from using Value Objects and Data Transfer Objects, deciding to simplify the app architecture in order to look more like "real life" apps. What's more, I have changed the structure of app blocs, going for a simpler one (NotesBloc + NoteFormCubit).

Secondly, I was unhappy with given UI, so I've created my own. You can see some screenshots here:


<table>
  <tr>
    <td> login screen:  </td>
    <td> main screen (notes list): </td>
    <td> no notes:  </td>
  </tr>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/48457596/234270237-8045c885-d12f-4bd4-9d73-75bfa21cdac1.png" width="300" /></td>
    <td><img src="https://user-images.githubusercontent.com/48457596/234270284-61493e1b-f5b7-4e3f-a9d7-74e74ba6886d.png" width="300" /></td>
    <td><img src="https://user-images.githubusercontent.com/48457596/234270343-a61fef6f-1e49-49f4-bba3-28dd9ff3e24a.png" width="300" /> </td>
  </tr>
  <tr>
    <td> adding a note: </td>
    <td> editing a note: </td>
  </tr>
   <tr>
    <td> <img src="https://user-images.githubusercontent.com/48457596/234270376-3c08fb0d-37ed-4063-bc89-c91b20b975d2.png" width="300" /> </td>
    <td> <img src="https://user-images.githubusercontent.com/48457596/234270415-a3d88d68-46a4-4d41-8ba9-8e9af1c75963.png" width="300" />  </td>
  </tr>
</table>

Some other code differences stem from fact that I've created this project two years after the original course was published and I've decided to use the latest dependencies available at the moment (the biggest differences are related to the bloc package breaking changes that occured since then).

Asset resources:

main illustration: <a href="https://www.freepik.com/free-vector/brainstorm-team-work-composition-with-character-girl-holding-rolled-drafts-big-pencil-illustration_17348006.htm#page=2&query=person%20illustration%20writing&position=12&from_view=search&track=ais">Image by macrovector</a> on Freepik

icons:

warning icon: <a href="https://www.flaticon.com/free-icons/error" title="error icons">Error icons created by Freepik - Flaticon</a>

exit icon: <a href="https://www.flaticon.com/free-icons/logout" title="logout icons">Logout icons created by Freepik - Flaticon</a>

rocket icon: <a href="https://www.flaticon.com/free-icons/innovation" title="innovation icons">Innovation icons created by Freepik - Flaticon</a>

