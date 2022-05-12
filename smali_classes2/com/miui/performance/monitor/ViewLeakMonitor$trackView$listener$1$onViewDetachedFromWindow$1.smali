.class final Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1$onViewDetachedFromWindow$1;
.super Ljava/lang/Object;
.source "ViewLeakMonitor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1$onViewDetachedFromWindow$1;->$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1$onViewDetachedFromWindow$1;->$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcom/miui/performance/monitor/TrackedViews;->INSTANCE:Lcom/miui/performance/monitor/TrackedViews;

    iget-object v1, p0, Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1$onViewDetachedFromWindow$1;->$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/performance/monitor/TrackedViews;->track(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1$onViewDetachedFromWindow$1;->$v:Landroid/view/View;

    sget-object v1, Lcom/miui/performance/monitor/ViewLeakMonitor;->INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor;

    invoke-static {v1}, Lcom/miui/performance/monitor/ViewLeakMonitor;->access$getMap$p(Lcom/miui/performance/monitor/ViewLeakMonitor;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1$onViewDetachedFromWindow$1;->$v:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method
