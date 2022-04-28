.class final Lcom/google/android/gms/measurement/internal/zzfd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzfa;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Lcom/google/android/gms/measurement/internal/zzfa;)Lcom/google/android/gms/measurement/internal/zzkl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Z)V

    return-void
.end method
