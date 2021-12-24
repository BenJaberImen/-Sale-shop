package tn.essat.controlleur;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import tn.essat.dao.ICategorie;
import tn.essat.dao.IClient;
import tn.essat.dao.ICommande;
import tn.essat.dao.IProduit;
import tn.essat.model.Categorie;
import tn.essat.model.Client;
import tn.essat.model.Commande;
import tn.essat.model.LigneCommande;
import tn.essat.model.LignePanier;
import tn.essat.model.Panier;
import tn.essat.model.Produit;
@Controller
public class AppControlleur {
	@Autowired
	ICategorie dao_cat;
	@Autowired
	IProduit dao_prod;
	@Autowired
	ICommande dao_cde;
	@Autowired
	IClient dao_clt;
	public void setDao_cat(ICategorie dao_cat) {
		this.dao_cat = dao_cat;
	}
	public void setDao_prod(IProduit dao_prod) {
		this.dao_prod = dao_prod;
	}
	
	public void setDao_cde(ICommande dao_cde) {
		this.dao_cde = dao_cde;
	}
	@GetMapping("/home")
	public String fn1 (Model m) {
		List<Produit> prods = dao_prod.findAll();
		List<Categorie> cats = dao_cat.findAll();
		m.addAttribute("prods", prods);
		m.addAttribute("cats", cats);
		return"page1";
}
	
	@GetMapping("/produits/{id}")
	public String fn2(Model m, @PathVariable("id") int x) {
		
		List<Produit> prods=dao_prod.getAllProduitById(x);
		List<Categorie> cats = dao_cat.findAll();
		m.addAttribute("prods", prods);
		m.addAttribute("cats", cats);
		return"page1";
	}
	
	@GetMapping("/addPanier/{id}")
	public String fnt3(Model m , @PathVariable("id") int id , HttpSession session) {
		
		Panier pan=(Panier) session.getAttribute("monpanier");
		if(pan==null){
		
			Panier p = new Panier();
			Produit p1=dao_prod.findOne(id) ;
			
			p.getLignes().add(new LignePanier(p1,1));
			session.setAttribute("monpanier", p);
		}
		else {
			boolean test=false;
			for(LignePanier li:pan.getLignes()) {
				
				if(li.getProd().getId()==id) {
					
					li.setQuantite(li.getQuantite()+1);
					test=true;
					}
				
			}
			if(test==false) {
				
				pan.getLignes().add(new LignePanier(dao_prod.findOne(id),1));
				
			}
			session.setAttribute("monpanier", pan);
		}
		
	return"redirect:/panier";
		
	}
	@GetMapping("/panier")
	
	
public String fn2(Model m) {
		List<Categorie> cats = dao_cat.findAll();
m.addAttribute("cats", cats);
		return"page2";
	}
	
	
	@GetMapping("/commander")
	
public String fnt5(Model m, HttpSession session) {
		
		
		Client clt= (Client) session.getAttribute("clt");
		if(clt==null) {
			
			return"redirect:/connexion";
			
			
		}else {
			
			Commande cde= new Commande();
			cde.setClt(clt);
			cde.setDate_cde("12/11/2021");
			Panier pan=(Panier) session.getAttribute("monpanier");
			for(LignePanier li:pan.getLignes()) {
				
				cde.addLigne(new LigneCommande(li.getProd(),li.getQuantite()));
				
				
			}
			dao_cde.save(cde);
			session.removeAttribute("monpanier");
			return "redirect:/fincde";
		}
		
	}
	@GetMapping("verif")
	
	String fnt9(Model m ,HttpServletRequest request,HttpSession session) {
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		Client clt=dao_clt.findByEmailAndPassword(email, pass);
		if(clt==null) {
			return"redirect:/connexion";
		} else {
			
			session.setAttribute("clt", clt);
			return "redirect:/commander";
			
		}
		
		
		
	}
	@GetMapping("/connexion")
	String fnt6(Model m ) {
		Client clt = new Client();
		return"connexion";
 		
		
		
	}
	
}