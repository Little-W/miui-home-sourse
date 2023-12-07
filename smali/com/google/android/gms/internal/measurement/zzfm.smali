.class final Lcom/google/android/gms/internal/measurement/zzfm;
.super Lcom/google/android/gms/internal/measurement/zzfb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzfb<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzfb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfm;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzfm;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfm;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzc:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(II)I

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzb:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzc:I

    return p0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzc:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzc:I

    add-int/2addr p2, p0

    return p2
.end method

.method final zzb()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzb:[Ljava/lang/Object;

    return-object p0
.end method

.method final zzc()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method final zzd()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzc:I

    return p0
.end method

.method final zzf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
