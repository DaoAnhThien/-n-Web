const heart= document.querySelectorAll(".heart");
const animationHeart= document.querySelectorAll(".animation-heart");
let num=heart.length;

for(let i=0;i<num;i++)
{
heart[i].addEventListener('click',()=>{
    animationHeart[i].classList.add('animation');
    heart[i].classList.add('fill-color');
});

animationHeart[i].addEventListener('click',()=>{
    animationHeart[i].classList.remove('animation');
    heart.classList[i].remove('fill-color');
})
}
