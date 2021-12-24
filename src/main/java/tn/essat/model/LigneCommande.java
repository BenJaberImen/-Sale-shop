package tn.essat.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class LigneCommande {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@ManyToOne @JoinColumn(name="prod_id")
private Produit prod ;
private int quantite ;
@ManyToOne @JoinColumn(name="cde_id")
private Commande cd;

public LigneCommande(Integer id, Produit prod, int quantite, Commande cd) {
	super();
	this.id = id;
	this.prod = prod;
	this.quantite = quantite;
	this.cd = cd;
}
public LigneCommande( Produit prod, int quantite) {
	super();

	this.prod = prod;
	this.quantite = quantite;

}
public LigneCommande() {
	super();
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Produit getProd() {
	return prod;
}
public void setProd(Produit prod) {
	this.prod = prod;
}
public int getQuantite() {
	return quantite;
}
public void setQuantite(int quantite) {
	this.quantite = quantite;
}
public Commande getCd() {
	return cd;
}
public void setCd(Commande cd) {
	this.cd = cd;
}

}
