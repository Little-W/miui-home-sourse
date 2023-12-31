.class public Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;
.super Ljava/lang/Object;
.source "UpgradeLayoutContext.java"


# instance fields
.field emptyPositionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/miui/home/launcher/upgradelayout/EmptyPosition;",
            ">;"
        }
    .end annotation
.end field

.field mAppwidgetHost:Landroid/appwidget/AppWidgetHost;

.field mContext:Landroid/content/Context;

.field mDb:Landroid/database/sqlite/SQLiteDatabase;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mScreenIds:[J

.field mTelephoneIconIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field newFolderId:J


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Landroid/appwidget/AppWidgetHost;[JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetHost;",
            "[J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->newFolderId:J

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->emptyPositionQueue:Ljava/util/Queue;

    .line 25
    iput-object p1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    iput-object p2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mContext:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mAppwidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 28
    iput-object p4, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mScreenIds:[J

    .line 29
    iget-object p1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 30
    iput-object p5, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mTelephoneIconIds:Ljava/util/List;

    return-void
.end method
