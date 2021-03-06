package mx.unam.ciencias.is.sistemacolaborativo.mapeobd;
// Generated 17/10/2018 11:33:19 AM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

/**
 * Asesorar generated by hbm2java
 */
@Entity
@Table(name="asesorar")
public class Asesorar  implements java.io.Serializable {


    @Id@GeneratedValue(strategy =GenerationType.IDENTITY ) 
    @Column(name="idasesorar")
     private int idasesorar;
    @Column(name="duracion")
     private int duracion;
    @Column(name="costo")
     private double costo;
    @Column(name="comentario")
     private String comentario;
    @Column(name="estado")
     private String estado;
    @Column(name="comentariorespuesta")
     private String comentariorespuesta;
    @Column(name="aceptada")
     private Boolean aceptada;
    @ManyToOne()
    @LazyCollection(LazyCollectionOption.FALSE)
    @JoinColumn(name="fk_id_profesor")
     private Profesor fk_id_profesor;
    @ManyToOne()
    @LazyCollection(LazyCollectionOption.FALSE) 
    @JoinColumn(name="fk_id_alumno")
     private Alumno fk_id_alumno;
    @ManyToOne()
    @LazyCollection(LazyCollectionOption.FALSE)
    @JoinColumn(name="idtema")
     private Tema idtema;
    @ManyToOne()
    @LazyCollection(LazyCollectionOption.FALSE)
    @JoinColumn(name="idhorario")
     private Horario idhorario;

    public Asesorar() {
    }

	
    public Asesorar(int idasesorar, Alumno fk_id_alumno, Profesor fk_id_profesor, Tema idtema, double costo, Boolean aceptada, String comentario, Horario idhorario) {
       this.idasesorar = idasesorar;
       this.fk_id_alumno = fk_id_alumno;
       this.fk_id_profesor = fk_id_profesor;
       this.idtema = idtema;
       this.costo = costo;
       this.aceptada = aceptada;
       this.comentario = comentario;
       this.idhorario = idhorario;
    }
   
    public int getIdasesorar() {
        return this.idasesorar;
    }
    
    public void setIdasesorar(int idasesorar) {
        this.idasesorar = idasesorar;
    }

    public Alumno getAlumno() {
        return this.fk_id_alumno;
    }
    
    public void setAlumno(Alumno fk_id_alumno) {
        this.fk_id_alumno = fk_id_alumno;
    }

    public Profesor getProfesor() {
        return this.fk_id_profesor;
    }
    
    public void setProfesor(Profesor fk_id_profesor) {
        this.fk_id_profesor = fk_id_profesor;
    }

    public Tema getTema() {
        return this.idtema;
    }
    
    public void setTema(Tema idtema) {
        this.idtema = idtema;
    }

    public double getCosto() {
        return this.costo;
    }
    
    public void setCosto(double costo) {
        this.costo = costo;
    }

    
    public Boolean getAceptada() {
        return this.aceptada;
    }
    
    public void setAceptada(Boolean aceptada) {
        this.aceptada = aceptada;
    }

    
    public String getComentario() {
        return this.comentario;
    }
    
    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    
    public Horario getHorario() {
        return this.idhorario;
    }
    
    public void setHorario(Horario idhorario) {
        this.idhorario = idhorario;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public String toString(){
    return Integer.toString(this.getIdasesorar());
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getComentariorespuesta() {
        return comentariorespuesta;
    }

    public void setComentariorespuesta(String comentariorespuesta) {
        this.comentariorespuesta = comentariorespuesta;
    }

    

}


