.class public Lcom/google/android/gms/measurement/AppMeasurement;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/measurement/AppMeasurement;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzfu;

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzia;

.field private final zzd:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzfu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/android/gms/measurement/AppMeasurement;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 11

    sget-object p1, Lcom/google/android/gms/measurement/AppMeasurement;->zza:Lcom/google/android/gms/measurement/AppMeasurement;

    if-nez p1, :cond_2

    const-class p1, Lcom/google/android/gms/measurement/AppMeasurement;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/measurement/AppMeasurement;->zza:Lcom/google/android/gms/measurement/AppMeasurement;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzia;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/measurement/internal/zzia;)V

    sput-object p0, Lcom/google/android/gms/measurement/AppMeasurement;->zza:Lcom/google/android/gms/measurement/AppMeasurement;

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/google/android/gms/internal/measurement/zzae;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/measurement/zzae;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p0, v10, p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p0

    new-instance p2, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    sput-object p2, Lcom/google/android/gms/measurement/AppMeasurement;->zza:Lcom/google/android/gms/measurement/AppMeasurement;

    :cond_1
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    sget-object p0, Lcom/google/android/gms/measurement/AppMeasurement;->zza:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzia;
    .locals 7

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "getScionFrontendApiImplementation"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    aput-object p1, v1, v6

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzia;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzy()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->zza(Ljava/lang/String;J)V

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhb;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzy()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->zzb(Ljava/lang/String;J)V

    return-void
.end method

.method public generateEventId()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzia;->zze()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkv;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzia;->zzc()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    :goto_1
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object p1
.end method

.method public getCurrentScreenClass()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzaj()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentScreenName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzia;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzai()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzia;->zzd()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzak()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzia;->zzc(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/16 p0, 0x19

    return p0
.end method

.method protected getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzc:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->zza()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->zza()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Landroid/os/Bundle;)V

    return-void
.end method
