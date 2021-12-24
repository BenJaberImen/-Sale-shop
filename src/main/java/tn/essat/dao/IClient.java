package tn.essat.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tn.essat.model.Client;
@Repository
public interface IClient extends JpaRepository<Client ,Integer> {
public Client findByEmailAndPassword(String email,String pass);

}
