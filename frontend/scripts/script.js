const newsGrid = document.getElementById('newsGrid');
const newsElement = document.querySelectorAll('.new-items');
const article = document.querySelector('.article');
const body = document.querySelector('.body');
const back = document.querySelector('.back');
const loadBtn = document.querySelector('.load-btn');

// Load the latest news to the page in order (last 12 news added to the database)
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
                  <h5 class="card-title text-info">${data[i].title}</h5>
                  <p class="card-text">${data[i].subtitle}</p>
                  <a href="#" class="news-items btn btn-info" id=${data[i].id} onclick="openPage(${data[i]
					.id})">Read more</a>
                </div>
            </div>`;
			}
		}
	});
});

// Load the news article when "Read more" button is clicked
function openPage(id) {
	$.ajax({
		dataType: 'json',
		type: 'GET',
		url: `http://localhost/news-website-backend/view-article.php?id=${id}`,
		success: function(data) {
			article.innerHTML = `
            <span class="material-symbols-outlined back" onclick="quit()">
            arrow_back
            </span>
            <img src="${data[0].image_url}" alt="..." class="article-img pt-4">
            <h1 class="pt-3 text-info">
                ${data[0].title}
            </h1>
            <p class="fw-bold fs-5">By: ${data[0].author}</p>
            <p class="pt-3 margin">
                ${data[0].content}
            </p>`;
		}
	});
	article.classList.remove('d-none');
	body.classList.add('d-none');
	loadBtn.classList.add('d-none');
}
// Go back to the main page when the arrow back svg is clicked
const quit = () => {
	article.classList.add('d-none');
	body.classList.remove('d-none');
	loadBtn.classList.remove('d-none');
};

// Load all the rest of the news from the database
loadBtn.addEventListener('click', () => {
	loadBtn.classList.add('d-none');
	$.ajax({
		dataType: 'json',
		type: 'GET',
		url: 'http://localhost/news-website-backend/load-more.php',
		success: function(data) {
			for (let i in data) {
				newsGrid.innerHTML += `<div class="card" style="width: 18rem;">
                <img src="${data[i].image_url}" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title text-info">${data[i].title}</h5>
                  <p class="card-text">${data[i].subtitle}</p>
                  <a href="#" class="news-items btn btn-info" id=${data[i].id} onclick="openPage(${data[i]
					.id})">Read more</a>
                </div>
            </div>`;
			}
		}
	});
});
