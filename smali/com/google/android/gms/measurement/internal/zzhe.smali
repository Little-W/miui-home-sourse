.class final Lcom/google/android/gms/measurement/internal/zzhe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhb;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zza()V

    return-void
.end method
