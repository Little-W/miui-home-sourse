.class public final Lcom/google/android/gms/measurement/internal/zzfz;
.super Lcom/google/android/gms/measurement/internal/zzel;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzkl;

.field private zzb:Ljava/lang/Boolean;

.field private zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzel;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zzc:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfz;)Lcom/google/android/gms/measurement/internal/zzkl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    return-object p0
.end method

.method private final zza(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zzb:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zzc:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzm()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {p2, v2}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzm()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isUidGoogleSigned(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zzb:Ljava/lang/Boolean;

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zzb:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zzc:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzm()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {p2, v2, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zzc:Ljava/lang/String;

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zzc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    const-string v2, "Unknown calling package name \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Measurement Service called with invalid calling package. appId"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    throw p2

    :cond_7
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Measurement Service called without app package"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzk()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p0

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzn;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzn;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzku;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzgm;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzkw;

    if-nez p2, :cond_1

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zzd(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzku;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Lcom/google/android/gms/measurement/internal/zzkw;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Failed to get user properties. appId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzn;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzn;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzz;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzge;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzge;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p2, "Failed to get conditional user properties"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzz;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgh;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgh;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p2, "Failed to get conditional user properties as"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzku;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgf;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgf;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzkw;

    if-nez p4, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzku;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Lcom/google/android/gms/measurement/internal/zzkw;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Failed to get user properties as. appId"

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzn;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/measurement/internal/zzn;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzku;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgc;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgc;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzkw;

    if-nez p3, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzku;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Lcom/google/android/gms/measurement/internal/zzkw;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    iget-object p2, p4, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Failed to query user properties. appId"

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzgo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzgo;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznw;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbz:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzfy;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzn;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgi;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;Z)V

    new-instance p3, Lcom/google/android/gms/measurement/internal/zzgl;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgl;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgn;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgn;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzgp;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/measurement/internal/zzn;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzz;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzz;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzgd;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzz;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzz;)V

    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzga;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;)[B
    .locals 9

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zzj()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Log and bundle. event"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkl;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgk;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v5, "Log and bundle returned null. appId"

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B

    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzkl;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v5

    div-long/2addr v5, v2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkl;->zzj()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzj()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to log and bundle. appId, event, error"

    invoke-virtual {v1, p1, p2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzaq;
    .locals 7

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    const-string v0, "_cmp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zza()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    const-string v1, "_cis"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "referrer broadcast"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "referrer API"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Event has been filtered "

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    const-string v2, "_cmpx"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzap;Ljava/lang/String;J)V

    return-object p0

    :cond_3
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzgb;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zzd(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzgg;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzgj;-><init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzf()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
