// Create function
const active = () => {

  const navLinks = document.querySelectorAll('.nav-link');
  if (navLinks) {
    navLinks.forEach((navLink) => {



          const currentLocation = location.href;
          const menuItem = document.querySelectorAll('.nav-link');
          const menuLenght = menuItem.length
          for (let i = 0; i < menuLenght; i++){
            if(menuItem[i].href === currentLocation){
            menuItem[i].className = "active"
            };
          };



    });
  };



};

export { active };
