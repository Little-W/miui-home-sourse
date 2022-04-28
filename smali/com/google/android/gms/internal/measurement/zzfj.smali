.class public Lcom/google/android/gms/internal/measurement/zzfj;
.super Lcom/google/android/gms/internal/measurement/zzfe;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzfk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzfe<",
        "TK;TV;>;",
        "Lcom/google/android/gms/internal/measurement/zzfk<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/measurement/zzfg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfg<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfc;ILjava/util/Comparator;)V
    .locals 0
    .param p3    # Ljava/util/Comparator;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzfc<",
            "TK;",
            "Lcom/google/android/gms/internal/measurement/zzfg<",
            "TV;>;>;I",
            "Ljava/util/Comparator<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfe;-><init>(Lcom/google/android/gms/internal/measurement/zzfc;I)V

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfs;->zza:Lcom/google/android/gms/internal/measurement/zzfs;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zza:Lcom/google/android/gms/internal/measurement/zzfg;

    return-void
.end method
