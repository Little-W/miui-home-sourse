.class public final Lcom/google/android/gms/internal/measurement/zznk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzec<",
        "Lcom/google/android/gms/internal/measurement/zznn;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zznk;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzec<",
            "Lcom/google/android/gms/internal/measurement/zznn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznk;->zza:Lcom/google/android/gms/internal/measurement/zznk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznm;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zznk;-><init>(Lcom/google/android/gms/internal/measurement/zzec;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzec<",
            "Lcom/google/android/gms/internal/measurement/zznn;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lcom/google/android/gms/internal/measurement/zzec;

    return-void
.end method

.method public static zzb()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznk;->zza:Lcom/google/android/gms/internal/measurement/zznk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznk;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznn;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznk;->zza:Lcom/google/android/gms/internal/measurement/zznk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznk;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznn;->zzb()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzec;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zznn;

    return-object p0
.end method
