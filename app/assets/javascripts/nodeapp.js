
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

$('#start-button').on('click', function(e){
    e.preventDefault();
    resetFields();
    first_hashtag = 'snow';
    second_hashtag = 'hi';
    query = 'first_hashtag='+ first_hashtag +'&second_hashtag='+ second_hashtag

    var socket = io.connect('https://twitter-burst-node.herokuapp.com/', { query: query, 'forceNew':true });
    socket.on('stream', function(tweet){
        if (tweet.search(first_hashtag) != -1){
            $('#first-hashtag-result').text(tweet);
            numone = $('#ticker-one').text();
            numone ++;
            $('#ticker-one').text(numone);
        } else {
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
