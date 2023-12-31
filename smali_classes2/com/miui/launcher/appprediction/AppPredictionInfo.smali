.class public Lcom/miui/launcher/appprediction/AppPredictionInfo;
.super Ljava/lang/Object;
.source "AppPredictionInfo.java"


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/launcher/appprediction/AppPredictionInfo;->mPackageName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/miui/launcher/appprediction/AppPredictionInfo;->mClassName:Ljava/lang/String;

    .line 17
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/miui/launcher/appprediction/AppPredictionInfo;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/launcher/appprediction/AppPredictionInfo;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/launcher/appprediction/AppPredictionInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/launcher/appprediction/AppPredictionInfo;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method
