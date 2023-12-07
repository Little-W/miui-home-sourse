.class public abstract Lcom/google/android/gms/internal/measurement/zzgh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjo;


# instance fields
.field private zza:Z

.field private zzb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zza:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzb:I

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgh;->zza()Lcom/google/android/gms/internal/measurement/zzjo;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/zzjo;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "clone() should be implemented by subclasses."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
