.class Lcom/miui/home/recents/NavStubView$32;
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

    .line 7715
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$32;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 7735
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "NavStubView::startAppToWorldCirculate = onAnimationCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7736
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$32;->this$0:Lcom/miui/home/recents/NavStubView;

    new-instance v0, Lcom/miui/home/recents/NavStubView$32$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$32$2;-><init>(Lcom/miui/home/recents/NavStubView$32;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 7719
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$32;->this$0:Lcom/miui/home/recents/NavStubView;

    new-instance v0, Lcom/miui/home/recents/NavStubView$32$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$32$1;-><init>(Lcom/miui/home/recents/NavStubView$32;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    .line 7725
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "MHWAnimation#  AppToWorldCirculateAim  # startAppToWorldCirculate:NavStubView"

    .line 7730
    invoke-static {p0}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    return-void
.end method
