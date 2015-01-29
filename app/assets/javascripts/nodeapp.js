var first_hashtag = '';
var second_hashtag = '';
var numone = 0;
var numtwo = 0;
var query = ''

    function resetFields(){
      $('#ticker-one').text(0);
      $('#ticker-two').text(0);
      $('#first-hashtag-result').text(' ');
      $('#second-hashtag-result').text(' ');
    };

$('#start-button').unbind('click').on('click', function(){
    resetFields();
    first_hashtag = $('#first-hashtag').val();
    second_hashtag = $('#hash2').text();
    query = 'first_hashtag='+ first_hashtag +'&second_hashtag='+ second_hashtag
    console.log(first_hashtag);
    console.log(second_hashtag);
    var socket = io.connect('https://twitter-burst-node.herokuapp.com/', { query: query, 'forceNew':true });
    socket.on('stream', function(tweet){
        console.log(tweet);
        if (tweet.search(first_hashtag) != -1){
            console.log(tweet);
            $('#first-hashtag-result').text(tweet);
            numone = $('#ticker-one').text();
            numone ++;
            $('#ticker-one').text(numone);
        } else {
            console.log(tweet);
            $('#second-hashtag-result').text(tweet);
            numtwo = $('#ticker-two').text();
            numtwo ++;
            $('#ticker-two').text(numtwo);
        }
    });
    setTimeout(function () {
      socket.disconnect();
    }, 30000)
});
