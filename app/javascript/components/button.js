function lockingLock() {
  const lock = document.getElementById("lock");

  function mouseOver(lock) {
    lock.addEventListener("mouseover", (event) => {
    const icon = event.currentTarget.firstChild
    icon.classList.remove("fa-lock-open");
    icon.classList.add("fa-lock");
  })
  };

  function mouseOut(lock) {
    lock.addEventListener("mouseout", (event) => {
    const icon = event.currentTarget.firstChild
    icon.classList.remove("fa-lock");
    icon.classList.add("fa-lock-open");
  })
  };
  mouseOver(lock);
  mouseOut(lock);
}

export { lockingLock };
