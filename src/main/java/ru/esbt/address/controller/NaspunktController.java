package ru.esbt.address.controller;

import java.util.Collections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;
import java.util.Set;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import ru.esbt.address.domain.Naspunkt;
import ru.esbt.address.repository.DataRepositoryImpl;
import ru.esbt.address.service.DataService;
/**
 *
 * @author ДНС
 */
@RestController
//@RequestMapping(value = "/naspunkt")
public class NaspunktController {


    @Autowired
    @Qualifier("dataService")
    private DataService dataService;
   /* DataRepositoryImpl naspunktRepository;

    @RequestMapping(method = RequestMethod.GET)
    public List<Naspunkt> getAll() {
        return naspunktRepository.getData();
    }*/
    @RequestMapping(value = "/naspunkt", method = RequestMethod.GET)
    public ModelAndView getRandomData() throws RestException {
        try {
            List<Naspunkt> result = dataService.getRandomData();
            //Set<String> result = dataService.getRandomData();
            return new ModelAndView("naspunktpage", Collections.singletonMap("naspunkt", result));
        } catch (Exception e) {
            throw new RestException(e);
        }
    }
}
    
