function mouseOver(lock) {
  lock.addEventListener("mouseover", (event) => {
    lock.classList.add('hidden');
    const lockIcon = lock.querySelector('i');
    const animation = lock.parentNode.querySelector('.supplier-lock-animation');
    const animationIcon = animation.querySelector('i');
    animation.classList.remove('hidden');
    if (lockIcon.classList.contains("fa-lock-open")) {
      animationIcon.classList.remove("fa-lock-open");
      animationIcon.classList.add("fa-lock");
    } else {
      animationIcon.classList.remove("fa-lock");
      animationIcon.classList.add("fa-lock-open");
    }
  })
};
function mouseOut(animationLock) {
  animationLock.addEventListener("mouseout", (event) => {
    animationLock.classList.add('hidden');
    const lock = animationLock.parentNode.querySelector('.supplier-lock');
    lock.classList.remove('hidden');
  });
};

function clickingLock(animationLock) {
  animationLock.addEventListener("click", (event) => {
    const animationIcon = animationLock.querySelector('i');
    const lock = animationLock.parentNode.querySelector('.supplier-lock');
    const lockIcon = lock.querySelector('i');
    if (animationIcon.classList.contains("fa-lock-open")) {
      lockIcon.classList.add("fa-lock-open");
      lockIcon.classList.remove("fa-lock");
    } else {
      lockIcon.classList.add("fa-lock");
      lockIcon.classList.remove("fa-lock-open");
    }
  });
};

// function onlyOneLock() {
//   const locked = document.querySelector(".fa-lock")
//   console.log(locked);
//   if (locked) {
//     const locks = document.querySelectorAll(".supplier-lock");
//     locks.forEach((lock) => {
//       lock.classList.add('hidden');
//     })
//     const animationLocks = document.querySelectorAll(".supplier-lock-animation");
//     animationLocks.forEach((animationLock) => {
//       animationLock.classList.add('hidden');
//     })
//   }
// }

function lockingLock() {
  const locks = document.querySelectorAll(".supplier-lock");
  if (locks) {
    locks.forEach((lock) => {
      mouseOver(lock);
    })
  }
  const animationLocks = document.querySelectorAll(".supplier-lock-animation");
  if (animationLocks) {
    animationLocks.forEach((animationLock) => {
      mouseOut(animationLock);
      clickingLock(animationLock);
    })
  }
  // onlyOneLock();
}

export { lockingLock };
