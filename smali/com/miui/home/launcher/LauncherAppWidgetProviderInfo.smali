.class public Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "LauncherAppWidgetProviderInfo.java"


# instance fields
.field private mAppWidgetId:I

.field public mWidgetCategory:I

.field public providerInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/16 v0, -0x3e8

    .line 30
    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mWidgetCategory:I

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mAppWidgetId:I

    const/4 v0, 0x6

    .line 34
    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->itemType:I

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mAppWidgetId:I

    return v0
.end method

.method public setAppWidgetId(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mAppWidgetId:I

    return-void
.end method
