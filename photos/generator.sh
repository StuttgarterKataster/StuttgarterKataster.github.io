#!/bin/bash

for i in {2..298} # HIER KANNST DU AENDERN
do
  # create HTML file with filename "photo<i>.html"
  echo '<!DOCTYPE html>
<html>
<head>
	<title>Photo '"$i"'</title>
	<style>
		body {
			background-color: #FFFFFF;
			font-family: Dejavu Sans Mono, sans-serif;
			text-align: center;
			margin: 0;
			padding: 0;
		}
		.photo {
			width: 100%;
			max-width: 800px;
			margin: 20px auto;
		}
		.description {
			font-size: 18px;
			font-weight: bold;
			margin: 20px 0;
			color: #000000;
		}
		.back-button {
			display: block;
			position: absolute;
			top: 0;
			left: 0;
			margin: 20px;
			color: #000000;
			border: none;
			padding: 10px 20px;
			font-size: 16px;
			cursor: pointer;
			text-decoration: none;
		}
		.back-arrow {
			display: inline-block;
			vertical-align: middle;
			margin-right: 10px;
			font-size: 24px;
		}
		.back-button:hover {
			color: #000000;
			text-decoration: underline;
		}
		
		/* Additional styles for the background color toggle */
		.toggle-button {
			display: block;
			position: absolute;
			top: 0;
			right: 0;
			margin: 20px;
			color: #000000;
			border: none;
			padding: 10px 20px;
			font-size: 16px;
			cursor: pointer;
			text-decoration: none;
			background-color: #FFFFFF;
		}
		.toggle-button:hover {
			color: #000000;
			text-decoration: underline;
		}
		
		/* Additional styles for dark mode */
		body.dark {
			background-color: #000000;
		}
		body.dark .description {
			color: #FFFFFF;
		}
		body.dark .back-button {
			color: #FFFFFF;
		}
		body.dark .back-button:hover {
			color: #FFFFFF;
		}
		body.dark .toggle-button {
			color: #FFFFFF;
			background-color: #000000;
		}
		body.dark .toggle-button:hover {
			color: #FFFFFF;
		}
	</style>
</head>
<body>
	<button class="toggle-button" onclick="toggleBackground()">Schwarz</button>
	
	<a href="../index.html" class="back-button"><span class="back-arrow">&lt;</span>BACK</a>
	
	<img src="files/photo'"$i"'.png" alt="Photo '"$i"'" class="photo">
	
	<! -- HIER KANNST DU AENDERN  -->
	<div class="description">
		<p> <! --schreib deine Beschreibung hier  --> </p> 
	</div>
	<! -- BIS HIER   -->
	
	<script>
		// Function to toggle background color
		function toggleBackground() {
			const body = document.querySelector("body");
			const toggleButton = document.querySelector(".toggle-button");
			
			if (body.classList.contains("dark")) {
				body.classList.remove("dark");
				toggleButton.innerText = "schwarz";
			} else {
				body.classList.add("dark");
				toggleButton.innerText = "Weiß";
			}
		}
	</script>
</body>
</html>
' > photo"$i".html

done
