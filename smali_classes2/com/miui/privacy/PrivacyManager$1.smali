.class Lcom/miui/privacy/PrivacyManager$1;
.super Ljava/lang/Object;
.source "PrivacyManager.java"

# interfaces
.implements Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/privacy/PrivacyManager;->reportPrivacyData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSucceed$0(Lcom/miui/privacy/bean/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/miui/privacy/utils/PrivacyPreferenceUtils;->getInstance()Lcom/miui/privacy/utils/PrivacyPreferenceUtils;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/privacy/utils/PrivacyPreferenceUtils;->setPrivacyDataReported(Z)V

    return-void
.end method

.method static synthetic lambda$onSucceed$1(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ResetClient"

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throwable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3

    const-string v0, "reportFirebaseId"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firebase app instance id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "ResetClient"

    const-string v1, "success"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    const-string v1, "5_2"

    invoke-static {v0, v1, p1}, Lcom/miui/privacy/reportId/PrivacyResetClient;->reportPrivacyAgreement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$LxF-ERxLpzRf0kLzcBZ2HbolyJ4;->INSTANCE:Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$LxF-ERxLpzRf0kLzcBZ2HbolyJ4;

    sget-object v1, Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$6Tzz2jg3kYxLCSMuXtxHoEl3fd8;->INSTANCE:Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$6Tzz2jg3kYxLCSMuXtxHoEl3fd8;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
