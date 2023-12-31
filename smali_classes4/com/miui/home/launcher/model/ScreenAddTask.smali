.class public Lcom/miui/home/launcher/model/ScreenAddTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "ScreenAddTask.java"


# instance fields
.field private final mPosition:I

.field private final mScreenOrder:I

.field private final mScreenType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/model/ScreenAddTask;->mScreenOrder:I

    .line 20
    iput p2, p0, Lcom/miui/home/launcher/model/ScreenAddTask;->mScreenType:I

    .line 21
    iput p3, p0, Lcom/miui/home/launcher/model/ScreenAddTask;->mPosition:I

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 27
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 28
    iget v0, p0, Lcom/miui/home/launcher/model/ScreenAddTask;->mScreenOrder:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screenOrder"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    iget v0, p0, Lcom/miui/home/launcher/model/ScreenAddTask;->mScreenType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screenType"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    sget-object v0, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    move-wide p1, v0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    :goto_0
    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 33
    iget v0, p0, Lcom/miui/home/launcher/model/ScreenAddTask;->mScreenType:I

    iget v1, p0, Lcom/miui/home/launcher/model/ScreenAddTask;->mPosition:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/model/ScreenAddTask;->bindScreenAdded(JII)V

    :cond_1
    return-void
.end method
