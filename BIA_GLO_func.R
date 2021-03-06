##
  ##BIA_GLO function

biaglo.fn = function(cur.column=1, n.density, cur.qq=1, cur.q=1, cur.t=1)
{
  bias1.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim))
  for (i in 1:n.density)
    bias1.df[,i] = est.density.section.bia[[i]][,cur.column]
  colnames(bias1.df) = tph
  
  biaqq1.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim))
  for (i in 1:n.density)
  {
    for (j in 1:nsim)
    {
      qq_sec = which(all.transect.bia[[i]][[j]][,3] == cur.qq)
      biaqq1.df[j,i] = mean(all.transect.bia[[i]][[j]][qq_sec,2]) 
    }
  }
  colnames(biaqq1.df) = tph
  
  biaq1.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim))
  for (i in 1:n.density)
  {
    for (j in 1:nsim)
    {
      q_sec = which(all.transect.bia[[i]][[j]][,4] == cur.q)
      biaq1.df[j,i] = mean(all.transect.bia[[i]][[j]][q_sec,2]) 
    }
  }
  colnames(biaq1.df) = tph
  
  biat1.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim))
  for (i in 1:n.density)
  {  
    for (j in 1:nsim)
      biat1.df[j,i] = mean(all.transect.bia[[i]][[j]][cur.t,2]) 
  }
  colnames(biat1.df) = tph
  
  gloMog.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim)) 
  for(i in 1:n.density)
    gloMog.df[,i] = est.density.glo[[i]][,1]
  
  gloFR.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim)) 
  for(i in 1:n.density)
    gloFR.df[,i] = est.density.glo[[i]][,2]
  colnames(gloFR.df) = tph
  
  gloBM.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim)) 
  for(i in 1:n.density)
    gloBM.df[,i] = est.density.glo[[i]][,3]
  colnames(gloBM.df) = tph
  
  gloFir.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim)) 
  for(i in 1:n.density)
    gloFir.df[,i] = est.density.glo[[i]][,4]
  colnames(gloFir.df) = tph
  
  gloPine.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim)) 
  for(i in 1:n.density)
    gloPine.df[,i] = est.density.glo[[i]][,5]
  colnames(gloPine.df) = tph
  
  gloAllSpp.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim)) 
  for(i in 1:n.density)
    gloAllSpp.df[,i] = est.density.glo[[i]][,6]
  colnames(gloAllSpp.df) = tph
  
  gloPCQCorr.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim)) 
  for(i in 1:n.density)
    gloPCQCorr.df[,i] = est.density.glo[[i]][,7]
  colnames(gloPCQCorr.df) = tph
  
  gloPCQUnCorr.df = data.frame(matrix(NA, ncol = n.density, nrow = nsim)) 
  for(i in 1:n.density)
    gloPCQUnCorr.df[,i] = est.density.glo[[i]][,8]
  colnames(gloPCQUnCorr.df) = tph
  
  return(list(BIASec=bias1.df,BIAqq=biaqq1.df,BIAq=biaq1.df,BIAt=biat1.df,GLOMog=gloMog.df,GLOFR=gloFR.df,GLOBM=gloBM.df,GLOFir=gloFir.df,GLOPine=gloPine.df,GLOAllSpp=gloAllSpp.df,GLOPCQCorr=gloPCQCorr.df,GloPCQUnCorr=gloPCQUnCorr.df))
}