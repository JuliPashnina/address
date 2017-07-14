package ru.esbt.address.domain;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 *
 * @author ДНС
 */

@Entity
@Table(name = "users")
public class Naspunkt {

    @Id
    @Column(name = "cm_okato")
    private long cmOkato;

    @Column(name = "state")
    private String state;

    @Column(name = "cm_ctext")
    private String cmCtext;

    @Column(name = "cm_socr")
    private String cmSocr;

    @Column(name = "cm_nterr")
    private long cmNterr;

    @Column(name = "cm_poselen")
    private String cmPoselen;

    public long getCmOkato() {
        return cmOkato;
    }

    public Naspunkt setId(long cmOkato) {
        this.cmOkato = cmOkato;
        return this;
    }

    public String getState() {
        return state;
    }

    public Naspunkt setState(String state) {
        this.state = state;
        return this;
    }

    public String getCmCtext() {
        return cmCtext;
    }

    public Naspunkt setName(String cmCtext) {
        this.cmCtext = cmCtext;
        return this;
    }

    public String getCmSocr() {
        return cmSocr;
    }

    public Naspunkt setCmSocr(String cmSocr) {
        this.cmSocr = cmSocr;
        return this;
    }

    public long getCmNterr() {
        return cmNterr;
    }

    public Naspunkt setCmNterr(long cmNterr) {
        this.cmNterr = cmNterr;
        return this;
    }
    public String getCmPoselen() {
        return cmPoselen;
    }

    public Naspunkt setCmPoselen(String cmPoselen) {
        this.cmPoselen = cmPoselen;
        return this;
    }

}