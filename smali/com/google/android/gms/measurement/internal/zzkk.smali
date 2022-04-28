.class final Lcom/google/android/gms/measurement/internal/zzkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzks;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzkl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzb:Lcom/google/android/gms/measurement/internal/zzkl;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zza:Lcom/google/android/gms/measurement/internal/zzks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzb:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zza:Lcom/google/android/gms/measurement/internal/zzks;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzb:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()V

    return-void
.end method
