<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<div id="snackbar"></div>
<script src="/static/js/bootstrap.js"></script>
<script src="/static/js/fontawesome-all.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	notificacao()
})
function notificacao(){
    var x = $('#snackbar').html("${icon} "+"${mensagem}");    
    switch(${alert}){
        case 0:{
            x.toggleClass("alert alert-success show");
            setTimeout(function(){ x.toggleClass("alert alert-success show"); }, 3000);
            break;
        }
        case 1:{
            x.toggleClass("alert alert-danger show");
            setTimeout(function(){ x.toggleClass("alert alert-danger show"); }, 3000);
            break;
        }
        case 2:{
            x.toggleClass("alert alert-warning show");
            setTimeout(function(){ x.toggleClass("alert alert-warning show"); }, 3000);
            break;
        }
        default:{
        	x.toggleClass("alert alert-success show");
            setTimeout(function(){ x.toggleClass("alert alert-success show"); }, 3000);
            break;
        }
    }
}
</script>
</body>
</html>