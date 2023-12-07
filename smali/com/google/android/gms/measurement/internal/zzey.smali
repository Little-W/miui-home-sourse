.class final Lcom/google/android/gms/measurement/internal/zzey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzez;

.field private final zzb:I

.field private final zzc:Ljava/lang/Throwable;

.field private final zzd:[B

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzez;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzez;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzey;->zza:Lcom/google/android/gms/measurement/internal/zzez;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzey;->zzb:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzey;->zzc:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzey;->zzd:[B

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzey;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzey;->zzf:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzez;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzew;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/measurement/internal/zzey;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzez;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzey;->zza:Lcom/google/android/gms/measurement/internal/zzez;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzey;->zze:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzey;->zzb:I

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzey;->zzc:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzey;->zzd:[B

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzey;->zzf:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
