.class final Lcom/google/android/gms/internal/measurement/zzfs;
.super Lcom/google/android/gms/internal/measurement/zzfg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzfg<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzfs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfs<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:[Ljava/lang/Object;

.field private final transient zzd:I

.field private final transient zze:I

.field private final transient zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzfs;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzfs;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzfs;->zza:Lcom/google/android/gms/internal/measurement/zzfs;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzb:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zze:I

    iput p5, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzf:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzc:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzez;->zza(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzd:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zze:I

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->zza()Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzf:I

    return p0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzf:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzf:I

    add-int/2addr p2, p0

    return p2
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/zzfx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfx<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->zze()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfx;

    return-object p0
.end method

.method final zzb()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzb:[Ljava/lang/Object;

    return-object p0
.end method

.method final zzc()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method final zzd()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzf:I

    return p0
.end method

.method final zzf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method final zzg()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method final zzh()Lcom/google/android/gms/internal/measurement/zzfb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfb<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzb:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfs;->zzf:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfb;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object p0

    return-object p0
.end method
