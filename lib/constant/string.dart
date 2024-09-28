import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/models/Team.dart';
import 'package:one_football_copy/models/upSlidersItems.dart';
import 'package:one_football_copy/models/userComment.dart';

class AppData {
  static const String weLovePrivacyText =
      '''Etiam sit amet ultrices mi, in cursus dui. Ut tincidunt tempor lorem ac accumsan. Pellentesque vel tempus nunc. Vivamus sit amet sapien placerat tortor molestie elementum nec id mi. Nulla eget justo nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis eu porta diam. Pellentesque a tortor tincidunt, pulvinar purus et, pretium purus.

Etiam suscipit, quam id facilisis finibus, odio erat mollis quam, et accumsan sem lectus sed nunc. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent faucibus ornare malesuada. Aliquam erat volutpat. Sed semper justo at augue mollis, et pretium metus interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi bibendum viverra mollis.

Nunc sed fringilla justo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus pretium nunc quis blandit gravida. Donec non eros sapien. Duis ut mauris placerat, feugiat tortor eu, tincidunt odio. Nam nisi metus, hendrerit eget diam eget, dictum dictum tellus. Ut ultricies consequat sollicitudin. Pellentesque ut imperdiet lectus. Curabitur in ipsum vehicula, mattis dui non, mollis massa. Vestibulum sollicitudin lectus eget est laoreet accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam at eleifend orci. In vulputate purus est, vitae posuere nulla sollicitudin quis. Suspendisse ornare leo ut congue egestas. Aliquam tristique tellus vulputate orci sodales viverra.

Aliquam eu quam elit. Suspendisse potenti. Aliquam vitae gravida felis. Etiam lorem arcu, condimentum at accumsan eu, accumsan eget nisl. Sed vestibulum egestas quam in blandit. Fusce tincidunt tincidunt semper. Mauris auctor et magna vitae consectetur. Sed tempus metus vitae tellus tincidunt iaculis. Maecenas dapibus bibendum turpis, ut ultrices nisi placerat eu. Donec luctus feugiat sapien ac condimentum. Nunc sit amet dui et velit convallis semper vitae ut mi. Proin ullamcorper posuere turpis, eget lobortis erat tristique blandit. Proin placerat lectus non lectus venenatis, sit amet laoreet quam tincidunt. Phasellus ullamcorper vel tortor a convallis. Cras et pulvinar orci.

Morbi sapien turpis, imperdiet vel vehicula at, hendrerit sit amet lacus. Sed mi tellus, ullamcorper id dolor vitae, faucibus tempor augue. Curabitur suscipit lacus sit amet ante lobortis lacinia. Curabitur pellentesque magna ut justo posuere aliquet sed fringilla nulla. Phasellus tincidunt mi nunc, id egestas quam efficitur vel. Etiam ipsum urna, convallis vitae feugiat eu, posuere accumsan ipsum. Donec a pharetra ante, eget pretium metus. Suspendisse aliquet auctor urna molestie vestibulum. Cras ornare elit eros, non faucibus quam congue ac. Morbi vitae eros sit amet diam sollicitudin condimentum et vel lacus. Nulla in ipsum tincidunt, semper eros nec, volutpat massa.''';

