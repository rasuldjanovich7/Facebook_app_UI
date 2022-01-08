import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // #AppBar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text('facebook', style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
             onPressed: (){},
            icon: const Icon(Icons.search),
            color: Colors.grey.shade300,
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey.shade300,
          )
        ],
      ),
      backgroundColor: Colors.grey[800],
      body: ListView(
        children: [
          // #searchive
          Container(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            height: 120,
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/user_5.jpeg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        height: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "What's on your mind?",
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.video_call, color: Colors.red,),
                            const SizedBox(width: 5,),
                            Text('Live', style: TextStyle(color: Colors.grey[600]),)
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey.shade300,
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.photo, color: Colors.green,),
                            const SizedBox(width: 5,),
                            Text('Photo', style: TextStyle(color: Colors.grey[600]),)
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey.shade300,
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.location_on, color: Colors.red,),
                            const SizedBox(width: 5,),
                            Text('Check In', style: TextStyle(color: Colors.grey[600]),)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          // #stories
          Container(
            padding: const EdgeInsets.all(10),
            height: 200,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeStory(
                    storyImage: 'assets/images/story_5.jpeg',
                    userImage: 'assets/images/user_5.jpeg',
                    userName: 'User Five'
                ),
                makeStory(
                    storyImage: 'assets/images/story_4.jpeg',
                    userImage: 'assets/images/user_4.jpeg',
                    userName: 'User Four'
                ),
                makeStory(
                    storyImage: 'assets/images/story_3.jpeg',
                    userImage: 'assets/images/user_3.jpeg',
                    userName: 'User Three'
                ),
                makeStory(
                    storyImage: 'assets/images/story_2.jpeg',
                    userImage: 'assets/images/user_2.jpeg',
                    userName: 'User Two'
                ),
                makeStory(
                    storyImage: 'assets/images/story_1.jpeg',
                    userImage: 'assets/images/user_1.jpeg',
                    userName: 'User One'
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          makeFeed(
              userName: 'User Two',
              userImage: 'assets/images/user_2.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage_1: 'assets/images/story_2.jpeg',
              feedImage_2: 'assets/images/story_4.jpeg'
          ),
        ],
      ),
    );
  }
  Widget makeStory({storyImage, userImage, userName}){
      return AspectRatio(
        aspectRatio: 1.3/2,
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(storyImage),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.1),
                ]
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                    image: DecorationImage(
                      image: AssetImage(userImage)
                    )
                  ),
                ),
                Text(userName, style: const TextStyle(color: Colors.white),)
              ],
            ),
          ),
        ),
      );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage_1, feedImage_2}){
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10,left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(userImage),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(userName, style: TextStyle(color: Colors.grey[400], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                          const SizedBox(height: 3,),
                          Text(feedTime, style: const TextStyle(fontSize: 15, color: Colors.grey),),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],),
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[600], height: 1.5, letterSpacing: .7),),
                const SizedBox(height: 20,),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(feedImage_1),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(feedImage_2),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    makeLike(),
                    Transform.translate(
                        offset: const Offset(-5, 0),
                        child: makeLove()
                    ),
                    const SizedBox(width: 5,),
                    Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[600]),)
                  ],
                ),
                Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[600]),)
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLikeButton({isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
            const SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}