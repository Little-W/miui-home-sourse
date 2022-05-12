.class public final Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1;
.super Ljava/lang/Object;
.source "ViewLeakMonitor.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/monitor/ViewLeakMonitor;->trackView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/miui/performance/monitor/ViewLeakMonitor;->INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor;

    invoke-static {v0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->access$getBgHandler$p(Lcom/miui/performance/monitor/ViewLeakMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1$onViewDetachedFromWindow$1;

    invoke-direct {v1, p1}, Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1$onViewDetachedFromWindow$1;-><init>(Landroid/view/View;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
