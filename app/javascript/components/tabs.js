function tabs() {
  const tabs = document.querySelectorAll('.tab')

  tabs.forEach((tab) =>{
    tab.addEventListener("click", (event) => {
      const futureActiveTab = event.currentTarget;
      const exActiveTabs = document.querySelector('.active')
      if (exActiveTabs) {
        exActiveTabs.classList.remove('active');
        futureActiveTab.classList.add('active');
      } else {
        futureActiveTab.classList.add('active');
      }
    })
  })
}


export { tabs }
