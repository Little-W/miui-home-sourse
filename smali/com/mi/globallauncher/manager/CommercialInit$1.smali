.class Lcom/mi/globallauncher/manager/CommercialInit$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/manager/CommercialInit;->initPocoBranchOnScrollUpEnd(Lcom/mi/globallauncher/branchInterface/PocoBranchInitInterface;Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/manager/CommercialInit;

.field final synthetic val$initInterface:Lcom/mi/globallauncher/branchInterface/PocoBranchInitInterface;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/manager/CommercialInit;Lcom/mi/globallauncher/branchInterface/PocoBranchInitInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/manager/CommercialInit$1;->this$0:Lcom/mi/globallauncher/manager/CommercialInit;

    iput-object p2, p0, Lcom/mi/globallauncher/manager/CommercialInit$1;->val$initInterface:Lcom/mi/globallauncher/branchInterface/PocoBranchInitInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialInit$1;->val$initInterface:Lcom/mi/globallauncher/branchInterface/PocoBranchInitInterface;

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/PocoBranchInitInterface;->onDialogDismiss()V

    return-void
.end method
