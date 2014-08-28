package pl.altkom.magazyn.controllers;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pl.altkom.magazyn.dao.MagazynDao;
import pl.altkom.magazyn.model.Towar;

@Controller
public class MagazynController {

    @Autowired
    private MagazynDao md;

    @RequestMapping(value = "/magazyn", method = RequestMethod.GET)
    public String magazyn(Locale locale, Model model, HttpServletRequest request) {
        boolean zmiana = false;
        int id = 0;

        if (zmiana == false) {
            model.addAttribute("magazyn", md.getAllSortedTowar(0, ""));
        }

        if ((request.getParameter("id") != null)
                && (request.getParameter("action") != null)) {
            if (request.getParameter("action").equals("delete")) {
                md.removeTowar(Integer.parseInt(request.getParameter("id")));
            }
            if (request.getParameter("action").equals("update")) {
                zmiana = true;
                id = Integer.parseInt(request.getParameter("id"));
                model.addAttribute("towar", md.getTowar(id));
            }

            if (request.getParameter("action").equals("text")) {
                zmiana = true;

                model.addAttribute("magazyn", md.getFiltr((request.getParameter("id"))));

            }

        }
//        
        if (request.getParameter("action") != null && request.getParameter("action").equals("sort")) {
            System.out.println("2");
            zmiana = true;

            model.addAttribute("magazyn", md.getSortedByKategory((request.getParameter("sortBy"))));
        }
//          } else {
//            
//        }

        model.addAttribute(new Towar());
        return "magazyn";
    }

    @RequestMapping(value = "/magazyn", method = RequestMethod.POST)
    public String magazynDodaj(Locale locale, @ModelAttribute Towar towar,
            Model model) {

        md.addTowar(towar);
        model.addAttribute("magazyn", md.getAllSortedTowar(0, ""));

        model.addAttribute(new Towar());
        return "magazyn";
    }

    @RequestMapping(value = "/magazynzmien", method = RequestMethod.GET)
    public String magazynDodaj(HttpServletRequest request, Model model) {
        int id = Integer.parseInt(request.getParameter("id"));
        model.addAttribute(md.getTowar(id));
        return "magazynzmien";
    }

    @RequestMapping(value = "/magazynzmien", method = RequestMethod.POST)
    public String magazynDodaj(@ModelAttribute Towar towar, Model model) {
        md.updateTowar(towar);
        model.addAttribute(new Towar());
        return "home";
    }

}
