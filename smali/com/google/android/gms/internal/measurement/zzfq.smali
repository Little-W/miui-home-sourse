.class final Lcom/google/android/gms/internal/measurement/zzfq;
.super Lcom/google/android/gms/internal/measurement/zzfg;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


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

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzb:Lcom/google/android/gms/internal/measurement/zzfb;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->zza()Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfc;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->zze()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzey;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/zzfx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfx<",
            "TK;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->zze()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzey;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfx;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzfb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfb<",
            "TK;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzb:Lcom/google/android/gms/internal/measurement/zzfb;

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
