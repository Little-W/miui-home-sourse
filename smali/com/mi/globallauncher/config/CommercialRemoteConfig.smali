.class public final enum Lcom/mi/globallauncher/config/CommercialRemoteConfig;
.super Ljava/lang/Enum;
.source "CommercialRemoteConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/config/CommercialRemoteConfig$RemoteConfigListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mi/globallauncher/config/CommercialRemoteConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/globallauncher/config/CommercialRemoteConfig;

.field public static final enum mInstance:Lcom/mi/globallauncher/config/CommercialRemoteConfig;


# instance fields
.field private disabled:Z

.field private mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

.field private mRemoteConfigListener:Lcom/mi/globallauncher/config/CommercialRemoteConfig$RemoteConfigListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    const/4 v1, 0x0

    const-string v2, "mInstance"

    invoke-direct {v0, v2, v1}, Lcom/mi/globallauncher/config/CommercialRemoteConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mInstance:Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    .line 9
    sget-object v2, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mInstance:Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->$VALUES:[Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->disabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/globallauncher/config/CommercialRemoteConfig;
    .locals 1

    .line 9
    const-class v0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    return-object p0
.end method

.method public static values()[Lcom/mi/globallauncher/config/CommercialRemoteConfig;
    .locals 1

    .line 9
    sget-object v0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->$VALUES:[Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    invoke-virtual {v0}, [Lcom/mi/globallauncher/config/CommercialRemoteConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    return-object v0
.end method


# virtual methods
.method public disable()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->disabled:Z

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->disabled:Z

    return-void
.end method

.method public fetchRemoteConfig()V
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->disabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "fetch remote config"

    .line 51
    invoke-static {v0}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0xe10

    .line 53
    iget-object v2, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;->getConfigSettings()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->isDeveloperModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetch(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/config/-$$Lambda$CommercialRemoteConfig$0gCIDPFjn51qS6C7Q3lAz7KCXzg;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/config/-$$Lambda$CommercialRemoteConfig$0gCIDPFjn51qS6C7Q3lAz7KCXzg;-><init>(Lcom/mi/globallauncher/config/CommercialRemoteConfig;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/config/-$$Lambda$CommercialRemoteConfig$myqlnhMLIQDnfrivuBIs5ZehCro;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/config/-$$Lambda$CommercialRemoteConfig$myqlnhMLIQDnfrivuBIs5ZehCro;-><init>(Lcom/mi/globallauncher/config/CommercialRemoteConfig;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_2
    :goto_0
    return-void
.end method

.method public final getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public init()Lcom/mi/globallauncher/config/CommercialRemoteConfig;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 20
    :try_start_0
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    .line 21
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/globallauncher/manager/BranchImplement;->isDebug()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setDeveloperModeEnabled(Z)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V

    .line 24
    iget-object v0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    sget v1, Lcom/mi/globallauncher/R$xml;->remote_config_defaults:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaults(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public isInitialized()Z
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$fetchRemoteConfig$0$CommercialRemoteConfig(Ljava/lang/Void;)V
    .locals 0

    const-string p1, "fetch remote config successful"

    .line 57
    invoke-static {p1}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activateFetched()Z

    .line 59
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mRemoteConfigListener:Lcom/mi/globallauncher/config/CommercialRemoteConfig$RemoteConfigListener;

    if-eqz p0, :cond_0

    .line 60
    invoke-interface {p0}, Lcom/mi/globallauncher/config/CommercialRemoteConfig$RemoteConfigListener;->onFetchConfigSucceed()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$fetchRemoteConfig$1$CommercialRemoteConfig(Ljava/lang/Exception;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetch remote config failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mRemoteConfigListener:Lcom/mi/globallauncher/config/CommercialRemoteConfig$RemoteConfigListener;

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0}, Lcom/mi/globallauncher/config/CommercialRemoteConfig$RemoteConfigListener;->onFetchConfigFailed()V

    :cond_0
    return-void
.end method

.method public setRemoteConfigListener(Lcom/mi/globallauncher/config/CommercialRemoteConfig$RemoteConfigListener;)Lcom/mi/globallauncher/config/CommercialRemoteConfig;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mRemoteConfigListener:Lcom/mi/globallauncher/config/CommercialRemoteConfig$RemoteConfigListener;

    return-object p0
.end method
