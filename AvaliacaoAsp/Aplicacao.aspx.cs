using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AvaliacaoAsp.Code;

namespace AvaliacaoAsp
{
    public partial class Aplicacao : System.Web.UI.Page
    {
        // Instanciação do DbContext Contexto
        Context Contexto = new Context();
        protected void Page_Load(object sender, EventArgs e)
        {
            GvApp.DataBind();
        }

        #region Botões
        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            AddAplicacao(TxtNome.Text, TxtDesc.Text, TxtData.Text, DdlStatus.Text, TxtEmail.Text);
            GvApp.DataBind();
            LimparTextos();
        }
        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            EditAplicacao(TxtNome.Text, TxtDesc.Text, TxtData.Text, DdlStatus.Text, TxtEmail.Text);
            GvApp.DataBind();
            LimparTextos();
        }

        protected void BtnRemove_Click(object sender, EventArgs e)
        {
            RemoveAplicacao();
            GvApp.DataBind();
            LimparTextos();
        }
        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            GvApp.DataBind();
            LimparTextos();
        }
        protected void BtnAtualizar_Click(object sender, EventArgs e)
        {
            GvApp.DataBind();
        }
        #endregion

        #region Métodos

        public void AddAplicacao(string nome, string descricao, string data, string status, string email)
        {
            DateTime dt = DateTime.Parse(data);
            Status st = (Status)Enum.Parse(typeof(Status), status, true);
            Contexto.Aplicacoes.Add(new Code.Aplicacao(nome, descricao, dt, st, email));
            Contexto.SaveChanges();
        }

        public void EditAplicacao(string nome, string descricao, string data, string status, string email)
        {
            int index = int.Parse(LblSelectedIndex.Text);
            var app = Contexto.Aplicacoes.Find(index);
            if (app != null)
            {
                DateTime dt = DateTime.Parse(data);
                Status st = (Status)Enum.Parse(typeof(Status), status, true);
                app.Nome = nome;
                app.Descricao = descricao;
                app.Data = dt;
                app.Status = st;
                app.Email = email;
                Contexto.SaveChanges();
            }
        }

        public void RemoveAplicacao()
        {
            int index = int.Parse(LblSelectedIndex.Text);
            var app = Contexto.Aplicacoes.Find(index);
            if (app != null)
            {
                Contexto.Aplicacoes.Remove(app);
                Contexto.SaveChanges();
            }
        }

        public void LimparTextos()
        {
            TxtNome.Text = "";
            TxtDesc.Text = "";
            TxtData.Text = "";
            DdlStatus.Text = "";
            TxtEmail.Text = "";
            BtnAdd.Visible = true;
            BtnEdit.Visible = false;
            BtnRemove.Visible = false;
            BtnCancelar.Visible = false;
            LblShowIndex.Visible = false;
            LblSelectedIndex.Visible = false;
        }
        protected void GvApp_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GvApp, "Select$" + e.Row.RowIndex);
            }
        }

        //Evento para receber o índice selecionado no GridView
        protected void GvApp_SelectedIndexChanged(object sender, EventArgs e)
        {
            BtnAdd.Visible = false;
            BtnEdit.Visible = true;
            BtnRemove.Visible = true;
            BtnCancelar.Visible = true;
            LblShowIndex.Visible = true;
            LblSelectedIndex.Visible = true;
            LblSelectedIndex.Text = GvApp.SelectedRow.Cells[0].Text;
            var app = Contexto.Aplicacoes.Find(int.Parse(LblSelectedIndex.Text));
            if (app != null)
            {
                TxtNome.Text = app.Nome;
                TxtDesc.Text = app.Descricao;
                TxtData.Text = app.Data.ToString("yyyy-MM-dd");
                DdlStatus.Text = ((int)app.Status).ToString();
                TxtEmail.Text = app.Email;
            }
        }

        #endregion
    }
}