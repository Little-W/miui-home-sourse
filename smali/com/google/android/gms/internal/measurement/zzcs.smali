.class final synthetic Lcom/google/android/gms/internal/measurement/zzcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zza:Lcom/google/android/gms/internal/measurement/zzct;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zza:Lcom/google/android/gms/internal/measurement/zzct;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzct;->zzd()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
