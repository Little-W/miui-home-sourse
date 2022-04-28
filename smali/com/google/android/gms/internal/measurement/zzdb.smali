.class final synthetic Lcom/google/android/gms/internal/measurement/zzdb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzcy;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzcy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdb;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdb;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdb;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdb;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcy;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