  static const String articleText =
      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas elit enim, sollicitudin sed pharetra non, sodales non nulla. Pellentesque ac tristique arcu. Maecenas fringilla neque diam, ac convallis odio scelerisque sit amet. Suspendisse sit amet augue sed dui malesuada interdum hendrerit ut ligula. Aenean mauris sem, varius ac lorem ac, cursus mattis ante. Curabitur libero nisl, elementum scelerisque est id, blandit iaculis felis. Integer efficitur blandit est ac sollicitudin. Aliquam porta est a urna porta pretium. Fusce placerat, arcu sed viverra finibus, nisi elit elementum augue, ut tempor tellus velit ut tellus. Sed felis nunc, ultricies non congue in, viverra non metus. Sed tincidunt eu nulla sit amet rhoncus.

Duis id nisl turpis. Maecenas imperdiet eros id mattis feugiat. Duis sit amet sodales purus, id ornare risus. Praesent ultrices urna nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus tincidunt malesuada dolor, id finibus orci imperdiet vitae. Quisque facilisis lectus vitae tortor mattis porttitor. Morbi magna lacus, bibendum non iaculis vitae, vehicula vel urna. Duis lorem lacus, dapibus sit amet neque in, dapibus iaculis lectus. Curabitur vestibulum fermentum fermentum. Nunc ultricies felis quis velit finibus, vel tempor dui viverra. Duis id molestie ipsum, in pretium enim. Nunc lacinia orci dolor, eu ultrices quam pretium in. Maecenas at fringilla risus.

Nam tellus ipsum, ultrices ut sollicitudin sed, ullamcorper nec felis. Pellentesque quis dui a purus semper auctor vel non magna. Pellentesque vulputate sapien eget libero luctus imperdiet. Donec id eleifend ex. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur in est eget purus tempor mollis. In risus lectus, laoreet et nulla nec, feugiat dignissim purus. Maecenas magna elit, finibus vel sapien vel, placerat rhoncus sapien. Quisque scelerisque magna et laoreet iaculis.

Suspendisse sit amet tellus sem. Integer aliquam nulla diam. Duis consectetur, orci vitae placerat bibendum, libero ligula mattis massa, posuere finibus augue lorem quis massa. Donec accumsan sollicitudin orci, a fermentum lacus. Mauris consectetur tellus vitae finibus porttitor. Aliquam ac elit ut orci molestie mattis. Duis efficitur dignissim eleifend. Sed ut justo massa. Curabitur molestie mauris sed lectus tempus placerat. Pellentesque non tortor arcu. Integer pellentesque nunc quis arcu accumsan, vel luctus tellus tempor. Cras luctus risus quis velit faucibus, condimentum viverra elit commodo. Nunc ac condimentum lectus, at blandit lectus. Proin aliquam turpis velit, cursus mattis justo pellentesque eget.

Duis dignissim luctus semper. Aliquam erat volutpat. Mauris ac aliquam erat. Donec vehicula nunc nec aliquam cursus. Fusce porta bibendum pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis est est, pellentesque id odio nec, mollis ullamcorper velit.''';

  static List<Team> teams = [
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.marseille.image(height: 65)),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.barcelona.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.realMadrid.image(height: 65)),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.chelsea.image(height: 65)),
    Team(name: 'logo2', logoUrl: AnyLogo.uefa.galatasaray.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.fenerbahce.image(height: 65)),
    Team(
        name: 'logo2',
        logoUrl: AnyLogo.uefa.parisSaintGermain.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.manchesterCity.image(height: 65)),
    Team(
        name: 'logo1',
        logoUrl: AnyLogo.uefa.manchesterUnited.image(height: 65)),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.acMilan.image(height: 65)),
    Team(name: 'logo2', logoUrl: AnyLogo.uefa.atleticoMadrid.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.watford.image(height: 65)),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.marseille.image(height: 65)),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.barcelona.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.realMadrid.image(height: 65)),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.chelsea.image(height: 65)),
    Team(name: 'logo2', logoUrl: AnyLogo.uefa.galatasaray.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.fenerbahce.image(height: 65)),
    Team(
        name: 'logo2',
        logoUrl: AnyLogo.uefa.parisSaintGermain.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.manchesterCity.image(height: 65)),
    Team(
        name: 'logo1',
        logoUrl: AnyLogo.uefa.manchesterUnited.image(height: 65)),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.acMilan.image(height: 65)),
    Team(name: 'logo2', logoUrl: AnyLogo.uefa.atleticoMadrid.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.watford.image(height: 65)),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.marseille.image(height: 65)),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.barcelona.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.realMadrid.image(height: 65)),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.chelsea.image(height: 65)),
    Team(name: 'logo2', logoUrl: AnyLogo.uefa.galatasaray.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.fenerbahce.image(height: 65)),
    Team(
        name: 'logo2',
        logoUrl: AnyLogo.uefa.parisSaintGermain.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.manchesterCity.image(height: 65)),
    Team(
        name: 'logo1',
        logoUrl: AnyLogo.uefa.manchesterUnited.image(height: 65)),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.acMilan.image(height: 65)),
    Team(name: 'logo2', logoUrl: AnyLogo.uefa.atleticoMadrid.image(height: 65)),
    Team(name: 'logo3', logoUrl: AnyLogo.uefa.watford.image(height: 65)),
    // Ajoute d'autres équipes ici
  ];

  static List<UpSliderItem> upSliderItems = [
    UpSliderItem(
      liveNow: false,
      isMatch: false,
      oneLogoOnly: const Icon(Icons.transfer_within_a_station,
          color: Colors.white, size: 45),
      title: 'Transfers',
      subtitle: 'Big movers',
      onTap: () {
        Get.toNamed("/transfert");
      },
    ),
    UpSliderItem(
      liveNow: false,
      isMatch: false,
      oneLogoOnly: AnyLogo.daily.watson.image(height: 45),
      title: 'watson',
      subtitle: 'Overview',
      onTap: () {
        // Action à exécuter lors du clic sur cet élément
      },
    ),
    UpSliderItem(
      liveNow: true,
      isMatch: true,
      logo1IfTwice: AnyLogo.uefa.realMadrid.image(height: 40),
      logo2IfTwice: AnyLogo.uefa.parisSaintGermain.image(height: 40),
      oneLogoOnly: const SizedBox.shrink(), // Pas utilisé
      title: '3 - 1',
      subtitle: 'Live now',
      onTap: () {
        // Action à exécuter lors du clic sur cet élément
      },
    ),
    UpSliderItem(
      liveNow: false,
      isMatch: true,
      logo1IfTwice: AnyLogo.uefa.chelsea.image(height: 40),
      logo2IfTwice: AnyLogo.uefa.manchesterCity.image(height: 40),
      oneLogoOnly: const SizedBox.shrink(), // Pas utilisé
      title: '1 - 2',
      subtitle: 'Overview',
      onTap: () {
        // Action à exécuter lors du clic sur cet élément
      },
    ),
    UpSliderItem(
      liveNow: false,
      isMatch: true,
      logo1IfTwice: AnyLogo.uefa.chelsea.image(height: 40),
      logo2IfTwice: AnyLogo.uefa.manchesterCity.image(height: 40),
      oneLogoOnly: const SizedBox.shrink(), // Pas utilisé
      title: '21h00',
      subtitle: 'Overview',
      onTap: () {
        // Action à exécuter lors du clic sur cet élément
      },
    ),
    UpSliderItem(
      liveNow: false,
      isMatch: true,
      logo1IfTwice: AnyLogo.uefa.bayernMunich.image(height: 40),
      logo2IfTwice: AnyLogo.uefa.interMilan.image(height: 40),
      oneLogoOnly: const SizedBox.shrink(), // Pas utilisé
      title: 'tomorrow',
      subtitle: '17h00',
      onTap: () {
        // Action à exécuter lors du clic sur cet élément
      },
    ),
    UpSliderItem(
      liveNow: false,
      isMatch: true,
      logo1IfTwice: AnyLogo.uefa.barcelona.image(height: 40),
      logo2IfTwice: AnyLogo.uefa.toulouse.image(height: 40),
      oneLogoOnly: const SizedBox.shrink(), // Pas utilisé
      title: '1 - 1',
      subtitle: 'Overview',
      onTap: () {
        // Action à exécuter lors du clic sur cet élément
      },
    ),
    UpSliderItem(
      liveNow: false,
      isMatch: true,
      logo1IfTwice: AnyLogo.uefa.sevilla.image(height: 40),
      logo2IfTwice: AnyLogo.uefa.acMilan.image(height: 40),
      oneLogoOnly: const SizedBox.shrink(), // Pas utilisé
      title: '0 - 3',
      subtitle: 'Overview',
      onTap: () {
        // Action à exécuter lors du clic sur cet élément
      },
    ),
    // Ajoute d'autres éléments ici...
  ];

  static List<UserCommentClass> comments = [
    UserCommentClass(
      username: "CityFan17",
      timeAgo: "1h ago",
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vehicula vehicula gravida. Nunc quam lorem, vulputate in orci id, posuere lacinia ipsum. Sed id velit ut est aliquet ultricies. Integer sit amet luctus est. Vivamus sagittis, odio ut viverra pretium, ex lacus dictum purus, at convallis nisl purus suscipit turpis. Ut feugiat elit nec interdum egestas. Cras blandit lacinia hendrerit. Nunc vel velit at leo porttitor porttitor quis ut sem. Vestibulum a porttitor ligula, et dapibus nisi. Maecenas diam turpis, dignissim sit amet risus a, vestibulum varius nibh. Aliquam bibendum, purus volutpat luctus faucibus, enim sapien egestas metus, vitae gravida risus ex nec quam. Sed elementum, nisi et dictum porta, urna eros consequat turpis, eget rhoncus orci tellus et nunc. In viverra massa fringilla turpis volutpat, sed pulvinar est pharetra. Donec pretium sed diam nec pharetra.",
      nbThumbUp: '12',
      nbThumbDown: '2',
    ),
    UserCommentClass(
      username: "TechGuru",
      timeAgo: "2h ago",
      comment:
          "Sed dolor neque, pharetra viverra aliquet a, consectetur id massa. Maecenas interdum augue sapien, sed tincidunt dui tincidunt vitae. Aliquam mollis turpis nec magna sollicitudin, sit amet laoreet magna porttitor. Proin finibus volutpat sem, quis imperdiet diam posuere vitae. Praesent dictum accumsan sapien, vitae commodo nulla vehicula et. Aliquam erat volutpat. Duis cursus ante ac justo viverra, id cursus nisl iaculis. Nulla placerat eu nisi eget euismod. Sed purus odio, venenatis sit amet ultricies at, porttitor nec eros. Praesent auctor neque nec metus pretium mattis. Donec tempor enim aliquam rutrum ullamcorper. Cras fringilla massa nulla, eu bibendum mauris congue ac. Aenean elementum laoreet diam, ac consequat nulla suscipit sit amet. Pellentesque laoreet suscipit nisl varius vehicula. In ipsum leo, gravida ac leo eget, faucibus volutpat ligula.",
      nbThumbUp: '8',
      nbThumbDown: '1',
    ),
    UserCommentClass(
      username: "DiscussionFan",
      timeAgo: "3h ago",
      comment:
          "Suspendisse potenti. In eget purus feugiat, accumsan nulla consectetur, consectetur est. Quisque bibendum ut neque at rhoncus. In hac habitasse platea dictumst. Donec et nunc vel arcu euismod consequat eu eget lacus. Nullam vitae nulla vitae dui hendrerit convallis. Aliquam egestas iaculis elit, sit amet auctor sapien dignissim non. Nulla vitae turpis sem. In sed facilisis mauris.",
      nbThumbUp: '15',
      nbThumbDown: '3',
    ),
    UserCommentClass(
      username: "CityFan17",
      timeAgo: "1h ago",
      comment:
          "Sed ultrices condimentum est in volutpat. Vestibulum vestibulum nisi quam, eget pulvinar risus tempor ut. Sed porta neque sit amet sodales rutrum. Sed aliquet, lorem id fringilla convallis, urna mauris consectetur felis, id euismod purus sapien ac elit. Morbi convallis volutpat leo, eget scelerisque dui scelerisque et. Praesent sed sagittis velit, quis vestibulum eros. Aenean dapibus at lectus in placerat.",
      nbThumbUp: '12',
      nbThumbDown: '2',
    ),
    UserCommentClass(
      username: "TechGuru",
      timeAgo: "2h ago",
      comment:
          "Suspendisse congue, nibh pretium viverra gravida, felis ex fermentum velit, et ornare lorem felis vitae nisi. Morbi lacus ipsum, lacinia sit amet tristique vitae, ultricies id turpis. Ut sapien nunc, laoreet fringilla mattis dictum, porttitor id eros. Fusce ornare congue aliquam. Proin venenatis neque lorem. Praesent feugiat at enim eget convallis. Nulla pretium nulla ac imperdiet dictum. Nulla nisi massa, scelerisque in congue ut, ultricies vitae sapien. Quisque non elit in sapien mollis sollicitudin. Ut cursus dictum nisl sed tempus. Nullam eget nisl vel nibh bibendum cursus ac in libero.",
      nbThumbUp: '8',
      nbThumbDown: '1',
    ),
    UserCommentClass(
      username: "CityFan17",
      timeAgo: "1h ago",
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vehicula vehicula gravida. Nunc quam lorem, vulputate in orci id, posuere lacinia ipsum. Sed id velit ut est aliquet ultricies. Integer sit amet luctus est. Vivamus sagittis, odio ut viverra pretium, ex lacus dictum purus, at convallis nisl purus suscipit turpis. Ut feugiat elit nec interdum egestas. Cras blandit lacinia hendrerit. Nunc vel velit at leo porttitor porttitor quis ut sem. Vestibulum a porttitor ligula, et dapibus nisi. Maecenas diam turpis, dignissim sit amet risus a, vestibulum varius nibh. Aliquam bibendum, purus volutpat luctus faucibus, enim sapien egestas metus, vitae gravida risus ex nec quam. Sed elementum, nisi et dictum porta, urna eros consequat turpis, eget rhoncus orci tellus et nunc. In viverra massa fringilla turpis volutpat, sed pulvinar est pharetra. Donec pretium sed diam nec pharetra.",
      nbThumbUp: '12',
      nbThumbDown: '2',
    ),
    UserCommentClass(
      username: "TechGuru",
      timeAgo: "2h ago",
      comment:
          "Sed dolor neque, pharetra viverra aliquet a, consectetur id massa. Maecenas interdum augue sapien, sed tincidunt dui tincidunt vitae. Aliquam mollis turpis nec magna sollicitudin, sit amet laoreet magna porttitor. Proin finibus volutpat sem, quis imperdiet diam posuere vitae. Praesent dictum accumsan sapien, vitae commodo nulla vehicula et. Aliquam erat volutpat. Duis cursus ante ac justo viverra, id cursus nisl iaculis. Nulla placerat eu nisi eget euismod. Sed purus odio, venenatis sit amet ultricies at, porttitor nec eros. Praesent auctor neque nec metus pretium mattis. Donec tempor enim aliquam rutrum ullamcorper. Cras fringilla massa nulla, eu bibendum mauris congue ac. Aenean elementum laoreet diam, ac consequat nulla suscipit sit amet. Pellentesque laoreet suscipit nisl varius vehicula. In ipsum leo, gravida ac leo eget, faucibus volutpat ligula.",
      nbThumbUp: '8',
      nbThumbDown: '1',
    ),
    UserCommentClass(
      username: "DiscussionFan",
      timeAgo: "3h ago",
      comment:
          "Suspendisse potenti. In eget purus feugiat, accumsan nulla consectetur, consectetur est. Quisque bibendum ut neque at rhoncus. In hac habitasse platea dictumst. Donec et nunc vel arcu euismod consequat eu eget lacus. Nullam vitae nulla vitae dui hendrerit convallis. Aliquam egestas iaculis elit, sit amet auctor sapien dignissim non. Nulla vitae turpis sem. In sed facilisis mauris.",
      nbThumbUp: '15',
      nbThumbDown: '3',
    ),
    UserCommentClass(
      username: "CityFan17",
      timeAgo: "1h ago",
      comment:
          "Sed ultrices condimentum est in volutpat. Vestibulum vestibulum nisi quam, eget pulvinar risus tempor ut. Sed porta neque sit amet sodales rutrum. Sed aliquet, lorem id fringilla convallis, urna mauris consectetur felis, id euismod purus sapien ac elit. Morbi convallis volutpat leo, eget scelerisque dui scelerisque et. Praesent sed sagittis velit, quis vestibulum eros. Aenean dapibus at lectus in placerat.",
      nbThumbUp: '12',
      nbThumbDown: '2',
    ),
    UserCommentClass(
      username: "TechGuru",
      timeAgo: "2h ago",
      comment:
          "Suspendisse congue, nibh pretium viverra gravida, felis ex fermentum velit, et ornare lorem felis vitae nisi. Morbi lacus ipsum, lacinia sit amet tristique vitae, ultricies id turpis. Ut sapien nunc, laoreet fringilla mattis dictum, porttitor id eros. Fusce ornare congue aliquam. Proin venenatis neque lorem. Praesent feugiat at enim eget convallis. Nulla pretium nulla ac imperdiet dictum. Nulla nisi massa, scelerisque in congue ut, ultricies vitae sapien. Quisque non elit in sapien mollis sollicitudin. Ut cursus dictum nisl sed tempus. Nullam eget nisl vel nibh bibendum cursus ac in libero.",
      nbThumbUp: '8',
      nbThumbDown: '1',
    ),
    // Ajoutez plus de commentaires ici...
  ];
}
