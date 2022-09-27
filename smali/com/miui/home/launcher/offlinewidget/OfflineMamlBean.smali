.class public Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;
.super Ljava/lang/Object;
.source "OfflineMamlBean.java"


# instance fields
.field private productId:Ljava/lang/String;

.field private sendNotification:Ljava/lang/Integer;

.field private spanX:Ljava/lang/Integer;

.field private spanY:Ljava/lang/Integer;

.field private type:Ljava/lang/Integer;

.field private versionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendNotification()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->sendNotification:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSpanX()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->spanX:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSpanY()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->spanY:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVersionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->versionList:Ljava/util/List;

    return-object v0
.end method
