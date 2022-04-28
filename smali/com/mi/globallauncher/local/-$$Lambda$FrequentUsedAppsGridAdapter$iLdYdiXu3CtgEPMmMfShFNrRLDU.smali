.class public final synthetic Lcom/mi/globallauncher/local/-$$Lambda$FrequentUsedAppsGridAdapter$iLdYdiXu3CtgEPMmMfShFNrRLDU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;ILcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/local/-$$Lambda$FrequentUsedAppsGridAdapter$iLdYdiXu3CtgEPMmMfShFNrRLDU;->f$0:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

    iput p2, p0, Lcom/mi/globallauncher/local/-$$Lambda$FrequentUsedAppsGridAdapter$iLdYdiXu3CtgEPMmMfShFNrRLDU;->f$1:I

    iput-object p3, p0, Lcom/mi/globallauncher/local/-$$Lambda$FrequentUsedAppsGridAdapter$iLdYdiXu3CtgEPMmMfShFNrRLDU;->f$2:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/globallauncher/local/-$$Lambda$FrequentUsedAppsGridAdapter$iLdYdiXu3CtgEPMmMfShFNrRLDU;->f$0:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

    iget v1, p0, Lcom/mi/globallauncher/local/-$$Lambda$FrequentUsedAppsGridAdapter$iLdYdiXu3CtgEPMmMfShFNrRLDU;->f$1:I

    iget-object v2, p0, Lcom/mi/globallauncher/local/-$$Lambda$FrequentUsedAppsGridAdapter$iLdYdiXu3CtgEPMmMfShFNrRLDU;->f$2:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->lambda$getView$0(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;ILcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method
