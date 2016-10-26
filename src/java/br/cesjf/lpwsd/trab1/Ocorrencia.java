package br.cesjf.lpwsd.trab1;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;

@Entity
public class Ocorrencia  implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id; 
    private int id_aluno; 
    private int id_professor;
    private float nota;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date data_ocorrencia = new Date();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_aluno() {
        return id_aluno;
    }

    public void setId_aluno(int id_aluno) {
        this.id_aluno = id_aluno;
    }

    public int getId_professor() {
        return id_professor;
    }

    public void setId_professor(int id_professor) {
        this.id_professor = id_professor;
    }

    public float getNota() {
        return nota;
    }

    public void setNota(float nota) {
        this.nota = nota;
    }

    public Date getData_ocorrencia() {
        return data_ocorrencia;
    }

    public void setData_ocorrencia(Date data_ocorrencia) {
        this.data_ocorrencia = data_ocorrencia;
    }

    @Override
    public String toString() {
        return "ocorrencia{" + "id=" + id + ", id_aluno=" + id_aluno + ", id_professor=" + id_professor + ", nota=" + nota + ", data_ocorrencia=" + data_ocorrencia + '}';
    }    
}
