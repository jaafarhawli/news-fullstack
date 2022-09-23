const newsGrid = document.getElementById('newsGrid');
const newsElement = document.querySelectorAll('.new-items');
const article = document.querySelector('.article');
const body = document.querySelector('.body');
const back = document.querySelector('.back');

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
                  <p class="card-text">${data[i].subtitle}</p>
                  <a href="#" class="news-items btn btn-warning" id=${data[i].id} onclick="openPage(${data[i]
					.id})">Read more</a>
                </div>
            </div>`;
			}
		}
	});
});

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
            <h1 class="pt-3">
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
}

const quit = () => {
	article.classList.add('d-none');
	body.classList.remove('d-none');
};
