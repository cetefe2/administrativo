program CETEFE;

uses
  Forms,
  Controls,
  SysUtils,
  TPOFNC in 'TPOFNC.pas',
  TPOCST in 'TPOCST.pas',
  TPOMOD2 in 'TPOMOD2.pas' {FORMOD2},
  TPODTA in 'TPODTA.pas' {DmDTA: TDataModule},
  TPOMOD1 in 'TPOMOD1.pas' {FORMOD1},
  TPOINI in 'TPOINI.pas' {FORINI},
  TPOFOR in 'TPOFOR.pas' {FORFOR},
  TPOEST in 'TPOEST.pas' {FOREST},
  TPOMOD3 in 'TPOMOD3.pas' {FORMOD3},
  TPOIDI in 'TPOIDI.pas' {FORIDI},
  TPOSTW in 'TPOSTW.pas' {FORSTW},
  TPOMOD in 'TPOMOD.pas' {FORMOD},
  TPOFPG in 'TPOFPG.pas' {FORFPG},
  TPOVSW in 'TPOVSW.pas' {FORVSW},
  TPOSPL in 'TPOSPL.pas' {FORSPL},
  TPOERE in 'TPOERE.pas' {FORERE},
  TPOIRE in 'TPOIRE.pas' {FORIRE},
  TPOICU in 'TPOICU.pas' {FORICU},
  TPOVCU in 'TPOVCU.pas' {FORVCU},
  TPOTALAT in 'TPOTALAT.pas' {FORTALAT},
  TPOTAD in 'TPOTAD.pas' {FORTAD},
  TPOTRV2 in 'TPOTRV2.pas' {FORTRV2},
  TPOEOB in 'TPOEOB.pas' {FOREOB},
  TPOTCE in 'TPOTCE.pas' {FORTCE},
  TPOVAG in 'TPOVAG.pas' {FORVAG},
  TPOVID in 'TPOVID.pas' {FORVID},
  TPOTAL in 'TPOTAL.pas' {FORTAL},
  TPOSTEST in 'TPOSTEST.pas' {FORSTEST},
  TPORPEMP in 'TPORPEMP.pas' {QRPEmp: TQuickRep},
  TPORTCO in 'TPORTCO.pas' {QRTCO},
  TPOSFPG in 'TPOSFPG.pas' {FORSFPG},
  TPOSVER2 in 'TPOSVER2.pas' {FORSVER2},
  TPOREMP2 in 'TPOREMP2.pas' {QREmp2: TQuickRep},
  TPOSINC in 'TPOSINC.pas' {FORSINC},
  TPORSegInc in 'TPORSegInc.pas' {QRSegInc: TQuickRep},
  TPOFAT in 'TPOFAT.pas' {FORFAT},
  TPOIFU2 in 'TPOIFU2.pas' {FORIFU2},
  TPOSPEMP in 'TPOSPEMP.pas' {FORSPEMP},
  TPORECA in 'TPORECA.pas' {QRECA: TQuickRep},
  TPOSVER1 in 'TPOSVER1.pas' {FORSVER1},
  TPORTRV in 'TPORTRV.pas' {QRTRV: TQuickRep},
  TPOEST1 in 'TPOEST1.pas' {FOREST1},
  TPOEST10 in 'TPOEST10.pas' {FOREST10},
  TPOEST7 in 'TPOEST7.pas' {FOREST7},
  TPOEST3 in 'TPOEST3.pas' {FOREST3},
  TPOEST4 in 'TPOEST4.pas' {FOREST4},
  TPOEST5 in 'TPOEST5.pas' {FOREST5},
  TPOEST8 in 'TPOEST8.pas' {FOREST8},
  TPOENC in 'TPOENC.pas' {FORENC},
  TPOREVE in 'TPOREVE.pas' {QREVE: TQuickRep},
  TPORREC in 'TPORREC.pas' {QRREC: TQuickRep},
  TPORFPG in 'TPORFPG.pas' {QRFPG: TQuickRep},
  TPORETQ1 in 'TPORETQ1.pas' {QRETQ1: TQuickRep},
  TPOETQ in 'TPOETQ.pas' {FORETQ},
  TPOFUN in 'TPOFUN.pas' {FORFUN},
  TPOINS in 'TPOINS.pas' {FORINS},
  TPOSECA in 'TPOSECA.pas' {FORSECA},
  TPORVAGCAN in 'TPORVAGCAN.pas' {QRVAGCAN: TQuickRep},
  TPOSAVD in 'TPOSAVD.pas' {FORSAVD},
  TPORSAI in 'TPORSAI.pas' {QRSAI: TQuickRep},
  TPOSSAI in 'TPOSSAI.pas' {FORSSAI},
  TPOESTAV in 'TPOESTAV.pas' {FORESTAV},
  TPOERTAV in 'TPOERTAV.pas' {QRTAV: TQuickRep},
  TPORCAI in 'TPORCAI.pas' {QRCAI: TQuickRep},
  TPOSCAI in 'TPOSCAI.pas' {FORSCAI},
  TPOESICOL in 'TPOESICOL.pas' {FORESICOL},
  TPOERERS in 'TPOERERS.pas' {QRERS: TQuickRep},
  TPOSTAX in 'TPOSTAX.pas' {FORSTAX},
  TPORTAX1 in 'TPORTAX1.pas' {QRTax1: TQuickRep},
  TPOSFPP in 'TPOSFPP.pas' {FORSFPP},
  TPOETQ1 in 'TPOETQ1.pas' {FORETQ1},
  TPOSTCE in 'TPOSTCE.pas' {FORSTCE},
  TPOTALD in 'TPOTALD.pas' {FORTALD},
  TPOSCCO in 'TPOSCCO.pas' {FORSCCO},
  TPORCCO in 'TPORCCO.pas' {QRCCO: TQuickRep},
  TPOSEL1 in 'TPOSEL1.pas' {FORSEL1},
  TPORAGE in 'TPORAGE.pas' {QRAGE: TQuickRep},
  TPOPROMALUNO in 'TPOPROMALUNO.pas' {FORPROMALUNO},
  TPOSEMPOPT in 'TPOSEMPOPT.pas' {FORSEMPOPT},
  TPOSEMP_E in 'TPOSEMP_E.pas' {FORSEMP_E},
  TPOSEMPJ1 in 'TPOSEMPJ1.pas' {FORSEMPJ1},
  TPOSEMP2 in 'TPOSEMP2.pas' {FORSEMP2},
  TPOEMP2 in 'TPOEMP2.pas' {FOREMP2},
  TPORTAX in 'TPORTAX.pas' {QRTax: TQuickRep},
  TPOREMP3 in 'TPOREMP3.pas' {QREmp3: TQuickRep},
  TPORFOR in 'TPORFOR.pas' {QRFor: TQuickRep},
  TPORAGE1 in 'TPORAGE1.pas' {QRAGE1: TQuickRep},
  TPOEML in 'TPOEML.pas' {FOREML},
  TPORVER2 in 'TPORVER2.pas' {QRVer2: TQuickRep},
  TPOREMP4 in 'TPOREMP4.pas' {QREmp4: TQuickRep},
  TPOSVER in 'TPOSVER.pas' {FORSVER},
  TPORVER in 'TPORVER.pas' {QRVer: TQuickRep},
  TPorEMP5 in 'TPorEMP5.pas' {QREmp5: TQuickRep},
  TPOSEL3 in 'TPOSEL3.pas' {FORSEL3},
  TPOSEMP in 'TPOSEMP.pas' {FORSEMP},
  TPORANI in 'TPORANI.pas' {QRANI: TQuickRep},
  TPOREMP in 'TPorEMP.pas' {QREmp: TQuickRep},
  TPORFAT in 'TPORFAT.pas' {QRFatura: TQuickRep},
  TPOEMP3 in 'TPOEMP3.pas' {FOREMP3},
  TPOEMP6 in 'TPOEMP6.pas' {FOREMP6},
  TPOVAGD in 'TPOVAGD.pas' {FORVAGD},
  TPORAVD in 'TPORAVD.pas' {QRAvD: TQuickRep},
  TPOAGE in 'TPOAGE.pas' {FORAGE},
  TPOAGE1 in 'TPOAGE1.pas' {FORAGE1},
  TPOEST6 in 'TPOEST6.pas' {FOREST6},
  TPORVAG in 'TPORVAG.pas' {QRVAG: TQuickRep},
  TPOREMP1 in 'TPOREMP1.pas' {QREmp1: TQuickRep},
  TPOSVAG in 'TPOSVAG.pas' {FORSVAG},
  TPORSegExc in 'TPORSegExc.pas' {QRSegExc: TQuickRep},
  TPORCUR1 in 'TPORCUR1.pas' {QRCUR1: TQuickRep},
  TPOEMP5 in 'TPOEMP5.pas' {FOREMP5},
  TPOIFU in 'TPOIFU.pas' {FORIFU},
  TPODTE in 'TPODTE.pas' {DmDTE: TDataModule},
  TPOSENT in 'TPOSENT.pas' {FORSENT},
  TPORENT in 'TPORENT.pas' {QRENT: TQuickRep},
  TPOESTCE in 'TPOESTCE.pas' {FORESTCE},
  TPOERTCE in 'TPOERTCE.pas' {QRTCE2: TQuickRep},
  TPOSDSP in 'TPOSDSP.pas' {FORSDSP},
  TPORDSP in 'TPORDSP.pas' {QRDSP: TQuickRep},
  TPOESICAD in 'TPOESICAD.pas' {FORESICAD},
  TPOERICOL in 'TPOERICOL.pas' {QRICOL: TQuickRep},
  TPOESERS in 'TPOESERS.pas' {FORESERS},
  TPOERICAD in 'TPOERICAD.pas' {QRICAD: TQuickRep},
  TPOESFES in 'TPOESFES.pas' {FORESFES},
  TPOERFES in 'TPOERFES.pas' {QRFES: TQuickRep},
  TPOESFOP in 'TPOESFOP.pas' {FORESFOP},
  TPOERFOP in 'TPOERFOP.pas' {QRFOP: TQuickRep},
  TPORCUR in 'TPORCUR.pas' {QRCUR: TQuickRep},
  TPOREST in 'TPOREST.pas' {QREST: TQuickRep},
  TPOEST2 in 'TPOEST2.pas' {FOREST2},
  TPOEST9 in 'TPOEST9.pas' {FOREST9},
  TPOEMP4 in 'TPOEMP4.pas' {FOREMP4},
  TPOEHI in 'TPOEHI.pas' {FOREHI},
  TPOIHI in 'TPOIHI.pas' {FORIHI},
  TPOVHI in 'TPOVHI.pas' {FORVHI},
  TPORTCE in 'TPORTCE.pas' {QRTCE: TQuickRep},
  TPOSREC in 'TPOSREC.pas' {FORSREC},
  TPORESC in 'TPORESC.pas' {FORRESC},
  SendMail in 'SendMail.pas',
  TPOSEST in 'TPOSEST.pas' {FORSEST},
  TPORINS in 'TPORINS.pas' {QRINS: TQuickRep},
  TPOESTME in 'TPOESTME.pas' {FORESTME},
  TPOCUR in 'TPOCUR.pas' {FORCUR},
  TPOEMP1 in 'TPOEMP1.pas' {FOREMP1},
  TPOEFU in 'TPOEFU.pas' {FOREFU},
  TPOSTCR in 'TPOSTCR.pas' {FORSTCR},
  TPORTCR in 'TPORTCR.pas' {QRTCR: TQuickRep},
  TPOSERE2 in 'TPOSERE2.pas' {FORSERE2},
  TPORERE in 'TPORERE.pas' {QRERE: TQuickRep},
  TPOSTCASR in 'TPOSTCASR.pas' {FORSTCASR},
  TPORTCASR in 'TPORTCASR.pas' {QRTCASR: TQuickRep},
  TPOSEXC in 'TPOSEXC.pas' {FORSEXC},
  TPORResUFPR in 'TPORResUFPR.pas' {QRResUFPR: TQuickRep},
  TPOIFU1 in 'TPOIFU1.pas' {FORIFU1},
  untLibera in 'untLibera.pas' {FrmLibera},
  TPOREMPE1 in 'TPOREMPE1.pas' {QREmpE1: TQuickRep},
  TPOFORMULARIO in 'TPOFORMULARIO.pas' {Formulario: TQuickRep},
  UntIntervalo in 'UntIntervalo.pas' {FrmIntervalo},
  tpoAtualizando in 'tpoAtualizando.pas' {frmAtualizando},
  TPOLote2 in 'TPOLote2.pas' {FORLOTE2},
  tpoest11 in 'tpoest11.pas' {FOREST11},
  TPOSEL5 in 'TPOSEL5.pas' {FORSEL5},
  TPOREQ in 'TPOREQ.pas' {FRMREQ},
  TPOVREQ in 'TPOVREQ.pas' {FORVREQ},
  TPOESTREQ in 'TPOESTREQ.pas' {FORESTREQ},
  tposel4 in 'tposel4.pas' {FORSEL4},
  TpoMaling in 'TpoMaling.pas' {ForMailing},
  TPOTRV in 'TPOTRV.pas' {FORTRV},
  TPOEMP in 'TPOEMP.pas' {FOREMP},
  TPOGRUPO in 'TPOGRUPO.pas' {FORGRUPO},
  TPOSELEMP in 'TPOSELEMP.pas' {FORSELEMP},
  TPOVAGENTR in 'TPOVAGENTR.pas' {FORVAGENTR},
  TPOTCED in 'TPOTCED.pas' {FORTCED},
  TPOFORBEN in 'TPOFORBEN.pas' {FORBEN},
  TPOPRODUTIVIDADE in 'TPOPRODUTIVIDADE.pas' {FORPRODUTIVIDADE},
  TPOVAGSUP in 'TPOVAGSUP.pas' {FORVAGSUP},
  TpoContatos in 'TpoContatos.pas' {FORCONTATOS},
  TPOTROCASENHA in 'TPOTROCASENHA.pas' {FORTROCASENHA},
  TPOFUNINS in 'TPOFUNINS.pas' {FORFUNINS},
  TPOFUNEMP in 'TPOFUNEMP.pas' {FORFUNEMP},
  projlogin in 'projlogin.pas' {Formlogin},
  TPOTPROBS in 'TPOTPROBS.pas' {FORMTPRObs},
  TpoInstTce in 'TpoInstTce.pas' {ForInstTCE},
  TPOINSTOBS in 'TPOINSTOBS.pas' {FORMINSTOBS},
  TPOVAT in 'TPOVAT.pas' {FORVAT},
  TPOEMPOBS in 'TPOEMPOBS.pas' {FORMEmpObs},
  TPOTALOBS in 'TPOTALOBS.pas' {FORMTALObs},
  TPOTCEOBS in 'TPOTCEOBS.pas' {FORMTceObs},
  TPOFORMT in 'TPOFORMT.pas' {FORFORM},
  TPOAREA in 'TPOAREA.pas' {FORAREA},
  TPOSERE in 'TPOSERE.pas' {FORSERE},
  TPOSELECIONADOR in 'TPOSELECIONADOR.pas' {FORSELECIONADOR},
  TPOENTREL in 'TPOENTREL.pas' {FORENTREL},
  TPOPEND in 'TPOPEND.pas' {FORPEND},
  TPOPERFVAGA in 'TPOPERFVAGA.pas' {FORPERFILVAGA},
  TPORETQ in 'TPORETQ.pas' {QRETQ: TQuickRep},
  TPOBAN in 'TPOBAN.pas' {FORBAN},
  TPOLote in 'TPOLote.pas' {FORLOTE},
  TPOERR in 'TPOERR.pas' {FORERR};

