import React from "react";
import Navbar from "../components/Navbar/navbar";
import Footer from "../components/Footer/footer";
import FreelancreIntro from "../components/Freelancre-intro/freelancre-intro";
import Blogs2 from "../components/blogs/Blogs2/blogs2";
import AboutUs from "../components/About-us/about-us";
import LightTheme from "../layouts/Light";

const Homepage = () => {
  const navbarRef = React.useRef(null);
  const logoRef = React.useRef(null);

  React.useEffect(() => {
    var navbar = navbarRef.current;
    if (window.pageYOffset > 300) {
      navbar.classList.add("nav-scroll");
    } else {
      navbar.classList.remove("nav-scroll");
    }
    window.addEventListener("scroll", () => {
      if (window.pageYOffset > 300) {
        navbar.classList.add("nav-scroll");
      } else {
        navbar.classList.remove("nav-scroll");
      }
    });
  }, [navbarRef]);
  return (
    <LightTheme mobileappstyle>
      <Navbar nr={navbarRef} lr={logoRef} theme="themeL" />
      <FreelancreIntro />
      <AboutUs />
      <Blogs2 />
      <Footer />
    </LightTheme>
  );
};

export default Homepage;
