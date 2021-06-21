/**
 * 
 */
 const para = document.querySelector("#para");
const taskboxes = document.querySelectorAll(".taskbox");

para.addEventListener('dragstart', dragStart);
para.addEventListener('dragend', dragEnd);

for(const taskbox of taskboxes){
    taskbox.addEventListener("dragover", dragOver);
    taskbox.addEventListener("dragenter", dragEnter);
    taskbox.addEventListener("dragleave", dragLeave);
    taskbox.addEventListener("drop", dragDrop);

}

function dragStart(){
    this.className += " hold"
    setTimeout(() => (this.className = 'invisible'), 0);
    this.parentNode.parentNode.removeChild(this.parentNode.lastChild);
}

function dragEnd(){
    this.className = "para";
}

function dragOver(e){
    e.preventDefault();
}
function dragEnter(){
    this.className += " hovered";
}
function dragLeave(){
    this.className = "taskbox";
}
function dragDrop(){
    this.className = "taskbox";
    this.append(para);
    this.parentElement.append(addDiv());
}

function addDiv(){
	const newDivision = document.createElement("div");
	newDivision.setAttribute("class", "taskbox")
	return newDivision;
	
}


 