// TPOSERE in 'TPOSERE.pas' {FORSERE},


{$R *.RES}

begin
  Screen.Cursor := crHourGlass;
  Application.Initialize;
  //FORSPL := TFORSPL.Create(Application); // Form de Splash
  //FORSPL.Show;
  //FORSPL.Update;

  // by R.e.a.L
  ShortDateFormat := 'dd/mm/yyyy';
  //
  
  Application.CreateForm(TDmDTA, DmDTA);
  Application.CreateForm(TDmDTE, DmDTE);
  // Application.CreateForm(TFORBAN, FORBAN);
  //  Application.CreateForm(TQRETQ, QRETQ);
  //  Application.CreateForm(TFORPERFILVAGA, FORPERFILVAGA);
  //Application.CreateForm(TFORPEND, FORPEND);
  // Application.CreateForm(TFORENTREL, FORENTREL);
  //  Application.CreateForm(TFORSELECIONADOR, FORSELECIONADOR);
  //Application.CreateForm(TFORMTALObs, FORMTALObs);
  //Application.CreateForm(TFORMTceObs, FORMTceObs);
  //Application.CreateForm(TFORMEmpObs, FORMEmpObs);
  //Application.CreateForm(TFORVAT, FORVAT);
  Application.Title := 'CETEFE';
  Application.CreateForm(TFORINI, FORINI);
  Application.CreateForm(TFormlogin, Formlogin);

  if formlogin.ShowModal <> mrOk then
    halt;
    
  Application.CreateForm(TFrmIntervalo, FrmIntervalo);
  Application.CreateForm(TFrmLibera, FrmLibera);
