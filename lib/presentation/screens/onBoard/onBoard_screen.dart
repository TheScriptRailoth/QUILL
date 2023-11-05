part of 'onBoard_imports.dart';
@RoutePage()
class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Image.asset('assets/images/Quill_logo.png',height: 100, width: 100,),
                SizedBox(height: 63,),
                PageView(
                  controller: onBoardViewModel.pageController,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/blogs_illustration.png', height: 333,),
                        SizedBox(height: 20,),
                        Text("Embark on a Journey through a World of Words with Captivating Blogs and Stories.", textAlign: TextAlign.center,
                          style:TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/articles_illustrations.png', height: 333, width: 333,),
                        SizedBox(height: 20,),
                        Text("Deepen Your Knowledge and Boost Creativity with Thoughtful Articles.", textAlign: TextAlign.center,
                          style:TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/share_illustrations.png', height: 333, width: 333,),
                        SizedBox(height: 20,),
                        Text("Connect, Share Ideas, and Inspire in a Thriving Writing Community.", textAlign: TextAlign.center,
                          style:TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),),
                      ],
                    ),
                  ],
                ).expand(),
                ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.primaryColor,
                        minimumSize: Size(MediaQuery.sizeOf(context).width, 44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: Text("Get Started",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),)
                ),
                SizedBox(height: 61,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Skip",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: MyColors.primaryColor),),
                      SmoothPageIndicator(
                          controller: onBoardViewModel.pageController,  // PageController
                          count:  3,
                          effect:  WormEffect(
                            activeDotColor: MyColors.primaryColor,
                            dotHeight: 8,
                            dotWidth: 12
                          ),  // your preferred effect
                          onDotClicked: (index){
                          }
                      ),
                      Text("Next",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: MyColors.primaryColor),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
