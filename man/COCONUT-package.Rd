\name{COCONUT-package}
\alias{COCONUT-package}
\docType{package}
\title{COmbat CO-Normalization Using conTrols:
\packageTitle{COCONUT}
}
\description{
\packageDescription{COCONUT}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{COCONUT}
\packageIndices{COCONUT}
Direct comparison of different microarray cohorts is impossible due both to inherent differences in underlying microarray platform and processing (technical) batch effects. In order to make use of these data, we need to co-normalize cohorts in such a way that (1) no bias is introduced (i.e., the normalization protocol should be blind to disease state); (2) there should be no change to the distribution of a gene within a study, and (3) a gene should show the same distributions between studies after normalization.

We thus developed a modified version of the ComBat empiric Bayes normalization method (Johnson et al., Biostatistics 2007) to co-normalize control samples from different cohorts to allow for direct comparison of diseased samples from those same cohorts. We call this method COmbat CO-Normalization Using conTrols, or 'COCONUT' . COCONUT makes one strong assumption, which is that it forces controls/healthy patients from different cohorts to represent the same distribution.

Briefly, all cohorts are split into the control and diseased components. The control components undergo ComBat co-normalization without covariates. The ComBat estimated parameters are obtained for each dataset for the control component, and then applied onto the diseased component. This forces the diseased components of all cohorts to be from the same background distribution, but retain their relative distance from the control component . Importantly, it also does not require any a priori knowledge of what type of disease is present in the diseased portion of the data. This method does have the notable requirement that controls/healthy patients are required to be present in a dataset in order for it to be pooled with other available data. Also, since control/healthy patients are set to be in the same distribution, it should only be used where such an assumption is reasonable (i.e., within the same tissue type, among the same species, etc.).

COCONUT requires a list of objects with two components, $gene and $pheno. It is assumed that each item in the list represents a different study, and that these have already been internally batch-corrected and normalized as appropriate. It is assumed that data object structure $gene is a matrix (genes in rows, samples in columns) and that $pheno is a data.frame (samples in rows, variables in columns). Note that COCONUT (like ComBat) requires identical rownames (genes) across all batches; so probes data will not work unless all matrices are from the same manufacturer (common probe names).

Also note that, unlike sva::ComBat, no co-variates are allowed.

}
\author{
\packageAuthor{COCONUT}

Maintainer: \packageMaintainer{COCONUT}
}
\references{
Sweeney TE et al., "Robust classification of bacterial and viral infections via integrated host gene expression diagnostics", Science Translational Medicine, 2016
}
\keyword{ package }
