.class final Lcom/google/android/gms/internal/measurement/zzfq;
.super Lcom/google/android/gms/internal/measurement/zzfg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzfg<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/measurement/zzfc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfc<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient zzb:Lcom/google/android/gms/internal/measurement/zzfb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfb<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfc;Lcom/google/android/gms/internal/measurement/zzfb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzfc<",
            "TK;*>;",
            "Lcom/google/android/gms/internal/measurement/zzfb<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzb:Lcom/google/android/gms/internal/measurement/zzfb;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

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

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfc;->size()I

    move-result p0

    return p0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->zze()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzey;->zza([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/zzfx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfx<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->zze()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfx;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzfb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfb<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzb:Lcom/google/android/gms/internal/measurement/zzfb;

    return-object p0
.end method

.method final zzf()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
