.class public final Lcom/google/android/gms/measurement/internal/zzfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Z

.field private zzc:Z

.field private zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfc;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zze:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzb:Z

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zze:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zzf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzd:Z

    return-void
.end method

.method public final zza()Z
    .locals 3

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzc:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzc:Z

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zze:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zzf()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzb:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzd:Z

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzd:Z

    return v0
.end method
