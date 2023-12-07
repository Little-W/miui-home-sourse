.class public Lcom/google/android/gms/internal/measurement/zzio;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzhl;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/measurement/zzgp;

.field private volatile zzc:Lcom/google/android/gms/internal/measurement/zzjj;

.field private volatile zzd:Lcom/google/android/gms/internal/measurement/zzgp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhl;->zza()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzio;->zza:Lcom/google/android/gms/internal/measurement/zzhl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzjj;)Lcom/google/android/gms/internal/measurement/zzjj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzij; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzgp;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;

    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzio;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzio;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzio;->zzc()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzio;->zzc()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgp;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzbv()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzio;->zzb(Lcom/google/android/gms/internal/measurement/zzjj;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzjj;->zzbv()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzio;->zzb(Lcom/google/android/gms/internal/measurement/zzjj;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzjj;)Lcom/google/android/gms/internal/measurement/zzjj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzb:Lcom/google/android/gms/internal/measurement/zzgp;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgp;->zza()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzbp()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzgp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzgp;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzbj()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:Lcom/google/android/gms/internal/measurement/zzgp;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
