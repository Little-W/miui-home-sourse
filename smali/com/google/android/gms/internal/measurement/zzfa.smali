.class final Lcom/google/android/gms/internal/measurement/zzfa;
.super Lcom/google/android/gms/internal/measurement/zzej;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzej<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzfb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfb<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfb;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzfb<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfb;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzej;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfa;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfa;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfb;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
