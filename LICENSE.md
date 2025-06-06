<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>Меньше стресса!</title>
 </head>
 <body>
  <h1>Уменьшаем кортизол гормон стресса</h1>
  <p>Тест</p>
   <iframe src="quiz.html" width="480" height="720" class="quiz-frame"></iframe>
     <div class="wrapper">
   <main class="main">
       <div class="quiz__head">
           <div class="head__content" id="head">Вы пьете больше двух чашек кофе в день?</div>
       </div>
       <div class="quiz__body">
           <div class="buttons">
               <div class="buttons__content" id="buttons">
                   <button class="button">Default button</button><br>
                   <button class="button button_wrong">Да</button><br>
                   <button class="button button_correct">Нет</button><br>
                   <button class="button button_passive">Я не пью</button><br>
               </div>
           </div>
 
           <div class="quiz__footer">
               <div class="footer__content" id="pages">0 / 0</div>
           </div>
       </div>
      
   </main>
</div>
{
   width: 100%;
   height: 100%;
   margin: 0;
   padding: 0;
   overflow: hidden;
   font-size: 16px;
   font-family: helvetica, arial;
   background: #f9f9f9;
   color: #111;
}
 
.wrapper
{
   width: 100%;
   height: 100%;
   display: table;
}
 
.main
{
   display: table-cell;
   vertical-align: middle;
   text-align: center;
}
 
.quiz-frame
{
   border: 0;
   box-shadow: 0 0 10px rgba(0,0,0,0.5);
}
 
.quiz__head
{
   font-size: 20pt;
   margin: 10px;
   margin-bottom: 50px;
}
 
.head__content
{
   padding: 5px;
}
 
.quiz__body
{
   margin: 10px;
}
 
.quiz__footer
{
   position: absolute;
   bottom: 0;
   display: block;
   width: 100%;
}
 
.footer__content
{
   padding: 5px;
}
 
.button
{
   border: 0;
   border-radius: 10px;
   background: #6477EB;
   color: #fff;
   padding: 10px 25px;
   width: 70%;
   font-size: 15pt;
   display: block;
   margin: 2px auto;
   cursor: pointer;
}
 
.button_wrong
{
   background: #EB6465;
}
 
.button_correct
{
   background: #5EB97D;
}
 
.button_passive
{
   background: #B3B3B3;
}

 </body>
</html>
