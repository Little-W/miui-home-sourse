.class final Lcom/google/android/gms/internal/measurement/zzgr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/measurement/zzgp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgp;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgp;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzgy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgp;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgy;

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzgy;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzgy;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzgy;->zza()B

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgp;->zza(B)I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzgy;->zza()B

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzgp;->zza(B)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgp;->zza()I

    move-result p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgp;->zza()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
