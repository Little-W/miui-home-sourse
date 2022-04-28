.class final Lcom/google/android/gms/internal/measurement/zzew;
.super Lcom/google/android/gms/internal/measurement/zzfj;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfj<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzew;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzew;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzew;->zza:Lcom/google/android/gms/internal/measurement/zzew;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfp;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfj;-><init>(Lcom/google/android/gms/internal/measurement/zzfc;ILjava/util/Comparator;)V

    return-void
.end method
