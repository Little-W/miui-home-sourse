.class Lcom/mi/globallauncher/view/TapTargetView$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/view/TapTargetView;

.field final synthetic val$boundingParent:Landroid/view/ViewGroup;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$layoutNoLimits:Z

.field final synthetic val$target:Lcom/mi/globallauncher/view/TapTarget;

.field final synthetic val$translucentNavigationBar:Z

.field final synthetic val$translucentStatusBar:Z


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/TapTargetView;Lcom/mi/globallauncher/view/TapTarget;Landroid/view/ViewGroup;Landroid/content/Context;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView$9;->val$target:Lcom/mi/globallauncher/view/TapTarget;

    iput-object p3, p0, Lcom/mi/globallauncher/view/TapTargetView$9;->val$boundingParent:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/mi/globallauncher/view/TapTargetView$9;->val$context:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/mi/globallauncher/view/TapTargetView$9;->val$translucentStatusBar:Z

    iput-boolean p6, p0, Lcom/mi/globallauncher/view/TapTargetView$9;->val$translucentNavigationBar:Z

    iput-boolean p7, p0, Lcom/mi/globallauncher/view/TapTargetView$9;->val$layoutNoLimits:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-static {v0}, Lcom/mi/globallauncher/view/TapTargetView;->access$200(Lcom/mi/globallauncher/view/TapTargetView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/TapTargetView;->updateTextLayouts()V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9;->val$target:Lcom/mi/globallauncher/view/TapTarget;

    new-instance v1, Lcom/mi/globallauncher/view/TapTargetView$9$1;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/view/TapTargetView$9$1;-><init>(Lcom/mi/globallauncher/view/TapTargetView$9;)V

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/TapTarget;->onReady(Ljava/lang/Runnable;)V

    return-void
.end method
