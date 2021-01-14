using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace nsgetwell
{
    public abstract class clscon
    {
        protected SqlConnection con = new SqlConnection();
        public clscon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }
    public interface intcty
    {
        int ctycod { get; set; }

        string ctynam { get; set; }
    }
    public interface intare
    {
        int arecod { get; set; }

        string arenam { get; set; }

        int arectycod { get; set; }

        string arelatlng { get; set; }
    }
    public interface intspc
    {
        int spccod { get; set; }

        string spcnam { get; set; }

        string spcdsc { get; set; }
    }
    public interface intdoc
    {
        string docaddcrd { get; set; }
        int doccod { get; set; }

        string docnam { get; set; }

        int docarecod { get; set; }

        int docspccod { get; set; }

        string docprf { get; set; }

        string docqal { get; set; }

        string docpic { get; set; }

        string docadd { get; set; }

        string docavltim { get; set; }

        string docappphn { get; set; }

        int docusrcod { get; set; }
    }
    public interface intusr
    {
        int usrcod { get; set; }

        string usreml { get; set; }

        string usrpwd { get; set; }

        DateTime usrregdat { get; set; }

        string usrphn { get; set; }

        char usrrol { get; set; }
    }
    public interface intappreq
    {
        int appreqcod { get; set; }

        DateTime appreqdat { get; set; }

        string appreqtim { get; set; }

        int apprequsrcod { get; set; }

        string appreqdsc { get; set; }

        char appreqsts { get; set; }

        int appreqdoccod { get; set; }
    }
    public interface intrev
    {
        int revcod { get; set; }

        int revappreqcod { get; set; }

        DateTime revdat { get; set; }

        string revdsc { get; set; }
        float revscr { get; set; }
    }
    public class clsctyprp : intcty
    {
        private int prvctycod;
        private string prvctynam;
        public int ctycod
        {
            get
            {
                return prvctycod;
            }
            set
            {
                prvctycod = value;
            }
        }
        public string ctynam
        {
            get
            {
                return prvctynam;
            }
            set
            {
                prvctynam = value;
            }
        }

    }
    public class clsareprp : intare
    {
        private int prvarecod;
        private string prvarenam;
        private int prvarectycod;
        private string prvarelatlng;
        public int arecod
        {
            get
            {
                return prvarecod;
            }
            set
            {
                prvarecod = value;
            }
        }
        public string arenam
        {
            get
            {
                return prvarenam;
            }
            set
            {
                prvarenam = value;
            }
        }
        public int arectycod
        {
            get
            {
                return prvarectycod;
            }
            set
            {
                prvarectycod = value;
            }
        }
        public string arelatlng
        {
            get
            {
                return prvarelatlng;
            }
            set
            {
                prvarelatlng = value;
            }
        }

    }
    public class clsspcprp : intspc
    {
        private int prvspccod;
        private string prvspcnam;
        private string prvspcdsc;
        public int spccod
        {
            get
            {
                return prvspccod;
            }
            set
            {
                prvspccod = value;
            }
        }
        public string spcnam
        {
            get
            {
                return prvspcnam;
            }
            set
            {
                prvspcnam = value;
            }
        }
        public string spcdsc
        {
            get
            {
                return prvspcdsc;
            }
            set
            {
                prvspcdsc = value;
            }
        }

    }
    public class clsdocprp : intdoc
    {
        private int prvdoccod;
        private string prvdocnam;
        private int prvdocarecod;
        private int prvdocspccod;
        private string prvdocprf;
        private string prvdocqal;
        private string prvdocpic;
        private string prvdocadd;
        private string prvdocavltim;
        private string prvdocappphn;
        private string prvdocaddcrd;
        private int prvdocusrcod;
        public int doccod
        {
            get
            {
                return prvdoccod;
            }
            set
            {
                prvdoccod = value;
            }
        }
        public string docnam
        {
            get
            {
                return prvdocnam;
            }
            set
            {
                prvdocnam = value;
            }
        }
        public string docaddcrd
        {
            get
            {
                return prvdocaddcrd;
            }
            set
            {
                prvdocaddcrd = value;
            }
        }
        public int docarecod
        {
            get
            {
                return prvdocarecod;
            }
            set
            {
                prvdocarecod = value;
            }
        }
        public int docspccod
        {
            get
            {
                return prvdocspccod;
            }
            set
            {
                prvdocspccod = value;
            }
        }
        public string docprf
        {
            get
            {
                return prvdocprf;
            }
            set
            {
                prvdocprf = value;
            }
        }
        public string docqal
        {
            get
            {
                return prvdocqal;
            }
            set
            {
                prvdocqal = value;
            }
        }
        public string docpic
        {
            get
            {
                return prvdocpic;
            }
            set
            {
                prvdocpic = value;
            }
        }
        public string docadd
        {
            get
            {
                return prvdocadd;
            }
            set
            {
                prvdocadd = value;
            }
        }
        public string docavltim
        {
            get
            {
                return prvdocavltim;
            }
            set
            {
                prvdocavltim = value;
            }
        }
        public string docappphn
        {
            get
            {
                return prvdocappphn;
            }
            set
            {
                prvdocappphn = value;
            }
        }
        public int docusrcod
        {
            get
            {
                return prvdocusrcod;
            }
            set
            {
                prvdocusrcod = value;
            }
        }

    }
    public class clsusrprp : intusr
    {
        private int prvusrcod;
        private string prvusreml;
        private string prvusrpwd;
        private DateTime prvusrregdat;
        private string prvusrphn;
        private char prvusrrol;
        public int usrcod
        {
            get
            {
                return prvusrcod;
            }
            set
            {
                prvusrcod = value;
            }
        }
        public string usreml
        {
            get
            {
                return prvusreml;
            }
            set
            {
                prvusreml = value;
            }
        }
        public string usrpwd
        {
            get
            {
                return prvusrpwd;
            }
            set
            {
                prvusrpwd = value;
            }
        }
        public DateTime usrregdat
        {
            get
            {
                return prvusrregdat;
            }
            set
            {
                prvusrregdat = value;
            }
        }
        public string usrphn
        {
            get
            {
                return prvusrphn;
            }
            set
            {
                prvusrphn = value;
            }
        }
        public char usrrol
        {
            get
            {
                return prvusrrol;
            }
            set
            {
                prvusrrol = value;
            }
        }

    }
    public class clsappreqprp : intappreq
    {
        private int prvappreqcod;
        private DateTime prvappreqdat;
        private string prvappreqtim;
        private int prvapprequsrcod;
        private string prvappreqdsc;
        private char prvappreqsts;
        private int prvappreqdoccod;
        public int appreqcod
        {
            get
            {
                return prvappreqcod;
            }
            set
            {
                prvappreqcod = value;
            }
        }
        public DateTime appreqdat
        {
            get
            {
                return prvappreqdat;
            }
            set
            {
                prvappreqdat = value;
            }
        }
        public string appreqtim
        {
            get
            {
                return prvappreqtim;
            }
            set
            {
                prvappreqtim = value;
            }
        }
        public int apprequsrcod
        {
            get
            {
                return prvapprequsrcod;
            }
            set
            {
                prvapprequsrcod = value;
            }
        }
        public string appreqdsc
        {
            get
            {
                return prvappreqdsc;
            }
            set
            {
                prvappreqdsc = value;
            }
        }
        public char appreqsts
        {
            get
            {
                return prvappreqsts;
            }
            set
            {
                prvappreqsts = value;
            }
        }
        public int appreqdoccod
        {
            get
            {
                return prvappreqdoccod;
            }
            set
            {
                prvappreqdoccod = value;
            }
        }

    }
    public class clsrevprp : intrev
    {
        private int prvrevcod;
        private int prvrevappreqcod;
        private DateTime prvrevdat;
        private string prvrevdsc;
        private float prvrevscr;
        public int revcod
        {
            get
            {
                return prvrevcod;
            }
            set
            {
                prvrevcod = value;
            }
        }
        public int revappreqcod
        {
            get
            {
                return prvrevappreqcod;
            }
            set
            {
                prvrevappreqcod = value;
            }
        }
        public DateTime revdat
        {
            get
            {
                return prvrevdat;
            }
            set
            {
                prvrevdat = value;
            }
        }
        public string revdsc
        {
            get
            {
                return prvrevdsc;
            }
            set
            {
                prvrevdsc = value;
            }
        }
        public float revscr
        {
            get
            {
                return prvrevscr;
            }
            set
            {
                prvrevscr = value;
            }
        }

    }
    public class clscty : clscon
    {
        public void Save_Rec(clsctyprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("inscty", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ctynam", p.ctynam);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Update_Rec(clsctyprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updcty", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ctycod", p.ctycod);
            cmd.Parameters.AddWithValue("@ctynam", p.ctynam);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Delete_Rec(clsctyprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delcty", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ctycod", p.ctycod);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsctyprp> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dspcty", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsctyprp> obj = new List<clsctyprp>();
            while (dr.Read())
            {
                clsctyprp k = new clsctyprp();
                k.ctycod = Convert.ToInt32(dr[0]);
                k.ctynam = dr[1].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsctyprp> Find_Rec(Int32 ctycod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndcty", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ctycod", ctycod);
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsctyprp> obj = new List<clsctyprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsctyprp k = new clsctyprp();
                k.ctycod = Convert.ToInt32(dr[0]);
                k.ctynam = dr[1].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsare : clscon
    {
        public void Save_Rec(clsareprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insare", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@arenam", p.arenam);
            cmd.Parameters.AddWithValue("@arectycod", p.arectycod);
            cmd.Parameters.AddWithValue("@arelatlng", p.arelatlng);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Update_Rec(clsareprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updare", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@arecod", p.arecod);
            cmd.Parameters.AddWithValue("@arenam", p.arenam);
            cmd.Parameters.AddWithValue("@arectycod", p.arectycod);
            cmd.Parameters.AddWithValue("@arelatlng", p.arelatlng);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Delete_Rec(clsareprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delare", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@arecod", p.arecod);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsareprp> Disp_Rec(Int32 ctycod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dspare", con);
            cmd.CommandType = CommandType.StoredProcedure;
 cmd.Parameters.Add("@ctycod", SqlDbType.Int).Value = ctycod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsareprp> obj = new List<clsareprp>();
            while (dr.Read())
            {
                clsareprp k = new clsareprp();
                k.arecod = Convert.ToInt32(dr[0]);
                k.arenam = dr[1].ToString();
                k.arectycod = Convert.ToInt32(dr[2]);
                k.arelatlng = dr[3].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsareprp> Find_Rec(Int32 arecod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndare", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@arecod", arecod);
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsareprp> obj = new List<clsareprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsareprp k = new clsareprp();
                k.arecod = Convert.ToInt32(dr[0]);
                k.arenam = dr[1].ToString();
                k.arectycod = Convert.ToInt32(dr[2]);
                k.arelatlng = dr[3].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsspc : clscon
    {
        public void Save_Rec(clsspcprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insspc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@spcnam", p.spcnam);
            cmd.Parameters.AddWithValue("@spcdsc", p.spcdsc);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Update_Rec(clsspcprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updspc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@spccod", p.spccod);
            cmd.Parameters.AddWithValue("@spcnam", p.spcnam);
            cmd.Parameters.AddWithValue("@spcdsc", p.spcdsc);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Delete_Rec(clsspcprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delspc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@spccod", p.spccod);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsspcprp> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dspspc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsspcprp> obj = new List<clsspcprp>();
            while (dr.Read())
            {
                clsspcprp k = new clsspcprp();
                k.spccod = Convert.ToInt32(dr[0]);
                k.spcnam = dr[1].ToString();
                k.spcdsc = dr[2].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsspcprp> Find_Rec(Int32 spccod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndspc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@spccod", spccod);
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsspcprp> obj = new List<clsspcprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsspcprp k = new clsspcprp();
                k.spccod = Convert.ToInt32(dr[0]);
                k.spcnam = dr[1].ToString();
                k.spcdsc = dr[2].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsdoc : clscon
    {
        public DataSet srcdoc(Int32 arecod,Int32 spccod)
        {
            SqlDataAdapter adp = new SqlDataAdapter("srcdoc", con);
  adp.SelectCommand.CommandType = CommandType.StoredProcedure;
  adp.SelectCommand.Parameters.Add("@arecod", SqlDbType.Int).Value =
                          arecod;
  adp.SelectCommand.Parameters.Add("@spccod", SqlDbType.Int).Value =
                          spccod;
            DataSet ds = new DataSet();
            adp.Fill(ds);
            return ds;
        }

        public void Save_Rec(clsdocprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insdoc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@docnam", p.docnam);
            cmd.Parameters.AddWithValue("@docarecod", p.docarecod);
            cmd.Parameters.AddWithValue("@docspccod", p.docspccod);
            cmd.Parameters.AddWithValue("@docusrcod", p.docusrcod);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Update_Rec(clsdocprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("upddoc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@doccod", p.doccod);
            cmd.Parameters.AddWithValue("@docprf", p.docprf);
            cmd.Parameters.AddWithValue("@docqal", p.docqal);
            cmd.Parameters.AddWithValue("@docpic", p.docpic);
            cmd.Parameters.AddWithValue("@docadd", p.docadd);
            cmd.Parameters.AddWithValue("@docavltim", p.docavltim);
            cmd.Parameters.AddWithValue("@docappphn", p.docappphn);
            cmd.Parameters.AddWithValue("@docaddcrd", p.docaddcrd);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Delete_Rec(clsdocprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("deldoc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@doccod", p.doccod);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsdocprp> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dspdoc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsdocprp> obj = new List<clsdocprp>();
            while (dr.Read())
            {
                clsdocprp k = new clsdocprp();
                k.doccod = Convert.ToInt32(dr[0]);
                k.docnam = dr[1].ToString();
                k.docarecod = Convert.ToInt32(dr[2]);
                k.docspccod = Convert.ToInt32(dr[3]);
                k.docprf = dr[4].ToString();
                k.docqal = dr[5].ToString();
                k.docpic = dr[6].ToString();
                k.docadd = dr[7].ToString();
                k.docavltim = dr[8].ToString();
                k.docappphn = dr[9].ToString();
                k.docusrcod = Convert.ToInt32(dr[10]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsdocprp> Find_Rec(Int32 doccod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fnddoc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@doccod", doccod);
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsdocprp> obj = new List<clsdocprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsdocprp k = new clsdocprp();
                k.doccod = Convert.ToInt32(dr[0]);
                k.docnam = dr[1].ToString();
                k.docarecod = Convert.ToInt32(dr[2]);
                k.docspccod = Convert.ToInt32(dr[3]);
                k.docprf = dr[4].ToString();
                k.docqal = dr[5].ToString();
                k.docpic = dr[6].ToString();
                k.docadd = dr[7].ToString();
                k.docavltim = dr[8].ToString();
                k.docappphn = dr[9].ToString();
                k.docusrcod = Convert.ToInt32(dr[10]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsusr : clscon
    {
        public Int32 logincheck(String eml,String pwd,out char rol)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("logincheck", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@eml", SqlDbType.VarChar, 100).Value = eml;
            cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 100).Value = pwd;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Direction =
                                ParameterDirection.Output;
            cmd.Parameters.Add("@rol", SqlDbType.Char, 1).Direction =
                                ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            Int32 cod = Convert.ToInt32(cmd.Parameters["@cod"].Value);
            rol = Convert.ToChar(cmd.Parameters["@rol"].Value);
            cmd.Dispose();
            con.Close();
            return cod;
        }

        public Int32 Save_Rec(clsusrprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insusr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@usreml", p.usreml);
            cmd.Parameters.AddWithValue("@usrpwd", p.usrpwd);
            cmd.Parameters.AddWithValue("@usrregdat", p.usrregdat);
            cmd.Parameters.AddWithValue("@usrphn", p.usrphn);
            cmd.Parameters.AddWithValue("@usrrol", p.usrrol);
            cmd.Parameters.Add("@r", SqlDbType.Int).Direction = ParameterDirection
                                                            .ReturnValue;
            cmd.ExecuteNonQuery();
            Int32 a = Convert.ToInt32(cmd.Parameters["@r"].Value);
            cmd.Dispose();
            con.Close();
            return a;
        }
        public void Update_Rec(clsusrprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updusr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@usrcod", p.usrcod);
            cmd.Parameters.AddWithValue("@usreml", p.usreml);
            cmd.Parameters.AddWithValue("@usrpwd", p.usrpwd);
            cmd.Parameters.AddWithValue("@usrregdat", p.usrregdat);
            cmd.Parameters.AddWithValue("@usrphn", p.usrphn);
            cmd.Parameters.AddWithValue("@usrrol", p.usrrol);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Delete_Rec(clsusrprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delusr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@usrcod", p.usrcod);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsusrprp> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dspusr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsusrprp> obj = new List<clsusrprp>();
            while (dr.Read())
            {
                clsusrprp k = new clsusrprp();
                k.usrcod = Convert.ToInt32(dr[0]);
                k.usreml = dr[1].ToString();
                k.usrpwd = dr[2].ToString();
                k.usrphn = dr[4].ToString();
                k.usrrol = Convert.ToChar(dr[5]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsusrprp> Find_Rec(Int32 usrcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndusr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@usrcod", usrcod);
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsusrprp> obj = new List<clsusrprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsusrprp k = new clsusrprp();
                k.usrcod = Convert.ToInt32(dr[0]);
                k.usreml = dr[1].ToString();
                k.usrpwd = dr[2].ToString();
                k.usrphn = dr[4].ToString();
                k.usrrol = Convert.ToChar(dr[5]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsappreq : clscon
    {
        public DataSet dspusrapp(Int32 usrcod)
        {
            SqlDataAdapter adp = new SqlDataAdapter("dspusrapp", con);
   adp.SelectCommand.CommandType = CommandType.StoredProcedure;
   adp.SelectCommand.Parameters.Add("@usrcod", SqlDbType.Int).Value = usrcod;
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataSet ds1 = new DataSet();
            DataTable tb = new DataTable();
            tb.Columns.Add(new DataColumn("det", Type.GetType("System.String")));
            tb.Columns.Add(new DataColumn("cod", Type.GetType("System.String")));
            ds1.Tables.Add(tb);
            for (Int32 i=0;i<ds.Tables[0].Rows.Count;i++)
            {
                DataRow r = ds1.Tables[0].NewRow();
                r[0] = ds.Tables[0].Rows[i][0] + "," +
                    Convert.ToDateTime(ds.Tables[0].Rows[i][1]).ToShortDateString() +
                    "," + ds.Tables[0].Rows[i][2];
                r[1] = ds.Tables[0].Rows[i][3];
                ds1.Tables[0].Rows.Add(r);
            }
            return ds1;
        }


        public DataSet dspappreq(Int32 doccod)
        {
            SqlDataAdapter adp = new SqlDataAdapter("dspappreq", con);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.Add("@doccod", SqlDbType.Int)
                .Value = doccod;
            DataSet ds = new DataSet();
            adp.Fill(ds);
            return ds;
        }

        public void Save_Rec(clsappreqprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insappreq", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@appreqdat", p.appreqdat);
            cmd.Parameters.AddWithValue("@appreqtim", p.appreqtim);
            cmd.Parameters.AddWithValue("@apprequsrcod", p.apprequsrcod);
            cmd.Parameters.AddWithValue("@appreqdsc", p.appreqdsc);
            cmd.Parameters.AddWithValue("@appreqsts", p.appreqsts);
            cmd.Parameters.AddWithValue("@appreqdoccod", p.appreqdoccod);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Update_Rec(clsappreqprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updappreq", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@appreqcod", p.appreqcod);
            cmd.Parameters.AddWithValue("@appreqsts", p.appreqsts);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Delete_Rec(clsappreqprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delappreq", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@appreqcod", p.appreqcod);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsappreqprp> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dspappreq", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsappreqprp> obj = new List<clsappreqprp>();
            while (dr.Read())
            {
                clsappreqprp k = new clsappreqprp();
                k.appreqcod = Convert.ToInt32(dr[0]);
                k.appreqtim = dr[2].ToString();
                k.apprequsrcod = Convert.ToInt32(dr[3]);
                k.appreqdsc = dr[4].ToString();
                k.appreqsts = Convert.ToChar(dr[5]);
                k.appreqdoccod = Convert.ToInt32(dr[6]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsappreqprp> Find_Rec(Int32 appreqcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndappreq", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@appreqcod", appreqcod);
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsappreqprp> obj = new List<clsappreqprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsappreqprp k = new clsappreqprp();
                k.appreqcod = Convert.ToInt32(dr[0]);
                k.appreqtim = dr[2].ToString();
                k.apprequsrcod = Convert.ToInt32(dr[3]);
                k.appreqdsc = dr[4].ToString();
                k.appreqsts = Convert.ToChar(dr[5]);
                k.appreqdoccod = Convert.ToInt32(dr[6]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsrev : clscon
    {
        public DataSet dsprev(Int32 doccod)
        {
            SqlDataAdapter adp = new SqlDataAdapter("dsprev", con);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
  adp.SelectCommand.Parameters.Add("@doccod", SqlDbType.Int).Value =
                doccod;
            DataSet ds = new DataSet();
            adp.Fill(ds);
            return ds;
        }

        public void Save_Rec(clsrevprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insrev", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@revappreqcod", p.revappreqcod);
            cmd.Parameters.AddWithValue("@revdat", p.revdat);
            cmd.Parameters.AddWithValue("@revdsc", p.revdsc);
            cmd.Parameters.AddWithValue("@revscr", p.revscr);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Update_Rec(clsrevprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updrev", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@revcod", p.revcod);
            cmd.Parameters.AddWithValue("@revappreqcod", p.revappreqcod);
            cmd.Parameters.AddWithValue("@revdat", p.revdat);
            cmd.Parameters.AddWithValue("@revdsc", p.revdsc);
            cmd.Parameters.AddWithValue("@revscr", p.revscr);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void Delete_Rec(clsrevprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delrev", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@revcod", p.revcod);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsrevprp> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dsprev", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsrevprp> obj = new List<clsrevprp>();
            while (dr.Read())
            {
                clsrevprp k = new clsrevprp();
                k.revcod = Convert.ToInt32(dr[0]);
                k.revappreqcod = Convert.ToInt32(dr[1]);
                k.revdsc = dr[3].ToString();
                k.revscr = Convert.ToSingle(dr[4]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsrevprp> Find_Rec(Int32 revcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndrev", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@revcod", revcod);
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsrevprp> obj = new List<clsrevprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsrevprp k = new clsrevprp();
                k.revcod = Convert.ToInt32(dr[0]);
                k.revappreqcod = Convert.ToInt32(dr[1]);
                k.revdsc = dr[3].ToString();
                k.revscr = Convert.ToSingle(dr[4]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
}