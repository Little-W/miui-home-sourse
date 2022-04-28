.class final synthetic Lcom/google/android/gms/measurement/internal/zzha;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzhb;

.field private final zzb:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhb;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzha;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzha;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzha;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzha;->zzb:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
