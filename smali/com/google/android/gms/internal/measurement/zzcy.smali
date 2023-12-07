.class final Lcom/google/android/gms/internal/measurement/zzcy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcx;


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzcy;


# instance fields
.field private final zzb:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Landroid/database/ContentObserver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzb:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzc:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzb:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzda;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzda;-><init>(Lcom/google/android/gms/internal/measurement/zzcy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzc:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcp;->zza:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzc:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzcy;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzcy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcy;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    if-nez v1, :cond_2

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {p0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzcy;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzcy;-><init>()V

    :goto_1
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzcy;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcy;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static declared-synchronized zza()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/measurement/zzcy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcy;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcy;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzcy;->zzb:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcy;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzcy;->zzc:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcy;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzcy;->zzb:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcy;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzcy;->zzc:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzcy;->zza:Lcom/google/android/gms/internal/measurement/zzcy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzb:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzdb;-><init>(Lcom/google/android/gms/internal/measurement/zzcy;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Lcom/google/android/gms/internal/measurement/zzcz;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Unable to read GServices for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "GservicesLoader"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final synthetic zzb(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzb:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzcp;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
