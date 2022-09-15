.class Lcom/xiaomi/onetrack/api/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/h;

.field private b:I

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/h;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 383
    iput p1, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 426
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->c:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/onetrack/api/m;->d:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 429
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 431
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v3, v2, v0, v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;J)V

    .line 433
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "OneTrackImp"

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPaused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;Z)V

    .line 411
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/onetrack/api/m;->c:I

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/api/m;->d:J

    .line 413
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Z)V

    .line 415
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "OneTrackImp"

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isAppStart:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 419
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 420
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/h;->g(Lcom/xiaomi/onetrack/api/h;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 396
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/onetrack/api/e;->a(I)V

    .line 398
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 399
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    .line 400
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a()V

    goto :goto_0

    .line 402
    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 404
    :goto_0
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    const-string v0, "OneTrackImp"

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 440
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    .line 441
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/xiaomi/onetrack/api/e;->a(I)V

    .line 443
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->h(Lcom/xiaomi/onetrack/api/h;)V

    .line 444
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    .line 445
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    goto :goto_0

    .line 447
    :cond_0
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;Z)V

    const-string v0, "OneTrackImp"

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
