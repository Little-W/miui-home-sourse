.class final Lcom/google/android/gms/measurement/internal/zzkq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Landroid/os/Bundle;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzko;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzko;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:Lcom/google/android/gms/measurement/internal/zzko;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:Lcom/google/android/gms/measurement/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzko;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzk()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zza:Ljava/lang/String;

    const-string v3, "_err"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Landroid/os/Bundle;

    const-string v5, "auto"

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:Lcom/google/android/gms/measurement/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzko;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 5
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:Lcom/google/android/gms/measurement/internal/zzko;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzko;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zza:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;)V

    return-void
.end method
