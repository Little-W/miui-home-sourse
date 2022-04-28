.class final synthetic Lcom/google/android/gms/measurement/internal/zzjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjq;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzeq;

.field private final zzd:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;ILcom/google/android/gms/measurement/internal/zzeq;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zzc:Lcom/google/android/gms/measurement/internal/zzeq;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zzd:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zzc:Lcom/google/android/gms/measurement/internal/zzeq;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zzd:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(ILcom/google/android/gms/measurement/internal/zzeq;Landroid/content/Intent;)V

    return-void
.end method
