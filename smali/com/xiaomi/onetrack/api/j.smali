.class Lcom/xiaomi/onetrack/api/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/f;

.field private b:I

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/f;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/j;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 331
    iput p1, p0, Lcom/xiaomi/onetrack/api/j;->b:I

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

    .line 374
    iget v0, p0, Lcom/xiaomi/onetrack/api/j;->c:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/onetrack/api/j;->d:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 377
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 379
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/j;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v3, v2, v0, v1}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;J)V

    .line 381
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "OneTrackImp"

    .line 382
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

    .line 358
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/j;->a:Lcom/xiaomi/onetrack/api/f;

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/j;->f:Z

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;Z)V

    .line 359
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/onetrack/api/j;->c:I

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/api/j;->d:J

    .line 361
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/j;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/onetrack/api/j;->e:Z

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Z)V

    .line 363
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "OneTrackImp"

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isAppStart:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/xiaomi/onetrack/api/j;->e:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 367
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/api/j;->e:Z

    .line 368
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/j;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/f;->f(Lcom/xiaomi/onetrack/api/f;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 344
    iget v0, p0, Lcom/xiaomi/onetrack/api/j;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/j;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->e(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/api/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/onetrack/api/d;->a(I)V

    .line 346
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/j;->e:Z

    .line 347
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/j;->f:Z

    .line 348
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a()V

    goto :goto_0

    .line 350
    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/j;->e:Z

    .line 352
    :goto_0
    iget v0, p0, Lcom/xiaomi/onetrack/api/j;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaomi/onetrack/api/j;->b:I

    const-string v0, "OneTrackImp"

    .line 353
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

    .line 388
    iget v0, p0, Lcom/xiaomi/onetrack/api/j;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/onetrack/api/j;->b:I

    .line 389
    iget v0, p0, Lcom/xiaomi/onetrack/api/j;->b:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/j;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->e(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/api/d;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/xiaomi/onetrack/api/d;->a(I)V

    .line 391
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/j;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->g(Lcom/xiaomi/onetrack/api/f;)V

    .line 392
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/j;->f:Z

    .line 393
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/j;->e:Z

    goto :goto_0

    .line 395
    :cond_0
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/j;->f:Z

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/j;->a:Lcom/xiaomi/onetrack/api/f;

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/j;->f:Z

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;Z)V

    const-string v0, "OneTrackImp"

    .line 398
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
