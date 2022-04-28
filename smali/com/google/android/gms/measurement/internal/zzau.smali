.class final synthetic Lcom/google/android/gms/measurement/internal/zzau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzeh;


# static fields
.field static final zza:Lcom/google/android/gms/measurement/internal/zzeh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzau;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzeh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzas;->zzcj()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
