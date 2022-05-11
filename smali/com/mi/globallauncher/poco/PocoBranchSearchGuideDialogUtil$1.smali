.class Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;
.super Ljava/lang/Object;
.source "PocoBranchSearchGuideDialogUtil.java"

# interfaces
.implements Lcom/mi/globallauncher/poco/PocoBranchSearchGuide$BranchGuideViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->showPocoBranchSearchGuideView(Landroid/app/Activity;ZLcom/mi/globallauncher/poco/PocoBranchGuideCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

.field final synthetic val$mIsLightMode:Z

.field final synthetic val$mLauncher:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;Landroid/app/Activity;Z)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;->this$0:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    iput-object p2, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;->val$mLauncher:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;->val$mIsLightMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreeBtnClicked()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;->this$0:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    invoke-static {v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->access$100(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;->this$0:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    invoke-static {v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->access$100(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->isPrivacyCheckBoxChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;->this$0:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    invoke-static {v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->access$200(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;->this$0:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    iget-object v1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;->val$mLauncher:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->access$100(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getPrivacyCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;->val$mIsLightMode:Z

    invoke-static {v0, v1, v2, v3}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->access$300(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;Landroid/app/Activity;Landroid/widget/CheckBox;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCloseBtnClicked()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;->this$0:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    invoke-virtual {v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->dismissBranchSearchGuide()V

    .line 47
    invoke-static {}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->access$000()Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->access$000()Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;->onCloseBtnClicked()V

    .line 50
    :cond_0
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchGuideClose()V

    return-void
.end method
