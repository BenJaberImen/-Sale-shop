package tn.essat.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

public class Commande {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String date_cde;
	@ManyToOne @JoinColumn(name="clt_id")
	private Client clt;
	@OneToMany(cascade=CascadeType.ALL,mappedBy="cde")
	private List<LigneCommande> lignes;
public Commande() {
	this.lignes=new ArrayList<LigneCommande>();
}
public void addLigne(LigneCommande li) {
	//jab ligne commande w gali 7otha fel commande 
	//awel 7aja n9olhaaa hedhii commande w 7othaa fel comande mta3aha
	//bidrectionnel
	li.setCd(this);
	this.lignes.add(li);
}
public Commande(Integer id, String date_cde, Client clt, List<LigneCommande> lignes) {
	super();
	this.id = id;
	this.date_cde = date_cde;
	this.clt = clt;
	this.lignes = lignes;
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getDate_cde() {
	return date_cde;
}
public void setDate_cde(String date_cde) {
	this.date_cde = date_cde;
}
public Client getClt() {
	return clt;
}
public void setClt(Client clt) {
	this.clt = clt;
}
public List<LigneCommande> getLignes() {
	return lignes;
}
public void setLignes(List<LigneCommande> lignes) {
	this.lignes = lignes;
}


}
