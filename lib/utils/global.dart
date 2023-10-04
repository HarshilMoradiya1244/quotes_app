import 'package:flutter/material.dart';
import 'package:quotes_app/model/category_model.dart';
import 'package:quotes_app/model/quotes_model.dart';

class Global {

  static Global g1 = Global();

List<CategoryModel>categoryList=[
    CategoryModel(name:'Motivational',color:Colors.yellow,image:"assets/images/Motivation.png"),
    CategoryModel(name:'Single',color:Colors.brown.shade300,image:"assets/images/Single.png"),
    CategoryModel(name:'Lonely',color:Colors.blue,image:"assets/images/Lonely.png"),
    CategoryModel(name:'Attitude',color:Colors.pink.shade800,image:"assets/images/Attitude.png"),
    CategoryModel(name:'Happiness',color:Colors.pink.shade200,image:"assets/images/Happiness.png"),
    CategoryModel(name:'Sad',color:Colors.brown.shade300,image:"assets/images/Sad.png"),
    CategoryModel(name:'Funny',color:Colors.pink,image:"assets/images/Funny.png"),
    CategoryModel(name:'Beautiful',color:Colors.orange.shade400,image:"assets/images/Beautiful.png"),
    CategoryModel(name:'Best',color:Colors.green.shade400,image:"assets/images/Best.png"),
    CategoryModel(name:'Work',color:Colors.purple.shade400,image:"assets/images/Work.png"),
    CategoryModel(name:'Romentic',color:Colors.red,image:"assets/images/Romentic.png"),
    CategoryModel(name:'Love',color:Colors.pink.shade800,image:"assets/images/Love.png"),
    CategoryModel(name:'Success',color:Colors.pink.shade200,image:"assets/images/Success.png"),
    CategoryModel(name:'Thinking',color:Colors.brown.shade300,image:"assets/images/Thinking.png"),
  ];

String? categoryName;


