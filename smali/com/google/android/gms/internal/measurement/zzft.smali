.class final Lcom/google/android/gms/internal/measurement/zzft;
.super Lcom/google/android/gms/internal/measurement/zzfb;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfb<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient zza:[Ljava/lang/Object;

.field private final transient zzb:I

.field private final transient zzc:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfb;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zza:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzb:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(II)I

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zza:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzb:I

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 9
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:I

    return p0
.end method

.method final zzf()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
