.class final Lcom/google/android/gms/measurement/internal/zzfd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzfa;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzb:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Lcom/google/android/gms/measurement/internal/zzfa;)Lcom/google/android/gms/measurement/internal/zzkl;

    move-result-object v0

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Z

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Z)V

    return-void
.end method
