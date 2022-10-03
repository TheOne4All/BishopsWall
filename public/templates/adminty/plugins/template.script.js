/**
 *
 * JavaScript Library responsible for Managing the Theme Origin Event Dynamics
 *
 * @version:       1.5.20
 * @package:       Theme Origin StyleSheet
 * @author:        Jencube Team
 * @license:       http://opensource.org/licenses/gpl-license.php
 *                 GNU General Public License (GPL)
 * @copyright:     Copyright (c) 2013 - 2020 Jencube
 * @github:        @deusex0 & @TheOne4All
 * @filesource:    origin/plugins/template.script.js
 *
 **/

function TemplateOrigin() {
  // Default Parameters
  this.default = function () {
    this.version = "1.5.20";
    this.author = "Jencube Team";
    this.support = "support@jencube.net";
    this.documentBody = document.querySelector("body");
    this.preLoader();
    this.setUserOS();
    this.setUserAgent();
  };

  // Get user Operating System
  this.setUserOS = function () {
    let OSName = "";
    if (navigator.appVersion.indexOf("Win") != -1) OSName = "windows";
    if (navigator.appVersion.indexOf("Mac") != -1) OSName = "mac";
    if (navigator.appVersion.indexOf("X11") != -1) OSName = "unix";
    if (navigator.appVersion.indexOf("Linux") != -1) OSName = "linux";
    this.documentBody.classList.add(OSName);
  };

  // Get User Agent or Device Platform
  this.setUserAgent = function () {
    if (
      navigator.userAgent.match(
        /Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile/i
      )
    ) {
      this.documentBody.classList.add("Mobile");
    } else {
      this.documentBody.classList.add("Desktop");
      if (navigator.userAgent.match(/MSIE 9.0/)) {
        this.documentBody.classList.add("IE9");
      }
    }
  };

  // Theme Origin Pre-Loader
  this.preLoader = function () {
    this.themeManager();
    document.body.classList.add("pace-running");
    let startTime = Date.now(),
      loadProgress = 1,
      loadElem = document.createElement("div");
    loadElem.className = "pace pace-active";
    loadElem.innerHTML =
      "<div class='pace-progress " +
      this.themePreloader +
      "' data-progress-text=" +
      loadProgress +
      "'%' data-progress='" +
      loadProgress +
      "' style='transform: translate3d(" +
      loadProgress +
      "%, 0px, 0px);'><div class='pace-progress-inner'></div></div><div class='pace-activity " +
      this.themePreloader +
      "'></div>";
    let loadProgressElem = loadElem.querySelector(".pace-progress"),
      id = setInterval(initPreLoader, 10);

    function pageLoadTime() {
      let pageLoadTimeStamp = Date.now(),
        loadTime = (pageLoadTimeStamp - startTime) / 1e3,
        t = "Page loaded: " + loadTime + " seconds.";
      console.log(t);
    }

    function initPreLoader() {
      if (document.readyState == "interactive") {
        if (loadProgress <= 35) {
          frameLoad(loadProgress);
          loadProgress++;
        } else {
          loadProgress = 35;
        }
        // console.log("State is: " + document.readyState);
      }

      document.addEventListener("readystatechange", function () {
        if (document.readyState == "complete") {
          if (loadProgress <= 78) {
            frameLoad(loadProgress);
            loadProgress++;
          } else {
            loadProgress = 78;
          }
          // console.log("State is: " + document.readyState);
        }
      });

      if (loadProgress <= 100) {
        frameLoad(loadProgress);
        loadProgress++;
      } else {
        loadProgress = 100;
        setTimeout(frameHalt, 100);
      }

      window.onload = function () {
        pageLoadTime();
      };
    }

    function frameLoad(counter) {
      loadProgressElem.setAttribute("data-progress", counter);
      loadProgressElem.setAttribute("data-progress-text", counter);
      loadProgressElem.style.transform =
        "translate3d(" + counter + "%, 0px, 0px)";
      document.body.insertBefore(loadElem, document.body.firstChild);
      // console.log(counter);
    }

    function frameHalt() {
      clearInterval(id);
      if (document.body.classList.contains("pace-running")) {
        document.body.classList.remove("pace-running"),
          (document.body.className += " pace-done");
      }
      if (loadElem.classList.contains("pace-active")) {
        loadElem.classList.remove("pace-active"),
          (loadElem.className += " pace-inactive");
      }
      // console.log(loadElem);
    }
  };

  // Theme Color Manager
  this.themeManager = function () {
    if (document.getElementById("custom-theme")) {
      this.themePreloader = document
        .getElementById("theme-preloader")
        .getAttribute("data-color");
      this.themeHeader = document
        .getElementById("theme-header")
        .getAttribute("data-color");
      this.themeSidebarHeader = document
        .getElementById("theme-sidebar-header")
        .getAttribute("data-color");
      this.themeSidebarMenu = document
        .getElementById("theme-sidebar-menu")
        .getAttribute("data-color");
      this.themeSidebarMenuIcon = document
        .getElementById("theme-sidebar-menu-icon")
        .getAttribute("data-color");
      this.themeActiveSidebarMenuIcon = document
        .getElementById("theme-active-sidebar-menu-icon")
        .getAttribute("data-color");
      this.themeSidebarMenuSubmenu = document
        .getElementById("theme-sidebar-menu-submenu")
        .getAttribute("data-color");
      this.themeSidebarMenuSubmenuIcon = document
        .getElementById("theme-sidebar-menu-submenu-icon")
        .getAttribute("data-color");
      this.themeActiveSidebarMenuSubmenuIcon = document
        .getElementById("theme-active-sidebar-menu-submenu-icon")
        .getAttribute("data-color");
      this.themeBreadcrumbItem = document
        .getElementById("theme-breadcrumb-item")
        .getAttribute("data-color");
      this.themeButton = document
        .getElementById("theme-button")
        .getAttribute("data-color");

      // Change top-header style
      if (document.querySelector("div.header")) {
        if (this.themeHeader != "") {
          document.querySelector("div.header").style.color = "#FFFFFF";
          let hrefElement = document.querySelectorAll(".header a");
          for (let index = 0; index < hrefElement.length; index++) {
            hrefElement[index].classList.add("text-white");
          }
          document.querySelector("div.header").classList.add(this.themeHeader);
        }
      }

      // Change sidebar-header style
      if (document.querySelector(".page-sidebar .sidebar-header")) {
        document
          .querySelector(".page-sidebar .sidebar-header")
          .classList.add(this.themeSidebarHeader);
      }

      // Change sidebar-Menu style
      if (document.querySelector(".page-sidebar .sidebar-menu")) {
        document
          .querySelector(".page-sidebar .sidebar-menu")
          .classList.add(this.themeSidebarMenu);
      }

      // Change sidebar-menu-icon style
      if (
        document.querySelectorAll(
          ".page-sidebar .sidebar-menu .menu-items > li > span.icon-thumbnail"
        )
      ) {
        let iconElement = document.querySelectorAll(
          ".page-sidebar .sidebar-menu .menu-items > li > span.icon-thumbnail"
        );
        for (let index = 0; index < iconElement.length; index++) {
          iconElement[index].classList.add(this.themeSidebarMenuIcon);
        }
      }

      // Change sidebar-Menu submenu style
      if (
        document.querySelectorAll(
          ".page-sidebar .sidebar-menu .menu-items li ul.sub-menu"
        )
      ) {
        let submenuElement = document.querySelectorAll(
          ".page-sidebar .sidebar-menu .menu-items li ul.sub-menu"
        );
        for (let index = 0; index < submenuElement.length; index++) {
          submenuElement[index].classList.add(this.themeSidebarMenuSubmenu);
          for (
            let i = 0;
            i < submenuElement[index].querySelectorAll("li").length;
            i++
          ) {
            submenuElement[index]
              .querySelectorAll("li > .icon-thumbnail")
              [i].classList.add(this.themeSidebarMenuSubmenuIcon);
          }
        }
      }

      // Change active bread-crumb style
      if (document.querySelector(".breadcrumb > .breadcrumb-item.active")) {
        document
          .querySelector(".breadcrumb > .breadcrumb-item.active")
          .classList.add(this.themeBreadcrumbItem);
      }

      // Change button style
      if (document.querySelectorAll(".btn-cons")) {
        let btnElement = document.querySelectorAll(".btn-cons");
        for (let index = 0; index < btnElement.length; index++) {
          btnElement[index].classList.add(this.themeButton);
        }
      }
    }
  };

  // Check URL if it Exist
  this.checkURL = function (url) {
    let request;
    if (window.XMLHttpRequest) {
      request = new XMLHttpRequest();
    } else {
      request = new ActiveXObject("Microsoft.XMLHTTP");
    }
    request.open("HEAD", url, true);
    request.send();
    // console.log(request.status);
  };

  // Toggle between displaying full left menu-sidebar and icon menu display
  this.toggleMenuBar = function () {
    if (document.querySelector("[data-toggle-pin='sidebar']")) {
      let iconThumbnail = document.querySelectorAll(
        ".page-sidebar .sidebar-menu .menu-items > li > a > .icon-thumbnail"
      );
      document
        .querySelector("[data-toggle-pin='sidebar']")
        .addEventListener("click", function () {
          const menuClassList = document.querySelector("body");
          if (menuClassList.classList.contains("menu-pin")) {
            document.getElementById("appMenu").classList.remove("show");
            menuClassList.classList.remove("menu-pin");
            menuClassList.classList.add("menu-unpin");
            if (iconThumbnail) {
              for (let i = 0; i < iconThumbnail.length; i++) {
                iconThumbnail[i].style.left = "unset";
                iconThumbnail[i].style.right = 0;
                iconThumbnail[i].style.position = "absolute";
              }
            }
          } else {
            menuClassList.classList.remove("menu-unpin");
            menuClassList.classList.add("menu-pin");
            if (iconThumbnail) {
              for (let i = 0; i < iconThumbnail.length; i++) {
                iconThumbnail[i].style.right = "unset";
                iconThumbnail[i].style.left = 0;
                iconThumbnail[i].style.position = "relative";
              }
            }
          }
        });
    }
  };

  // Toggle between displaying Add-on Panel and left menu-sidebar
  this.toggleAddonPanel = function () {
    if (document.querySelector("[data-pages-toggle='appMenu']")) {
      document
        .querySelector("[data-pages-toggle='appMenu']")
        .addEventListener("click", function () {
          const addonClassList = document.getElementById("appMenu");
          const querySelectorResult = document.querySelector(
            ".page-sidebar .sidebar-header .sidebar-slide-toggle i"
          );
          if (addonClassList.classList.contains("show")) {
            addonClassList.classList.remove("show");
            querySelectorResult.classList.remove("icon-chevron-down");
            querySelectorResult.classList.add("icon-chevron-up");
          } else {
            addonClassList.classList.add("show");
            querySelectorResult.classList.remove("icon-chevron-up");
            querySelectorResult.classList.add("icon-chevron-down");
          }
        });
    }
  };

  // Toggle between SHOW or HIDE Mobile left Menu-Sidebar
  this.toggleMobileMenuBar = function () {
    if (document.querySelector(".header [data-toggle='sidebar']")) {
      document
        .querySelector(".header [data-toggle='sidebar']")
        .addEventListener("click", function () {
          const mobileMenuClassList = document.querySelector(
            "body nav.page-sidebar"
          );
          const menuClassList = document.querySelector("body");
          if (menuClassList.classList.contains("menu-unpin")) {
            menuClassList.classList.remove("menu-unpin");
            menuClassList.classList.add("menu-pin");
          }
          if (mobileMenuClassList.classList.contains("visible")) {
            menuClassList.classList.remove("sidebar-open");
            mobileMenuClassList.classList.remove("visible");
          } else {
            menuClassList.classList.add("sidebar-open");
            mobileMenuClassList.classList.add("visible");
          }
        });
    }
  };

  this.toggleProfileDropDown = function () {
    if (document.querySelector(".profile-dropdown-toggle")) {
      document
        .querySelector(".profile-dropdown-toggle")
        .addEventListener("click", function () {
          const querySelectorResult = document.querySelector(
            ".header .dropdown"
          );
          const querySelectorResult1 = document.querySelector(
            ".header .profile-dropdown"
          );
          if (querySelectorResult.classList.contains("show")) {
            querySelectorResult.classList.remove("show");
            querySelectorResult1.classList.remove("show");
          } else {
            querySelectorResult.classList.add("show");
            querySelectorResult1.classList.add("show");
            querySelectorResult1.style.position = "absolute";
            querySelectorResult1.style.transform =
              "translate3d(-94px, 39px, 0px)";
            querySelectorResult1.style.top = "0";
            querySelectorResult1.style.left = "0";
          }
        });
    }
  };

  // Slide IN and OUT quick-view right panel
  this.toggleQuickView = function () {
    if (document.querySelector("[data-toggle='quickview']")) {
      let quickViewTabs = document.querySelectorAll(
        "#quickview > ul.nav-tabs li"
      );

      //Slide In Quick-View Right Panel
      document
        .querySelector("[data-toggle='quickview']")
        .addEventListener("click", function () {
          document
            .querySelector("body [data-pages='quickview']")
            .classList.add("open");
        });

      //Slide Out Quick-View Right Panel
      document
        .querySelector("[data-toggle='quickview'].quickview-toggle")
        .addEventListener("click", function () {
          document
            .querySelector("body [data-pages='quickview']")
            .classList.remove("open");
        });
    }
  };

  // Toggle between Tabs
  this.toggleTabs = function () {
    if (document.querySelectorAll(".nav-tabs")) {
      // Get all Navigation Tabs
      let tabCount = document.querySelectorAll(".nav-tabs");
      for (let i = 0; i < tabCount.length; i++) {
        // For each  Navigation Tabs, Get all links
        for (
          let j = 0;
          j < tabCount[i].querySelectorAll("li > a").length;
          j++
        ) {
          // Onclick event handler of link
          tabCount[i]
            .querySelectorAll("li > a")
            [j].addEventListener("click", function () {
              // Get link of Clicked Tab
              let clickedTab = getActiveTabHref(
                tabCount[i].querySelectorAll("li > a")[j],
                tabCount[i].querySelectorAll("li > a")[j]
              );

              // Remove Active classes
              tabCount[i].querySelectorAll("li > a").forEach((element) => {
                let activeTab = getActiveTabHref(element, element);
                document
                  .querySelector(".tab-content #" + activeTab.tabHrefID)
                  .classList.remove("active");
                activeTab.tabHref.classList.remove("active");
                document.getElementsByClassName;
                toggleTabDisplay(activeTab.tabHrefID);
              });
              // Add Active class
              document
                .querySelector(".tab-content #" + clickedTab.tabHrefID)
                .classList.add("active");
              clickedTab.tabHref.classList.add("active");
              toggleTabDisplay(clickedTab.tabHrefID, "show");
            });
        }
      }
    }

    function toggleTabDisplay(classname, action = null) {
      var classElements = document.getElementsByClassName(classname);
      if (classElements != null) {
        for (var i = 0; i < classElements.length; i++) {
          if (action == "show") {
            classElements[i].style.display = "inline-flex";
          } else {
            classElements[i].style.display = "none";
          }
        }
      }
    }

    function getActiveTabHref(cond, assign) {
      let tabHrefID;
      if (cond) {
        if (
          assign.getAttribute("href") == "#" ||
          assign.getAttribute("href") == ""
        ) {
          if (assign.getAttribute("data-target").replace("#", "")) {
            tabHrefID = assign.getAttribute("data-target").replace("#", "");
          } else {
            tabHrefID = assign.getAttribute("data-target");
          }
        } else {
          if (assign.getAttribute("href").replace("#", "")) {
            tabHrefID = assign.getAttribute("href").replace("#", "");
          } else {
            tabHrefID = assign.getAttribute("href");
          }
        }
        return {
          tabHref: assign,
          tabHrefID: tabHrefID,
        };
      } else {
        return false;
      }
    }
  };

  // Toggle between Show and Hide Modal Box
  this.toggleModal = function () {
    if (document.querySelectorAll("[data-toggle='modal']")) {
      // Get all Modal Buttons
      let modalBtns = document.querySelectorAll("[data-toggle='modal']");
      for (let i = 0; i < modalBtns.length; i++) {
        let targetModal = document.querySelector(
          modalBtns[i].getAttribute("data-target")
        );
        // For each  Modal Properties, Display corresponding Divs
        modalBtns[i].addEventListener("click", function () {
          // console.log(targetModal);
          targetModal.classList.add("show");
          targetModal.style.display = "block";
          // if (targetModal.classList.contains("fill-in")) {
          //   targetModal.style.overflow = "hidden";
          // } else {
          //   targetModal.style.overflowY = "auto";
          // }
          document.querySelector("html").style.overflow = "hidden";
        });

        if (targetModal.querySelectorAll(".close, .cancel")) {
          let elementTargetModalArray = targetModal.querySelectorAll(
            ".close, .cancel"
          );
          for (let j = 0; j < elementTargetModalArray.length; j++) {
            elementTargetModalArray[j].addEventListener("click", function () {
              targetModal.classList.remove("show");
              setTimeout(function () {
                targetModal.style.display = "none";
                if (document.querySelectorAll("html .modal-backdrop")) {
                  for (
                    let k = 0;
                    k <
                    document.querySelectorAll("html .modal-backdrop").length;
                    k++
                  ) {
                    document
                      .querySelectorAll("html .modal-backdrop")
                      [k].classList.remove("show");
                    document
                      .querySelectorAll("html .modal-backdrop")
                      [k].remove(
                        document.querySelectorAll("html .modal-backdrop")[k]
                      );
                  }
                }
                document.querySelector("html").style.overflow = "auto";
              }, 300);
            });
          }
        }
      }
    }
  };

  // Left Menu-Sidebar DOM manipulation
  this.menuBarList = function () {
    if (document.querySelector(".page-sidebar .sidebar-menu")) {
      let index = 0,
        activeMenuLi,
        activeSubMenuLi,
        matchHref,
        sideMenuLi = document.querySelectorAll(
          ".page-sidebar .sidebar-menu .menu-items > li"
        ),
        subSideMenu;

      // Compare baseURL with page Load URL to style element
      do {
        activeMenuLi = sideMenuLi[index];

        // Check if List Item have Sub-Menu
        if (activeMenuLi.querySelector("ul.sub-menu")) {
          subSideMenu = activeMenuLi.querySelector("ul.sub-menu");
          for (
            let subIndex = 0;
            subIndex < subSideMenu.querySelectorAll("li").length;
            subIndex++
          ) {
            if (
              document.baseURI.search(
                subSideMenu
                  .querySelectorAll("li > a")
                  [subIndex].getAttribute("href")
              ) != -1
            ) {
              matchHref = subSideMenu.querySelectorAll("li > a")[subIndex].href;
              activeSubMenuLi = subSideMenu.querySelectorAll("li")[subIndex];
            }
          }
        } else {
          matchHref = activeMenuLi.querySelector("a").getAttribute("href");
        }
        index++;
      } while (
        document.baseURI.search(matchHref) == -1 ||
        index < activeMenuLi.length
      );

      // Add Style to active Sub-Menu Element
      if (activeMenuLi.querySelector("ul.sub-menu")) {
        activeMenuLi.querySelector("ul.sub-menu").classList.add("block");
        activeMenuLi.querySelector("span.arrow").classList.add("open");
        activeSubMenuLi
          .querySelector("span.icon-thumbnail")
          .classList.remove(this.themeSidebarMenuSubmenuIcon);
        activeSubMenuLi
          .querySelector("span.icon-thumbnail")
          .classList.add(this.themeActiveSidebarMenuSubmenuIcon);
      }

      // Add Style to active Menu Element
      activeMenuLi.classList.add("active");
      activeMenuLi
        .querySelector("span.icon-thumbnail")
        .classList.remove(this.themeSidebarMenuIcon);
      activeMenuLi
        .querySelector("span.icon-thumbnail")
        .classList.add(this.themeActiveSidebarMenuIcon);

      // Check if URL exist
      if (this.checkURL(document.baseURI) == false) {
        this.checkURL(document.baseURI);
      }

      for (let i = 0; i < sideMenuLi.length; i++) {
        // On Click event, style element
        sideMenuLi[i].addEventListener("click", function () {
          // Remove Style from current active Menu and Sub-Menu
          activeMenuLi.classList.remove("active");
          if (activeMenuLi.querySelector("ul")) {
            activeMenuLi.querySelector("ul").classList.remove("block");
            activeMenuLi.querySelector("span.arrow").classList.remove("open");
          }
          // Add Style to current Menu and Sub-Menu
          sideMenuLi[i].classList.add("active");
          if (sideMenuLi[i].querySelector("ul")) {
            sideMenuLi[i].querySelector("ul").classList.add("block");
            sideMenuLi[i].querySelector("span.arrow").classList.add("open");
          }

          activeMenuLi = sideMenuLi[i];
        });
      }
    }
  };

  // Initialize or Fire Template Manager
  this.init = function () {
    this.default();
    this.toggleMenuBar();
    this.toggleAddonPanel();
    this.toggleMobileMenuBar();
    this.menuBarList();
    this.toggleTabs();
    this.toggleModal();
    this.toggleProfileDropDown();
    this.toggleQuickView();
  };
}
const templateOrigin = new TemplateOrigin();
templateOrigin.init();
