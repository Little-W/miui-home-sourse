.class Lcom/miui/home/launcher/Launcher$49;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$isLoadingViewGoOut:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 4811
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-boolean p2, p0, Lcom/miui/home/launcher/Launcher$49;->val$isLoadingViewGoOut:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 4813
    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher$49;->val$isLoadingViewGoOut:Z

    if-eqz p1, :cond_0

    .line 4814
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$7400(Lcom/miui/home/launcher/Launcher;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$7400(Lcom/miui/home/launcher/Launcher;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4815
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$7402(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method
