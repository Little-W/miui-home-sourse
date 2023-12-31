.class public final Lcom/google/android/gms/internal/measurement/zzds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzec<",
            "Lcom/google/android/gms/internal/measurement/zzfj<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdv;->zza:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzds;->zza:Lcom/google/android/gms/internal/measurement/zzec;

    return-void
.end method

.method static final synthetic zza()Lcom/google/android/gms/internal/measurement/zzfj;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zza()Lcom/google/android/gms/internal/measurement/zzfj;

    move-result-object v0

    return-object v0
.end method
