const newsGrid = document.getElementById('newsGrid');

$(function() {
	$.ajax({
		dataType: 'json',
		type: 'GET',
		url: 'http://localhost/news-website-backend/view-news.php',
		success: function(data) {
			for (let i in data) {
				newsGrid.innerHTML += `<div class="card" style="width: 18rem;">
                <img src="${data[i].image_url}" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">${data[i].title}</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-warning" id=${data[i].id}>Read more</a>
                </div>
            </div>`;
			}
		}
	});
});
