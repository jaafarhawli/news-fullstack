const newsGrid = document.getElementById('newsGrid');
const newsElement = document.querySelectorAll('.new-items');
const article = document.querySelector('.article');
const body = document.querySelector('.body');

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
				/* const  = document.getElementById(`${data[i].id}`);
				i.addEventListener('click', () => {
					console.log(i);
				});  */
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
			article.innerHTML = `<img src="${data[0].image_url}" alt="..." class="article-img pt-4">
            <h1 class="pt-3">
                ${data[0].title}
            </h1>
            <p class="pt-3">
                ${data[0].content}
            </p>`;
		}
	});
	article.classList.remove('d-none');
	body.classList.add('d-none');
}

/* newsElement.forEach((card) => card.addEventListener('click', openPage));

function openPage() {
    article.classList.remove('.d-none');
    body.classList.add('.d-none');
    $(function() {
        $.ajax({
            dataType: 'json',
            type: 'GET',
            url: `http://localhost/news-website-backend/view-article.php?=id=${card}`,
            success: function(data) {
                for (let i in data) {
                    newsGrid.innerHTML += `<div class="card" style="width: 18rem;">
                    <img src="${data[i].image_url}" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">${data[i].title}</h5>
                      <p class="card-text">${data[i].subtitle}</p>
                      <a href="#" class="news-items btn btn-warning" id=${data[i].id}>Read more</a>
                    </div>
                </div>`;
                }
            }
        });
    });


    article.innerHTML = `<img src="./images/48899.jpg" alt="..." class="article-img pt-4">
    <h1 class="pt-3">
        Everything you ever need to know about flowers
    </h1>
    <p class="pt-3">
        Ennui single-origin coffee crucifix, irony PBR squid sriracha. Kale chips slow-carb gastropub DIY, wayfarers Williamsburg lo-fi distillery +1 kitsch tofu Marfa beard. Truffaut food truck meh seitan, Etsy Wes Anderson Odd Future. Godard Tumblr lomo Intelligentsia cliche hoodie. Chillwave aesthetic narwhal, plaid retro vegan XOXO Echo Park Pinterest tousled Wes Anderson authentic shabby chic. Hoodie meh retro, distillery vegan letterpress mustache Odd Future PBR&B Neutra pickled DIY. Next level mlkshk ennui fashion axe.
    </p>`

}
 */
