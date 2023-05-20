var categoryInput = false

$(function() {
    window.addEventListener('message', function(event) {
        var item = event.data
      if (item.type == "open") {
          document.getElementById("ns-switch").style.display = "block"
          setTimeout(() => document.getElementById("ns-switch").style.transform = "scale(1)", 100);
      }
  })
})

function goHome() {
   document.getElementById('ns-gameArea').style.display = "none"
   document.querySelectorAll(".game").forEach(function(a){a.remove()})
}

function closeGame() {
   document.getElementById("ns-switch").style.display = "none"
   $.post('http://ns-switch/exit', JSON.stringify({}));
   document.getElementById("ns-switch").style.transform = "scale(0.6)"
}

function openGame(game) {
  document.getElementById('ns-gameArea').style.display = "block"
  if(game == "mario")
   {
      div = `<iframe class="games-mario game" src="https://jcw87.github.io/c2-smb1/" id="ns-game"></iframe>`
   }
   else if(game == "subway")
   {
      div = `<iframe class="games-subway game" src="https://files.ufreegame.net/1024/Subway-Surfers-Zurich/" id="ns-subway"></iframe>`
   }
   else if(game == "bird")
   {
      div = `<iframe class="games-bird game" src="https://ellisonleao.github.io/clumsy-bird/" id="ns-game"></iframe>`
   }
   else if(game == "snake")
   {
      div = `<iframe class="games-snake game" src="http://slither.io/" id="ns-game"></iframe>`
    }
  $("#ns-gameArea").append(div)
}

function Time() {
   const date = new Date();
   let hours = date.getHours();
   let minutes = date.getMinutes();
   hours = hours < 10 ? "0" + hours : hours;
   minutes = minutes < 10 ? "0" + minutes : minutes;

   $('#ns-infoText').html(hours+':'+minutes);
   setTimeout(Time, 1000);
}

Time()