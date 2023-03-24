using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LivroCaixa2023.Classes;
using LivroCaixa2023.Tabelas;

namespace LivroCaixa2023.Paginas
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            inicializa();

            Usuario.lista.Add(new Usuario("helio.rangel", "12345", "rangel", 'A', "32369280778"));
            //Usuario.lista.Add(new Usuario("ana.maria", "555555", "Maria", 'U', "12369280778"));
            //Usuario.lista.Add(new Usuario("carlos.augusto", "33333", "carlos", 'U', "22369280778"));
            //Usuario.lista.Add(new Usuario("manoel.jayme", "54321", "manoel", 'U', "42369280778"));
            //Usuario.lista.Add(new Usuario("nina.maria", "177777", "nina", 'U', "52369280778"));
            
            Serializa.save(Usuario.lista);
            return;

            if (Usuario.lista.Count == 0)
            {
                Usuario.lista = Serializa.load();
                if (Usuario.lista != null)
                {
                    foreach (Usuario u in Usuario.lista)
                    {
                        Usuario.idRaiz = u.id > Usuario.idRaiz ? u.id : Usuario.idRaiz;
                    }
                }
            }
        }

        private void inicializa()
        {
            lbl_Titulo.Text = "Login";
            lbl_Login.Text = "Login";
            lbl_Senha.Text = "Senha";
            btn_Login.Text = "Login";
        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            Usuario busca = new Usuario(txt_Login.Text, txt_Senha.Text);

            lbl_Resposta.Text = "Não encontrei o usuário: " + txt_Login.Text;
            foreach (Usuario usuario in Usuario.lista)
            {
                if (usuario.usuarioOk(busca))
                {
                    Response.Redirect("CadastroUsuario.aspx", false);
                    Session["usuario"] = usuario;
                    return;
                }
            }
            lbl_Resposta.Text = "Usuário não cadastrado!";
        }
    }
}