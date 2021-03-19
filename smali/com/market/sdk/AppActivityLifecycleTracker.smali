.class public Lcom/market/sdk/AppActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "AppActivityLifecycleTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final ACTIVITY_CREATED:I = 0x0

.field private static final ACTIVITY_DESTROYED:I = 0x5

.field private static final ACTIVITY_PAUSED:I = 0x3

.field private static final ACTIVITY_RESUMED:I = 0x2

.field private static final ACTIVITY_SAVE_INSTANCE:I = 0x6

.field private static final ACTIVITY_STARTED:I = 0x1

.field private static final ACTIVITY_STOPED:I = 0x4


# instance fields
.field private floatCardManager:Lcom/market/sdk/FloatCardManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/MarketManager;->getFloatCardManager()Lcom/market/sdk/FloatCardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/AppActivityLifecycleTracker;->floatCardManager:Lcom/market/sdk/FloatCardManager;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 24
    iget-object p2, p0, Lcom/market/sdk/AppActivityLifecycleTracker;->floatCardManager:Lcom/market/sdk/FloatCardManager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/market/sdk/FloatCardManager;->lifecycleChanged(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/market/sdk/AppActivityLifecycleTracker;->floatCardManager:Lcom/market/sdk/FloatCardManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/market/sdk/FloatCardManager;->lifecycleChanged(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/market/sdk/AppActivityLifecycleTracker;->floatCardManager:Lcom/market/sdk/FloatCardManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/market/sdk/FloatCardManager;->lifecycleChanged(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/market/sdk/AppActivityLifecycleTracker;->floatCardManager:Lcom/market/sdk/FloatCardManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/market/sdk/FloatCardManager;->lifecycleChanged(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 49
    iget-object p2, p0, Lcom/market/sdk/AppActivityLifecycleTracker;->floatCardManager:Lcom/market/sdk/FloatCardManager;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Lcom/market/sdk/FloatCardManager;->lifecycleChanged(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/market/sdk/AppActivityLifecycleTracker;->floatCardManager:Lcom/market/sdk/FloatCardManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/market/sdk/FloatCardManager;->lifecycleChanged(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/market/sdk/AppActivityLifecycleTracker;->floatCardManager:Lcom/market/sdk/FloatCardManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/market/sdk/FloatCardManager;->lifecycleChanged(Landroid/app/Activity;I)Z

    return-void
.end method
