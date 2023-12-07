.class Lcom/mi/globallauncher/manager/BranchGuildController$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/manager/BranchGuildController;->showBranchSearchGuideView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/manager/BranchGuildController;

.field final synthetic val$guideType:I


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/manager/BranchGuildController;I)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->this$0:Lcom/mi/globallauncher/manager/BranchGuildController;

    iput p2, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->val$guideType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreeBtnClicked()V
    .locals 3

    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->this$0:Lcom/mi/globallauncher/manager/BranchGuildController;

    invoke-static {v0}, Lcom/mi/globallauncher/manager/BranchGuildController;->access$100(Lcom/mi/globallauncher/manager/BranchGuildController;)Lcom/mi/globallauncher/view/BranchSearchGuide;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->val$guideType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->this$0:Lcom/mi/globallauncher/manager/BranchGuildController;

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->access$200(Lcom/mi/globallauncher/manager/BranchGuildController;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->this$0:Lcom/mi/globallauncher/manager/BranchGuildController;

    invoke-virtual {v0}, Lcom/mi/globallauncher/manager/BranchGuildController;->hideBranchSearchGuideView()V

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setGuildType1AlreadyShow(Z)V

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchInitSwitchOn(ZZ)V

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchHasBeenOpened(Z)V

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->this$0:Lcom/mi/globallauncher/manager/BranchGuildController;

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->showBranchSearchGuideView()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchHasBeenOpened(Z)V

    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->this$0:Lcom/mi/globallauncher/manager/BranchGuildController;

    invoke-virtual {v0}, Lcom/mi/globallauncher/manager/BranchGuildController;->hideBranchSearchGuideView()V

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->this$0:Lcom/mi/globallauncher/manager/BranchGuildController;

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->handleAfterBranchSearchGuideViewHide()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCloseBtnClicked()V
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->this$0:Lcom/mi/globallauncher/manager/BranchGuildController;

    invoke-virtual {v0}, Lcom/mi/globallauncher/manager/BranchGuildController;->hideBranchSearchGuideView()V

    iget v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->val$guideType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchHasBeenOpened(Z)V

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->this$0:Lcom/mi/globallauncher/manager/BranchGuildController;

    invoke-static {v0}, Lcom/mi/globallauncher/manager/BranchGuildController;->access$000(Lcom/mi/globallauncher/manager/BranchGuildController;)Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->appsViewVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController$1;->this$0:Lcom/mi/globallauncher/manager/BranchGuildController;

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->handleAfterBranchSearchGuideViewHide()V

    :cond_1
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchGuideClose()V

    return-void
.end method