  List<Map>quotesList = [

    {'quotes':'“All our dreams can come true; if we have the courage to pursue them.”','author':' – Walt Disney','category':'Success','color':Colors.yellow},
    {'quotes':'“There is little success where there is little laughter.”',             'author':' – Andrew Carnegie','category':'Success','color':Colors.brown.shade300},
    {'quotes':'“There is no substitute for victory.”',                                 'author':' – Douglas MacArthur','category':'Success','color':Colors.blue},
    {'quotes':'“They succeed, because they think they can.”',                          'author':' – Virgil','category':'Success','color':Colors.pink.shade800},
    {'quotes':'“It takes 20 years to make an overnight success.”',                     'author':' – Eddie Cantor','category':'Success','color':Colors.pink.shade200},



    {'quotes':'“Learn as if you will live forever, live like you will die tomorrow.”',    'author':'  — Mahatma Gandhi','category':'Motivational','color':Colors.brown.shade300},
    {'quotes':'“Don’t let yesterday take up too much of today.”                ',         'author':' — Will Rogers','category':'Motivational','color':Colors.pink},
    {'quotes':'"It is better to fail in originality than to succeed in imitation."',      'author':' — Herman Melville','category':'Motivational','color':Colors.orange.shade400},
    {'quotes':'“Success usually comes to those who are too busy looking for it.” ',       'author':'— Henry David Thoreau','category':'Motivational','color':Colors.green.shade400},
    {'quotes':'“Success is getting what you want, happiness is wanting what you get.”',   'author':' ―W. P. Kinsella','category':'Motivational','color':Colors.purple.shade400},


    {'quotes':'“Just because I’m single, It doesn’t, mean I’m alone. I have food and internet.”',              'author':' – Henry David Thoreau','category':'Single','color':Colors.red},
    {'quotes':'“Relationship Status: sleeping in my bed diagonally.”'  ,                                       'author':' – Benjamin Disraeli','category':'Single','color':Colors.pink.shade800},
    {'quotes':'“Romeo died because of Juliet, Jack died because of rose, stay single if you want to live.”',   'author':' – Edwin H. Chapin','category':'Single','color':Colors.pink.shade200},
    {'quotes':'“Current relationship status: Made dinner for two ate both.”',                                  'author':' – Milton Berle','category':'Single','color':Colors.brown.shade300},
    {'quotes':'“When someone asks me why I’m still single. I guess I’m overqualified!”',                       'author':' – Milton Berle','category':'Single','color':Colors.brown.shade300},


    {'quotes':'“You’re not alone. I’m awake and I’ve been thinking of you.” ',     'author':' — Kygo ','category':'Lonely','color':Colors.red},
    {'quotes':'“Lonely, I’m so lonely, I have nobody to call my own.”'  ,          'author':' — Akon ','category':'Lonely','color':Colors.pink.shade800},
    {'quotes':'“I’m not the girl you’re taking home. I keep dancing on my own.”',  'author':' — Robyn','category':'Lonely','color':Colors.pink.shade200},
    {'quotes':'“We’re happy, free, confused, and lonely at the same time.”',       'author':' — Taylor Swift ','category':'Lonely','color':Colors.brown.shade300},
    {'quotes':'“I walk a lonely road, the only one that I have ever known.”',      'author':' — Green Day','category':'Lonely','color':Colors.brown.shade300},


    {'quotes':'“I don’t think of all the misery but of the beauty that still remains.”',                 'author':' — Anne Frank','category':'Attitude','color':Colors.yellow},
    {'quotes':'“Optimism is the faith that leads to achievement; nothing can be done without hope.”',    'author':' — Helen Keller','category':'Attitude','color':Colors.brown.shade300},
    {'quotes':'“You can often change your circumstances by changing your attitude.”',                    'author':' — Eleanor Roosevelt','category':'Attitude','color':Colors.blue},
    {'quotes':'“You always pass failure on the way to success.”',                                        'author':'  — Mickey Rooney','category':'Attitude','color':Colors.pink.shade800},
    {'quotes':'“Perpetual optimism is a force multiplier.”',                                             'author':' — Colin Powell','category':'Attitude','color':Colors.pink.shade200},


    {'quotes':'"The only joy in the world is to begin."',                                   'author':' —Cesare Pavese','category':'Happiness','color':Colors.brown.shade300},
    {'quotes':'"It is only possible to live happily ever after on a daily basis."',         'author':' — Margaret Bonanno','category':'Happiness','color':Colors.pink},
    {'quotes':'"The pleasure which we most rarely experience gives us greatest delight."',  'author':' — Epictetus','category':'Happiness','color':Colors.orange.shade400},
    {'quotes':'"Remember this, that very little is needed to make a happy life."',          'author':' — Marcus Aurelius','category':'Happiness','color':Colors.green.shade400},
    {'quotes':'"I wake up every morning with a great desire to live joyfully."',            'author':' — Anna Howard Shaw','category':'Happiness','color':Colors.purple.shade400},


    {'quotes':'"Life is a moderately good play with a badly written third act."',              'author':'–Truman Capote','category':'Sad','color':Colors.red},
    {'quotes':'"Things change. And friends leave. And life doesnt stop for anybody."',         'author':'–Stephen Chbosky','category':'Sad','color':Colors.pink.shade800},
    {'quotes':'“I wish I could go back to the day I met you and just walk away.”',             'author':'  - Unknown','category':'Sad','color':Colors.pink.shade200},
    {'quotes':'"Don t ever tell anybody anything. If you do you start missing everybody."',    'author':' – J.D. Salinger','category':'Sad','color':Colors.brown.shade300},
    {'quotes':'““I wish I could go back to the day I met you and just walk away.”',             'author':' - Unknown','category':'Sad','color':Colors.brown.shade300},


    {'quotes':'“Clothes make the man. Naked people have little or no influence in society.”',                        'author':' — Mark Twain','category':'Funny','color':Colors.yellow},
    {'quotes':'“I want my children to have all the things I could nt afford. Then I want to move in with them.”',    'author':' — Phyllis Diller','category':'Funny','color':Colors.brown.shade300},
    {'quotes':'“I haven t spoken to my wife in years. I did nt want to interrupt her.”',                             'author':' — Rodney Dangerfield','category':'Funny','color':Colors.blue},
    {'quotes':'“I used to sell furniture for a living. The trouble was, it was my own.”',                            'author':' — Les Dawson','category':'Funny','color':Colors.pink.shade800},
    {'quotes':'There’s nothing wrong with you that an expensive operation can’t prolong.”',                           'author':' — Surgeon','category':'Funny','color':Colors.pink.shade200},


    {'quotes':'“I think being in love with life is a key to eternal youth.”',                     'author':' ― Doug Hutchison','category':'Beautiful','color':Colors.brown.shade300},
    {'quotes':'“Life is beautiful and so are you.”',                                              'author':' ― Debasish Mridha','category':'Beautiful','color':Colors.pink},
    {'quotes':'“The purpose of our lives is to be happy.”',                                       'author':' ― Dalai Lama','category':'Beautiful','color':Colors.orange.shade400},
    {'quotes':'“Life is really simple, but we insist on making it complicated.”',                 'author':' ― Confucius','category':'Beautiful','color':Colors.green.shade400},
    {'quotes':'“Life is like riding a bicycle. To keep your balance, you must keep moving.”',     'author':' ― Albert Einstein','category':'Beautiful','color':Colors.purple.shade400},


    {'quotes':'The way to get started is to quit talking and begin doing. -Walt Disney',    'author':'–Truman Capote','category':'Best','color':Colors.red},
    {'quotes':'The only thing we have to fear is fear itself. -Franklin D. Roosevelt',      'author':'–Stephen Chbosky','category':'Best','color':Colors.pink.shade800},
    {'quotes':'Do one thing every day that scares you. -Eleanor Roosevelt',                 'author':'  - Unknown','category':'Sad','Best':Colors.pink.shade200},
    {'quotes':'Well done is better than well said. -Benjamin Franklin',                     'author':' – J.D. Salinger','category':'Best','color':Colors.brown.shade300},
    {'quotes':'Be yourself; everyone else is already taken. -Oscar Wilde',                  'author':' - Unknown','category':'Best','color':Colors.brown.shade300},



    {'quotes':'“Before anything else, preparation is the key to success.”',  'author':' — Alexander Graham Bell','category':'Work','color':Colors.yellow},
    {'quotes':'“Make each day your masterpiece.”',                           'author':' — John Wooden','category':'Work','color':Colors.brown.shade300},
    {'quotes':'“Don’t count the days, make the days count.”',                'author':' — Muhammad Ali','category':'Work','color':Colors.blue},
    {'quotes':'“We will fail when we fail to try.',                          'author':'” — Rosa Parks','category':'Work','color':Colors.pink.shade800},
    {'quotes':'“A year from now you may wish you had started today.”',      ' author':' — Karen Lamb','category':'Work','color':Colors.pink.shade200},


    {'quotes':'"The best thing to hold onto in life is each other."',    'author':' – Audrey Hepburn','category':'Romentic','color':Colors.brown.shade300},
    {'quotes':'“I need you like a heart needs a beat.”',                 'author':'  –Unknown','category':'Romentic','color':Colors.pink},
    {'quotes':'"You’re the closest to heaven, that I’ll ever be."',      'author':' — Goo Goo Dolls','category':'Romentic','color':Colors.orange.shade400},
    {'quotes':'"It’s always better when we’re together." ',              'author':' — Jack Johnson','category':'Romentic','color':Colors.green.shade400},
    {'quotes':'17. "Two are better than one."',                          'author':' — Ecclesiastes 4:9','category':'Romentic','color':Colors.purple.shade400},


    {'quotes':'“I’ll be loving you, always with a love that’s true”',        'author':' – Patsy Cline','category':'Love','color':Colors.red},
    {'quotes':'“I need you like a heart needs a beat.”'  ,                   'author':' – One Republic','category':'Love','color':Colors.pink.shade800},
    {'quotes':'Grow old along with me; the best is yet to be.”',             'author':' – Robert Browning','category':'Love','color':Colors.pink.shade200},
    {'quotes':'“You make me want to be a better man.”',                      'author':' – Melvin Udall','category':'Love','color':Colors.brown.shade300},
    {'quotes':'”Women are meant to be loved, not to be understood.”',        'author':' – Oscar Wilde','category':'Love','color':Colors.brown.shade300},



    {'quotes':'“Friends are the family we choose.”',                                    'author':' — Jennifer Aniston','category':'Thinking','color':Colors.yellow},
    {'quotes':'"My purpose: to lift your spirit and to motivate you."',                 'author':'— Mavis Staples','category':'Thinking','color':Colors.brown.shade300},
    {'quotes':'“Kindness is one thing you can’t give away. It always comes back.”',     'author':'  — George Skolsky','category':'Thinking','color':Colors.blue},
    {'quotes':'“Try to be a rainbow in someone else’s cloud.”',                         'author':' — Maya Angelou','category':'Thinking','color':Colors.pink.shade800},
    {'quotes':'"Happiness is not by chance but by choice."',                            'author':' — Jim Rohn','category':'Thinking','color':Colors.pink.shade200},


  ];

  List<QuotesModel>modelList = [];
}