import 'package:chatapp/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  String? email = '';
  String msg = '';
  late User loggedInUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser != null) {
        print(currentUser.email);
        loggedInUser = currentUser;
      }
    } catch (e) {
      print(e);
    }
  }

  void getMessages() async {
    //can do it like this but how would you be getting new messages constantly? you need to use a stream so everytime new data comes you get it.
    //if you do it this way it means you would have to manually be checking the db either using a timer or smth for new data
    final msgs = await _firestore.collection('messages').get();
    //  retrieves all documents from the "messages" collection in Firestore. The get() method returns a QuerySnapshot containing the documents.
    for (var msg in msgs.docs) {
      // iterates over each document in the QuerySnapshot.
      // Within the loop, msg.data() retrieves the data of the current document as a Map<String, dynamic>
      print(msg.data()['sender']);
      print(msg.data()['text']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('chat app'),
          leading: IconButton(
              onPressed: () async {
                await _auth.signOut();
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (route) => false);
              },
              icon: Icon(Icons.logout_outlined))),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              msg = value;
            },
          ),
          TextButton(
              onPressed: () {
                // _firestore
                //     .collection('messages')
                //     .add({'sender': email, 'text': msg});
                getMessages();
              },
              child: Text('Send'))
        ],
      ),
    );
  }
}
