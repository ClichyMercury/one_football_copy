import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/constant/string.dart';
import 'package:one_football_copy/models/userComment.dart';

class CommentView extends StatefulWidget {
  const CommentView({super.key});

  @override
  State<CommentView> createState() => _CommentViewState();
}

class _CommentViewState extends State<CommentView> {
  final TextEditingController _commentController = TextEditingController();

  final ScrollController _scrollController = ScrollController();
  bool _showWelcomeMessage = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _commentController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (_showWelcomeMessage) {
        setState(() {
          _showWelcomeMessage = false;
        });
      }
    } else if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      if (!_showWelcomeMessage) {
        setState(() {
          _showWelcomeMessage = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // Barre personnalisée
                CommentAppBar(
                  width: width,
                  nbOfComments: "22",
                  peoles: "216",
                ),
                Divider(color: Colors.grey.withOpacity(0.3)),

                // Liste des commentaires
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    itemCount: AppData.comments.length +
                        1, // Ajouter 1 pour le `SizedBox` dynamique
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        // `SizedBox` dynamique pour simuler le décalage
                        return SizedBox(height: _showWelcomeMessage ? 125 : 0);
                      }
                      // Utilisez _comments[index - 1] pour obtenir le commentaire
                      // (index - 1 parce que nous avons ajouté un élément pour le SizedBox)
                      final commentData = AppData.comments[index - 1];
                      return UserCommentWidget(
                        commentData: commentData,
                      );
                    },
                  ),
                ),

                // Champ de saisie de commentaire
                Divider(color: Colors.grey.withOpacity(0.3)),
                const BottomTextfieldWidget(),
              ],
            ),

            // Message de bienvenue avec fonction d'affichage/masquage
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              top: _showWelcomeMessage ? 100 : -100,
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: _showWelcomeMessage ? 1.0 : 0.0,
                child: const WelcomeToCommentWidget(
                  title: "5 spicy fixtures you must watch this weekend 🌶️",
                  redactor: 'OneFootball',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserCommentWidget extends StatelessWidget {
  const UserCommentWidget({
    super.key,
    required this.commentData,
  });

  final UserCommentClass commentData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: CustomTheme.greenYellowMainColor,
                  radius: 22,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      commentData.username,
                      style: TextStyle(
                          color: CustomTheme.textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      commentData.timeAgo,
                      softWrap: true,
                      style: TextStyle(
                          color: CustomTheme.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          commentData.comment,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "Reply",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            const SizedBox(width: 15),
            const Icon(
              Icons.thumb_up_outlined,
              color: Colors.white,
            ),
            const SizedBox(width: 2),
            Text(
              commentData.nbThumbUp,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(width: 15),
            const Icon(
              Icons.thumb_down_outlined,
              color: Colors.white,
            ),
            const SizedBox(width: 2),
            Text(
              commentData.nbThumbDown,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        Divider(color: Colors.grey.withOpacity(0.3)),
      ],
    );
  }
}

class UserCommentWidget2 extends StatelessWidget {
  const UserCommentWidget2({
    super.key,
    required List<String> comments,
    required this.index,
  }) : _comments = comments;

  final List<String> _comments;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        _comments[index - 1], // Index décalé de -1 pour ignorer le `SizedBox`
        style: TextStyle(color: Colors.white),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.thumb_up, color: Colors.white),
            onPressed: () {
              // Action pour aimer un commentaire
            },
          ),
          IconButton(
            icon: Icon(Icons.reply, color: Colors.white),
            onPressed: () {
              // Action pour répondre à un commentaire
            },
          ),
        ],
      ),
    );
  }
}

class WelcomeToCommentWidget extends StatelessWidget {
  const WelcomeToCommentWidget({
    super.key,
    required this.title,
    required this.redactor,
  });

  final String title;
  final String redactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text:
                  'Welcome to the comments area! Be courteous and keep discussions on-topic. ',
              style: const TextStyle(
                  color: CustomTheme.textColor, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: "Visit our community guidelines ",
                  style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decorationThickness: 0.5,
                      decorationColor: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Action à effectuer lors du clic
                      if (kDebugMode) {
                        print('Texte cliqué!');
                      }
                    },
                ),
                const TextSpan(
                  text: "and have fun with us!",
                  style: TextStyle(
                      color: CustomTheme.textColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: CustomTheme.greenYellowMainColor,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    redactor,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.grey.withOpacity(0.3)),
        ],
      ),
    );
  }
}

class BottomTextfieldWidget extends StatelessWidget {
  const BottomTextfieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.radio, color: Colors.orange),
            onPressed: () {
              Get.toNamed("/comment_field");
            },
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Get.toNamed("/comment_field");
              },
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.transparent),
                ),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'What do you think ?',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CommentAppBar extends StatelessWidget {
  const CommentAppBar({
    super.key,
    required this.width,
    required this.nbOfComments,
    required this.peoles,
  });

  final double width;
  final String nbOfComments;
  final String peoles;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                  SizedBox(
                    width: width / 4.25,
                  ),
                  const Text(
                    "Conversation",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$nbOfComments Comments",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        width: 1,
                        height: 15,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.people,
                          color: Colors.green,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          peoles,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Best",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
