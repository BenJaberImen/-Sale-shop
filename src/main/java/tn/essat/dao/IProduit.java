package tn.essat.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import tn.essat.model.Produit;
@Repository
public interface IProduit extends JpaRepository<Produit, Integer> {
@Query("select p from Produit p  where p.cat.id=?")
public List<Produit> getAllProduitById(Integer id);


public Produit findByDescription(String de);
}
