.class public Lcom/miui/home/launcher/model/ScreenRemoveTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "ScreenRemoveTask.java"


# instance fields
.field private final mScreenId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/miui/home/launcher/model/ScreenRemoveTask;->mScreenId:J

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 3

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 22
    sget-object p2, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/model/ScreenRemoveTask;->mScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    const-string p1, "Launcher.Screen"

    const-string p2, "delete screen from DB fail"

    .line 25
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 p1, -0x8000000000000000L

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/model/ScreenRemoveTask;->bindScreenRemoved(J)V

    goto :goto_0

    .line 28
    :cond_0
    iget-wide p1, p0, Lcom/miui/home/launcher/model/ScreenRemoveTask;->mScreenId:J

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/model/ScreenRemoveTask;->bindScreenRemoved(J)V

    :goto_0
    return-void
.end method
