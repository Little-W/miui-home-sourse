.class public Lcom/google/android/gms/internal/measurement/zzhl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzhl$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Z = false

.field private static zzb:Z = true

.field private static volatile zzc:Lcom/google/android/gms/internal/measurement/zzhl;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzhl;

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzhl;


# instance fields
.field private final zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/measurement/zzhl$zza;",
            "Lcom/google/android/gms/internal/measurement/zzhy$zzf<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhl;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhl;->zze:Lcom/google/android/gms/internal/measurement/zzhl;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zzf:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zzf:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzhl;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Lcom/google/android/gms/internal/measurement/zzhl;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/measurement/zzhl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Lcom/google/android/gms/internal/measurement/zzhl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhl;->zze:Lcom/google/android/gms/internal/measurement/zzhl;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Lcom/google/android/gms/internal/measurement/zzhl;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzhl;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzhl;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhl;->zzd:Lcom/google/android/gms/internal/measurement/zzhl;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhl;->zzd:Lcom/google/android/gms/internal/measurement/zzhl;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzhl;->zzd:Lcom/google/android/gms/internal/measurement/zzhl;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzjj;I)Lcom/google/android/gms/internal/measurement/zzhy$zzf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/zzjj;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/zzhy$zzf<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zzf:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhl$zza;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhl$zza;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhy$zzf;

    return-object p0
.end method
