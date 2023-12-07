.class final Lcom/google/android/gms/internal/measurement/zzfl;
.super Lcom/google/android/gms/internal/measurement/zzfx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfx<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zza:Z

.field private final synthetic zzb:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfx;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zza:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zza:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
