package be.ttime.modules.foo.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "foo_specific_data")
public class Foo implements Serializable {

    @Id
    @GeneratedValue
    private Long id;
    @Column
    private String foo;

    public Foo() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(final Long id) {
        this.id = id;
    }

    public String getFoo() {
        return foo;
    }

    public void setFoo(final String foo) {
        this.foo = foo;
    }

}
