.class final synthetic Lcom/google/android/gms/measurement/internal/zzfy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzfz;

.field private final zzb:Lcom/google/android/gms/measurement/internal/zzn;

.field private final zzc:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzn;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zza:Lcom/google/android/gms/measurement/internal/zzfz;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzb:Lcom/google/android/gms/measurement/internal/zzn;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zza:Lcom/google/android/gms/measurement/internal/zzfz;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzb:Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzc:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Lcom/google/android/gms/measurement/internal/zzn;Landroid/os/Bundle;)V

    return-void
.end method
