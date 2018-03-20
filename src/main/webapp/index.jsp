<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sebastians Lego</title>
    </head>
	
    <body>
	
	

        <div class="jumbotron">
            <h1>Welcome to Sebastians LEGO Store</h1> 
            <p>lego is the most popular toy and is entertaining for both kids and adults buy your next lego house here</p> 
        </div>
        
        <div class="container-fluid">
                <p>please login</p>
        </div>

        <div class="col-sm-6"></div><form name="login" action="FrontController" method="POST">
				<input type="hidden" name="command" value="login">
                <div class="form-group">
                    <label for="email">Email address:</label>
                    <input type="text" name="email" value="someone@nowhere.com">
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" name="password" value="sesam">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
        
        <div class="container">
                <p>or create new user</p>
        </div>
		
        <div class="col-sm-6"></div><form name="register" action="FrontController" method="POST">
				 <input type="hidden" name="command" value="register">
                <div class="form-group">
                    <label for="username">username:</label>
                    <input type="text" name="email" value="someone@nowhere.com">
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" name="password1" value="sesam">
                </div>
				   <div class="form-group">
                    <label for="password"> enter Password again:</label>
                    <input type="password" name="password2" value="sesam">
                </div>

                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
		        <% String error = (String) request.getAttribute( "error");
           if ( error != null) { %>
           <H2>Error!!</h2>
           <p><%= error %>
        <% }
        %>
    </body>
</html>
