.class final Lcom/google/android/gms/measurement/internal/zzkl$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzah;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

.field zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:J

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzkl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zze:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzkk;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkl$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;)J
    .locals 4

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    return-void
.end method

.method public final zza(JLcom/google/android/gms/internal/measurement/zzcd$zzc;)Z
    .locals 7

    .line 5
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzc:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzc:Ljava/util/List;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzb:Ljava/util/List;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzb:Ljava/util/List;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzc:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;)J

    move-result-wide v2

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    .line 12
    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzd:J

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbp()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 14
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzh:Lcom/google/android/gms/measurement/internal/zzej;

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_3

    return v1

    .line 19
    :cond_3
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzd:J

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzc:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzb:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzc:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 23
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzas;->zzi:Lcom/google/android/gms/measurement/internal/zzej;

    .line 24
    invoke-virtual {p1, v4}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-lt p0, p1, :cond_4

    return v1

    :cond_4
    return p2
.end method
