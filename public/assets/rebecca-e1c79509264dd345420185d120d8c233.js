function counter(){0==p&&(seconds--,$("#start-button").text("00:"+seconds)),-1==seconds&&(p=1,clearInterval(interval),$("#start-button").text("New Game"),$("#start-button").on("click",reset()))}function reset(){console.log("This is where the game should reset"),clearInterval(interval),timer.text("Start"),seconds=10}var timer=$("#start-button"),interval,p=0,seconds=30;$("#start-button").unbind("click").on("click",function(){p=0,console.log("Hello"),interval=setInterval(counter,1e3)});