.class public final Lcom/google/android/gms/measurement/internal/zzfm;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzfp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzfp;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Receiver called with null intent"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Local receiver got"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Starting wakeful intent."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfp;->doStartService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string p0, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Install Referrer Broadcasts are deprecated"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
