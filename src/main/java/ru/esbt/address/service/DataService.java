package ru.esbt.address.service;

import java.util.Set;
import java.util.List;

import ru.esbt.address.domain.Naspunkt;

/**
 *
 * @author Y.Pashnina
 */
public interface DataService {

    public boolean persist(String problem);

    public List<Naspunkt> getRandomData();

    public Naspunkt get(Long id) ;
}