//  Application.CreateForm(TFORMEmpObs, FORMEmpObs);
//  Application.CreateForm(TFORMINSTOBS, FORMINSTOBS);
  {

  Application.CreateForm(TfrmAtualizando, frmAtualizando);
  Application.CreateForm(TForMailing, ForMailing);
  Application.CreateForm(TFORTRV, FORTRV);
  Application.CreateForm(TFOREMP, FOREMP);
  Application.CreateForm(TFORGRUPO, FORGRUPO);
  Application.CreateForm(TFORSELEMP, FORSELEMP);
  Application.CreateForm(TFOREMPRESP, FOREMPRESP);
  Application.CreateForm(TFORVAGENTR, FORVAGENTR);
  Application.CreateForm(TFORTCED, FORTCED);
  Application.CreateForm(TFORBEN, FORBEN);
  Application.CreateForm(TFORPRODUTIVIDADE, FORPRODUTIVIDADE);
  Application.CreateForm(TFORVAGSUP, FORVAGSUP);
  Application.CreateForm(TFORCONTATOS, FORCONTATOS);
  Application.CreateForm(TFORTROCASENHA, FORTROCASENHA);
  Application.CreateForm(TFORFUNINS, FORFUNINS);
  Application.CreateForm(TFORFUNEMP, FORFUNEMP);
  FORSPL.Hide;
  FORSPL.Free;
  //forini.AtualizaAno;
  Screen.Cursor := crDefault;}
  Application.Run;
end.

