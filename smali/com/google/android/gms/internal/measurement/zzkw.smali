.class final Lcom/google/android/gms/internal/measurement/zzkw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzku;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzku;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:Lcom/google/android/gms/internal/measurement/zzku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:Lcom/google/android/gms/internal/measurement/zzku;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzku;->zza(Lcom/google/android/gms/internal/measurement/zzku;)Lcom/google/android/gms/internal/measurement/zziq;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zziq;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zza:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zza:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zza:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final remove()V
    .locals 0

    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
