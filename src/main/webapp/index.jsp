<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Calculadora De Bases</title>
</head>
<body>

	<div class="container mt-5 border border-3 border-danger rounded">
		<form method="post" action="<%=request.getContextPath()%>/ServletCalculadora"> 
			<div class="row">
				<input name="display" id="display"  class="form-control border-3 my-3 px-5">
			</div>
			
			<div class="row text-center my-3">
				<div class="col-3">
					<button type="button" class="btn btn-warning" >Base 2</button>
				</div>
				<div class="col-3">
					<button type="button" class="btn btn-warning" >Base 8</button>
				</div>
				<div class="col-3">
					<button type="button" class="btn btn-warning" >Base 16</button>
				</div>
				<div class="col-3">
					<button type="button" class="btn btn-danger" onclick="apagarDisplay()">CE</button>
				</div>
			</div>
			
			<div class="row text-center my-3">
			
				<div class="col-3">
					<button type="button" class="btn btn-secondary" value="7" onclick="mostrarDisplay(this.value)">7</button>
				</div>
				
				<div class="col-3">
					<button type="button" class="btn btn-secondary" value="8" onclick="mostrarDisplay(this.value)">8</button>
				</div>
				
				<div class="col-3">
					<button type="button" class="btn btn-secondary " value="9" onclick="mostrarDisplay(this.value)">9</button>		
				</div>
				
				<div class="col-3">
					<button type="button" class="btn btn-secondary" value="/" onclick="mostrarDisplay(this.value)">/</button>
				</div>
	
			</div>
			
			<div class="row text-center my-3">
				<div class="col-3">
					<button type="button" class="btn btn-secondary" value="4" onclick="mostrarDisplay(this.value)">4</button>
				</div>
				
				<div class="col-3">
					<button type="button" class="btn btn-secondary" value="5" onclick="mostrarDisplay(this.value)">5</button>
				</div>
				
				<div class="col-3">
					<button type="button" class="btn btn-secondary " value="6" onclick="mostrarDisplay(this.value)">6</button>		
				</div>
				
				<div class="col-3">
					<button type="button" class="btn btn-secondary" value="-" onclick="mostrarDisplay(this.value)">-</button>
				</div>
			</div>
			
			<div class="row text-center my-3">
			
				<div class="col-3">
					<button type="button" class="btn btn-secondary" value="1" onclick="mostrarDisplay(this.value)">1</button>
				</div>
				
				<div class="col-3">
					<button type="button" class="btn btn-secondary" value="2" onclick="mostrarDisplay(this.value)">2</button>
				</div>
				
				<div class="col-3">
					<button type="button" class="btn btn-secondary " value="3" onclick="mostrarDisplay(this.value)">3</button>		
				</div>
				
				<div class="col-3">
					<button type="button" class="btn btn-secondary" value="+" onclick="mostrarDisplay(this.value)">+</button>
				</div>
			
			</div>
			
			<div class="row my-3 text-center">
				<div class="col-3">
				</div>
				<div class="col-3">
				</div>
				<div class="col-3">
				</div>
				<div class="col-3">
					<button class="btn btn-primary">=</button>
				</div>
			</div>
		</form>
	</div>
	
	
	<script type="text/javascript">
		function mostrarDisplay(valor) {
			var localDisplay = document.getElementById('display');
			localDisplay.value =  localDisplay.value + valor;
		}
		
		function apagarDisplay() {
			var localDisplay = document.getElementById('display');
			localDisplay.value = localDisplay.value.slice(0, -1);
		}
	</script>
	
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>