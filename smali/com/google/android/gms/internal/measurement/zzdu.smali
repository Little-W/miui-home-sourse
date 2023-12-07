.class final Lcom/google/android/gms/internal/measurement/zzdu;
.super Lcom/google/android/gms/internal/measurement/zzdy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzdy<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzdu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdu<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzdu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdu;->zza:Lcom/google/android/gms/internal/measurement/zzdu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzdy;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x79a31aac

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Optional.absent()"

    return-object p0
.end method

.method public final zza()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Optional.get() cannot be called on an absent value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
