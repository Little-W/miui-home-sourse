.class public Lio/branch/search/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/e$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/util/DisplayMetrics;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public final i:Lio/branch/search/y4;

.field public j:D

.field public k:D

.field public l:J

.field public final m:Ljava/lang/Object;

.field public final n:Landroid/content/Context;

.field public final o:Lio/branch/search/BranchConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bnc_no_value"

    iput-object v0, p0, Lio/branch/search/e;->a:Ljava/lang/String;

    const-string v0, "bnc_no_value"

    iput-object v0, p0, Lio/branch/search/e;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/e;->c:Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lio/branch/search/e;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/e;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/branch/search/e;->g:Z

    iput-boolean v0, p0, Lio/branch/search/e;->h:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/branch/search/e;->j:D

    iput-wide v0, p0, Lio/branch/search/e;->k:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/branch/search/e;->l:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/branch/search/e;->m:Ljava/lang/Object;

    iput-object p1, p0, Lio/branch/search/e;->n:Landroid/content/Context;

    iput-object p2, p0, Lio/branch/search/e;->o:Lio/branch/search/BranchConfiguration;

    new-instance p2, Lio/branch/search/y4;

    invoke-static {}, Lio/branch/search/p4;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lio/branch/search/y4;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V

    iput-object p2, p0, Lio/branch/search/e;->i:Lio/branch/search/y4;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BranchDeviceInfo.addDeviceInfo"

    invoke-static {p1, p0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/e;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BranchDeviceInfo.sync"

    invoke-static {v1, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lio/branch/search/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bnc_no_value"

    iput-object v0, p0, Lio/branch/search/e;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lio/branch/search/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bnc_no_value"

    iput-object v0, p0, Lio/branch/search/e;->b:Ljava/lang/String;

    :cond_1
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lio/branch/search/e;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/e;->c:Landroid/util/DisplayMetrics;

    :goto_1
    invoke-static {p1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/branch/search/e;->g:Z

    invoke-static {p1}, Lio/branch/search/Util;->isDefaultLauncher(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/branch/search/e;->h:Z

    invoke-static {p1}, Lio/branch/search/Util;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/e;->d:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/e;->e:Ljava/lang/String;

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/e;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lio/branch/search/e;->f:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v0, "BranchDeviceInfo.sync"

    invoke-static {v0, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/search/e;->l:J

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7

    iget-object v0, p0, Lio/branch/search/e;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lio/branch/search/e;->l:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lio/branch/search/e;->n:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lio/branch/search/e;->a(Landroid/content/Context;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lio/branch/search/e$a;->b:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/branch/search/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->f:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/branch/search/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->g:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/branch/search/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->h:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/branch/search/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->i:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/branch/search/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->j:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/branch/search/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->c:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/branch/search/e;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->e:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/branch/search/e;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->d:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANDROID"

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->k:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "discovery_android"

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->l:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/branch/search/internal/shared/BranchAndroidDependentUtilsKt;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->m:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lio/branch/search/e;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->p:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lio/branch/search/e;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->q:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/e;->i:Lio/branch/search/y4;

    invoke-virtual {v1}, Lio/branch/search/y4;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/branch/search/e;->n:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    sget-object v1, Lio/branch/search/e$a;->r:Lio/branch/search/e$a;

    invoke-virtual {v1}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lio/branch/search/e$a;->s:Lio/branch/search/e$a;

    invoke-virtual {v1}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lio/branch/search/p2;->b(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lio/branch/search/e;->c:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_2

    sget-object v0, Lio/branch/search/e$a;->v:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/e;->c:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->w:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/e;->c:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->x:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/e;->c:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lio/branch/search/e;->o:Lio/branch/search/BranchConfiguration;

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->v()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lio/branch/search/e$a;->t:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lio/branch/search/e;->j:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/e$a;->u:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lio/branch/search/e;->k:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lio/branch/search/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/branch/search/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    sget-object v2, Lio/branch/search/e$a;->n:Lio/branch/search/e$a;

    invoke-virtual {v2}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    if-eqz v1, :cond_5

    sget-object v0, Lio/branch/search/e$a;->o:Lio/branch/search/e$a;

    invoke-virtual {v0}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()D
    .locals 2

    iget-wide v0, p0, Lio/branch/search/e;->j:D

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()D
    .locals 2

    iget-wide v0, p0, Lio/branch/search/e;->k:D

    return-wide v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
