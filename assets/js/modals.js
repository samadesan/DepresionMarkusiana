function openModal(imgElement) {
    const modal = document.getElementById("customModal");
    const img = document.getElementById("imgModal");
    const title = document.getElementById("titleModal");
    const description = document.getElementById("descModal");

    if (modal && img && title && description) {
        img.src = imgElement.src;
        title.innerText = imgElement.getAttribute("data-nombre");
        description.innerText = imgElement.getAttribute("data-desc");

        modal.style.display = "flex";
        document.body.style.overflow = "hidden";
    } else {
        // para desarrolladores
        console.error("Faltan elementos del modal en el HTML");
    }
}

function closeModal() {
    const modal = document.getElementById("customModal");
    if (modal) {
        modal.style.display = "none";
        document.body.style.overflow = "auto";
    }
}

document.addEventListener('keydown', function(event) {
    if (event.key === "Escape") closeModal();
});