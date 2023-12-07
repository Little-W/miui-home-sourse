.class public final Lcom/google/android/gms/measurement/internal/zzgy;
.super Ljava/lang/Object;


# instance fields
.field final zza:Landroid/content/Context;

.field zzb:Ljava/lang/String;

.field zzc:Ljava/lang/String;

.field zzd:Ljava/lang/String;

.field zze:Ljava/lang/Boolean;

.field zzf:J

.field zzg:Lcom/google/android/gms/internal/measurement/zzae;

.field zzh:Z

.field zzi:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgy;->zzh:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgy;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgy;->zzi:Ljava/lang/Long;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgy;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzae;->zzf:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgy;->zzb:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzae;->zze:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgy;->zzc:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzae;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgy;->zzd:Ljava/lang/String;

    iget-boolean p1, p2, Lcom/google/android/gms/internal/measurement/zzae;->zzc:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzgy;->zzh:Z

    iget-wide v1, p2, Lcom/google/android/gms/internal/measurement/zzae;->zzb:J

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgy;->zzf:J

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgy;->zze:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
