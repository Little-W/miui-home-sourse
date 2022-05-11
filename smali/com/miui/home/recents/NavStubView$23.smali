.class Lcom/miui/home/recents/NavStubView$23;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startAppToWorldCirculate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 4844
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 4864
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "NavStubView::startAppToWorldCirculate = onAnimationCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4865
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    new-instance v0, Lcom/miui/home/recents/NavStubView$23$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$23$2;-><init>(Lcom/miui/home/recents/NavStubView$23;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 4848
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    new-instance v0, Lcom/miui/home/recents/NavStubView$23$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$23$1;-><init>(Lcom/miui/home/recents/NavStubView$23;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    .line 4854
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p1, "appToWorldCirculateAim"

    .line 4859
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    return-void
.end method
