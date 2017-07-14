package ru.esbt.address.repository;

import java.util.List;
import java.util.Set;
import ru.esbt.address.domain.Naspunkt;

/**
 *
 * @author ДНС
 */
public interface DataRepository<V extends Naspunkt> {

    List<Naspunkt> getData();

}