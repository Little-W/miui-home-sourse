.class Lcom/mi/globallauncher/privacy/PrivacyInit$2;
.super Ljava/lang/Object;
.source "PrivacyInit.java"

# interfaces
.implements Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/privacy/PrivacyInit;->branchInit(Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/privacy/PrivacyInit;

.field final synthetic val$privacyInitCallBack:Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/privacy/PrivacyInit;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mi/globallauncher/privacy/PrivacyInit$2;->this$0:Lcom/mi/globallauncher/privacy/PrivacyInit;

    iput-object p2, p0, Lcom/mi/globallauncher/privacy/PrivacyInit$2;->val$privacyInitCallBack:Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigFailed()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mi/globallauncher/privacy/PrivacyInit$2;->val$privacyInitCallBack:Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;->onConfigFailed()V

    return-void
.end method

.method public onConfigSucceed()V
    .locals 2

    .line 72
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setCloudConfigReceived(Z)V

    .line 73
    iget-object v0, p0, Lcom/mi/globallauncher/privacy/PrivacyInit$2;->val$privacyInitCallBack:Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;->onConfigSucceed()V

    return-void
.end method
