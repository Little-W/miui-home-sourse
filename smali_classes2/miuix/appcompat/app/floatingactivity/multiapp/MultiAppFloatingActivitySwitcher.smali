.class public final Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
.super Ljava/lang/Object;
.source "MultiAppFloatingActivitySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;,
        Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$OpenExitAnimationExecutor;,
        Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;
    }
.end annotation


# static fields
.field private static sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;


# instance fields
.field private mActivityCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseAllActivityTime:J

.field private final mExitAnimationHandler:Landroid/os/Handler;

.field private mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

.field private mLastActivityPanel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDragEndTime:J

.field private mOnDragStartTime:J

.field private mServiceConnected:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    .locals 1

    .line 39
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    return-object v0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->closeAllActivity()V

    return-void
.end method

.method static synthetic access$1100(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unbindService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1200(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mExitAnimationHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 39
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->hideBehindPages()V

    return-void
.end method

.method static synthetic access$900(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->onDragEnd()V

    return-void
.end method

.method private closeAllActivity()V
    .locals 2

    .line 293
    iget-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mCloseAllActivityTime:J

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isCalled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mCloseAllActivityTime:J

    .line 298
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_2

    .line 299
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    iget-object v1, v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 351
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 352
    invoke-direct {p0, p1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isActivityEquals(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method static getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    .locals 1

    .line 127
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    return-object v0
.end method

.method private hideBehindPages()V
    .locals 3

    .line 448
    iget-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragStartTime:J

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isCalled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 451
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragStartTime:J

    .line 452
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 453
    iget-boolean v2, v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->resumed:Z

    if-nez v2, :cond_1

    .line 454
    iget-object v1, v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    .line 456
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lmiuix/appcompat/app/floatingactivity/multiapp/-$$Lambda$RB2i8TwISX5E9EgwAXLUkZV4XGc;

    invoke-direct {v2, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/-$$Lambda$RB2i8TwISX5E9EgwAXLUkZV4XGc;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isActivityEquals(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)Z
    .locals 1

    .line 372
    iget-object v0, p2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    iget-object p2, p2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private isCalled(J)Z
    .locals 2

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x64

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private notifyService(I)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    .line 431
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 435
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    if-eqz v0, :cond_0

    .line 437
    :try_start_0
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->callServiceMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "MFloatingSwitcher"

    const-string v0, "catch call service method exception"

    .line 439
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p1, "MFloatingSwitcher"

    const-string p2, "ifloatingservice is null"

    .line 442
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private onDragEnd()V
    .locals 3

    .line 463
    iget-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragEndTime:J

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isCalled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 466
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragEndTime:J

    .line 467
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 468
    iget-boolean v2, v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->resumed:Z

    if-nez v2, :cond_1

    .line 469
    iget-object v1, v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    .line 471
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lmiuix/appcompat/app/floatingactivity/multiapp/-$$Lambda$1Ek9IRpv5D4syR4YfsoyYt9G7qA;

    invoke-direct {v2, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/-$$Lambda$1Ek9IRpv5D4syR4YfsoyYt9G7qA;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static onSaveInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 1

    .line 171
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v0

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "floating_switcher_saved_key"

    .line 174
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method private unRegisterActivityFromService(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    iget-object v1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-interface {v0, v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->unregisterServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MFloatingSwitcher"

    const-string v1, "catch unregister service notify exception"

    .line 240
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private unbindService(Landroid/content/Context;)V
    .locals 1

    .line 283
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnected:Z

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method checkBg(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 103
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 104
    iget v0, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotifyIndex:I

    if-lez v0, :cond_2

    .line 105
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingDimBackground()V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    .line 426
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method getCurrentPageCount()I
    .locals 1

    .line 514
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getIdentity(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getLastActivityPanel()Landroid/view/View;
    .locals 1

    .line 327
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method getServicePageCount()I
    .locals 2

    const/4 v0, 0x6

    .line 519
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(I)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 521
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAboveActivityFinishing(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .locals 3

    .line 335
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 339
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_request_identity"

    .line 340
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getIdentity(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 341
    invoke-direct {p0, p1, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "check_finishing"

    .line 342
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isServiceAvailable()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notifyPreviousActivitySlide(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 493
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 497
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)V

    .line 506
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isServiceAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 509
    :cond_1
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->pendingTasks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method postEnterAnimationTask(Lmiuix/appcompat/app/AppCompatActivity;Ljava/lang/Runnable;)V
    .locals 1

    .line 482
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 485
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 487
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->pendingTasks:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method remove(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 407
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unRegisterActivityFromService(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 408
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 413
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unbindService(Landroid/content/Context;)V

    .line 414
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->clear()V

    :cond_1
    return-void
.end method

.method setLastActivityPanel(Landroid/view/View;)V
    .locals 1

    .line 331
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method updateResumeState(Lmiuix/appcompat/app/AppCompatActivity;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iput-boolean p2, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->resumed:Z

    :cond_0
    return-void
.end method
