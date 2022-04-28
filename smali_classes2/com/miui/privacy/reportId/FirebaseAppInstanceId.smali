.class public Lcom/miui/privacy/reportId/FirebaseAppInstanceId;
.super Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;
.source "FirebaseAppInstanceId.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;-><init>(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V

    .line 12
    iput-object p1, p0, Lcom/miui/privacy/reportId/FirebaseAppInstanceId;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic lambda$getFromRemote$0(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;->onSucceed(Ljava/lang/String;)V

    goto :goto_0

    .line 22
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
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/miui/privacy/reportId/FirebaseAppInstanceId;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getAppInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/miui/privacy/reportId/-$$Lambda$FirebaseAppInstanceId$Q5X5WXJ0fkZXv0PSaa96JY_tA2M;

    invoke-direct {v1, p1}, Lcom/miui/privacy/reportId/-$$Lambda$FirebaseAppInstanceId$Q5X5WXJ0fkZXv0PSaa96JY_tA2M;-><init>(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
