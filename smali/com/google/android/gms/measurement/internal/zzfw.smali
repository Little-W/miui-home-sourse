.class final Lcom/google/android/gms/measurement/internal/zzfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzgy;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzfu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfu;Lcom/google/android/gms/measurement/internal/zzgy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zza:Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zza:Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/measurement/internal/zzfu;Lcom/google/android/gms/measurement/internal/zzgy;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zza:Lcom/google/android/gms/measurement/internal/zzgy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgy;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/zzae;)V

    return-void
.end method
