.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@18.0.0"


# static fields
.field private static volatile zza:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzag;

.field private zzc:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzag;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/zzag;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzag;

    move-result-object p0

    .line 5
    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method public static getScionFrontendApiImplementation(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzia;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-static {p0, v0, v0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzag;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 68
    :cond_0
    new-instance p1, Lcom/google/firebase/analytics/zzd;

    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/zzd;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/android/gms/internal/measurement/zzag;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/zzag;

    return-object p0
.end method

.method private final zza()Ljava/util/concurrent/ExecutorService;
    .locals 10

    .line 37
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/google/firebase/analytics/zzb;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v9, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/analytics/zzb;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Ljava/util/concurrent/ExecutorService;

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getAppInstanceId()Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/analytics/zza;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/zza;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    .line 44
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 47
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/zzag;

    const/4 v2, 0x5

    const-string v3, "Failed to schedule task for getAppInstanceId"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzag;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getFirebaseInstanceId()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 55
    :try_start_0
    invoke-static {}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance()Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 56
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 60
    :catch_1
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Firebase Installations getId Task has timed out."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setAnalyticsCollectionEnabled(Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
