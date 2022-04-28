.class Lcom/mi/globallauncher/manager/BranchSettingManager$1;
.super Ljava/lang/Object;
.source "BranchSettingManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/manager/BranchSettingManager;->branchSettingChange(Ljava/lang/Boolean;Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/manager/BranchSettingManager;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/manager/BranchSettingManager;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchSettingManager$1;->this$0:Lcom/mi/globallauncher/manager/BranchSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSettingManager$1;->this$0:Lcom/mi/globallauncher/manager/BranchSettingManager;

    invoke-static {p1}, Lcom/mi/globallauncher/manager/BranchSettingManager;->access$000(Lcom/mi/globallauncher/manager/BranchSettingManager;)Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;

    move-result-object p1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;->setChecked(Z)V

    return-void
.end method
