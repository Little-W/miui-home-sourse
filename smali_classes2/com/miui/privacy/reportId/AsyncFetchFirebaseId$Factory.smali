.class public Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$Factory;
.super Ljava/lang/Object;
.source "AsyncFetchFirebaseId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public static create(Landroid/content/Context;Ljava/lang/String;Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;
    .locals 1

    const-string v0, "5_1"

    .line 20
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance p0, Lcom/miui/privacy/reportId/FirebaseInstallationsId;

    invoke-direct {p0, p2}, Lcom/miui/privacy/reportId/FirebaseInstallationsId;-><init>(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V

    return-object p0

    :cond_0
    const-string v0, "5_2"

    .line 23
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 24
    new-instance p1, Lcom/miui/privacy/reportId/FirebaseAppInstanceId;

    invoke-direct {p1, p0, p2}, Lcom/miui/privacy/reportId/FirebaseAppInstanceId;-><init>(Landroid/content/Context;Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
