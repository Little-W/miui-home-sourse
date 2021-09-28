.class public Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;
.super Ljava/lang/Object;
.source "OfflineWidgetBean.java"


# instance fields
.field private packageName:Ljava/lang/String;

.field private sendNotification:Ljava/lang/Integer;

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

.field private widgetProviderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSendNotification()Ljava/lang/Integer;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->sendNotification:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->type:Ljava/lang/Integer;

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

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->versionList:Ljava/util/List;

    return-object v0
.end method

.method public getWidgetProviderName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->widgetProviderName:Ljava/lang/String;

    return-object v0
.end method
