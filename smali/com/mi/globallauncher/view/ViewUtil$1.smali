.class Lcom/mi/globallauncher/view/ViewUtil$1;
.super Ljava/lang/Object;
.source "ViewUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/ViewUtil;->onLaidOut(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewTreeObserver;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mi/globallauncher/view/ViewUtil$1;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Lcom/mi/globallauncher/view/ViewUtil$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/mi/globallauncher/view/ViewUtil$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mi/globallauncher/view/ViewUtil$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/mi/globallauncher/view/ViewUtil$1;->val$observer:Landroid/view/ViewTreeObserver;

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/view/ViewUtil$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 53
    :goto_0
    invoke-static {v0, p0}, Lcom/mi/globallauncher/view/ViewUtil;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 55
    iget-object v0, p0, Lcom/mi/globallauncher/view/ViewUtil$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
