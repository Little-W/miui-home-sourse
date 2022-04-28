.class public final synthetic Lcom/mi/globallauncher/privacy/-$$Lambda$PrivacyInit$ssYO4q7o3vBIEFUbdFoFgibYSCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/privacy/-$$Lambda$PrivacyInit$ssYO4q7o3vBIEFUbdFoFgibYSCw;->f$0:Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;

    return-void
.end method


# virtual methods
.method public final analyticReport()V
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/privacy/-$$Lambda$PrivacyInit$ssYO4q7o3vBIEFUbdFoFgibYSCw;->f$0:Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;

    invoke-static {v0}, Lcom/mi/globallauncher/privacy/PrivacyInit;->lambda$branchInit$0(Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V

    return-void
.end method
