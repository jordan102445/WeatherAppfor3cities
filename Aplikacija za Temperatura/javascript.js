
 function Informacija()
{
  const ime = document.getElementById("grad");





  fetch('api.openweathermap.org/data/2.5/forecast?q='ime.value+' &appid=3797821ada1d4de6d62f3ed64a285663')
  .then(response => response.json())
  .then(data =>{

      for(i=0;i<7;i++)   // za sekoj den posebno so for ciklus da gi dava stepenite
      {
        //if("den" +(i+1) +"Stepeni" <25)
        //  .then(response => response.json())
        // .then(data =>{

         document.getElementById("den" +(i+1) +"Stepeni").innerHTML = "Stepeni" + Number(data.list[i].main.temp_max -293.01).toFixed(2)+ "°";

      }

      console.log(data)

    }
}







    .catch(err => alert("ne e vored"))




var d = new Date();
var weekday = ["Понеделник", "Вторник", "Среда", "Четврток", "Петок", "Сабота", "Недела",];




function CheckDay(den){

if(den + d.getDay())
{

  return den +d.getDay();
}

for(i = 0; i<6; i++){
       document.getElementById("den" + (i+1)).innerHTML = weekday[CheckDay(i)];
   }


}


document.getElementById("den1").innerHTML = Math.round(data.list[0].main.temp_max - 293.01, -2);
document.getElementById("den2").innerHTML = Math.round(data.list[0].main.temp_max -293.01, -2);
document.getElementById("den3").innerHTML = Math.round(data.list[0].main.temp_max -293.01, -2);
document.getElementById("den4").innerHTML = Math.round(data.list[0].main.temp_max - 293.01, -2);
document.getElementById("den5").innerHTML = Math.round(data.list[0].main.temp_max - 293.01, -2);
document.getElementById("den6").innerHTML = Math.round(data.list[0].main.temp_max - 293.01, -2);
document.getElementById("den7").innerHTML = Math.round(data.list[0].main.temp_max - 293.01, -2);


weekday[0] = "Понеделник";
weekday[1] = "Вторник";
weekday[2] = "Среда";
weekday[3] = "Четврток";
weekday[4] = "Петок";
weekday[5] = "Сабота";
weekday[6] = "Недела";



// probav i so js nemi uspevase zosto pocnav so php i so bazite

</body>
</html>
