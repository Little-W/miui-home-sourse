.class Lcom/mi/globallauncher/view/ViewTapTarget;
.super Lcom/mi/globallauncher/view/TapTarget;
.source "ViewTapTarget.java"


# instance fields
.field final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 30
    invoke-direct {p0, p2, p3}, Lcom/mi/globallauncher/view/TapTarget;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/mi/globallauncher/view/ViewTapTarget;->view:Landroid/view/View;

    return-void

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given null view to target"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onReady(Ljava/lang/Runnable;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/mi/globallauncher/view/ViewTapTarget;->view:Landroid/view/View;

    new-instance v1, Lcom/mi/globallauncher/view/ViewTapTarget$1;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/view/ViewTapTarget$1;-><init>(Lcom/mi/globallauncher/view/ViewTapTarget;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/mi/globallauncher/view/ViewUtil;->onLaidOut(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
