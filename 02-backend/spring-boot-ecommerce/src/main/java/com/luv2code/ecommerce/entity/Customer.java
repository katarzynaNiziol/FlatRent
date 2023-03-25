package com.luv2code.ecommerce.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "customer")
@Getter
@Setter
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "email")
    private String email;

    @Column(name = "telephone")
    private String telephone;

    @Column(name = "sex")
    private String sex;

    @Column(name = "birth_date")
    private String birthDate;

    @Column(name = "PESEL")
    private String PESEL;

    @Column(name = "id_card")
    private String idCard;

    @Column(name = "move_in")
    private String moveIn;

    @Column(name = "move_out")
    private String moveOut;

}
