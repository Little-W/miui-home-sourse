.class final Lcom/google/android/gms/internal/measurement/zzep;
.super Lcom/google/android/gms/internal/measurement/zzet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzem;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzet;-><init>(Lcom/google/android/gms/internal/measurement/zzem;Lcom/google/android/gms/internal/measurement/zzep;)V

    return-void
.end method


# virtual methods
.method final zza(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzem;->zzb:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method
