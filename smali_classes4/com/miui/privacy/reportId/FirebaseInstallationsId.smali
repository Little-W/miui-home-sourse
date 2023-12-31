.class public Lcom/miui/privacy/reportId/FirebaseInstallationsId;
.super Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;
.source "FirebaseInstallationsId.java"


# direct methods
.method public constructor <init>(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;-><init>(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V

    return-void
.end method

.method static synthetic lambda$getFromRemote$0(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;->onSucceed(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;->onFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getFromRemote(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance()Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/miui/privacy/reportId/-$$Lambda$FirebaseInstallationsId$Fsr2B0zs4B27mUugSNcn8KKIEBs;

    invoke-direct {v0, p1}, Lcom/miui/privacy/reportId/-$$Lambda$FirebaseInstallationsId$Fsr2B0zs4B27mUugSNcn8KKIEBs;-><init>(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
