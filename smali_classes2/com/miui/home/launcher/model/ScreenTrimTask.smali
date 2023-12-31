.class public Lcom/miui/home/launcher/model/ScreenTrimTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "ScreenTrimTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/miui/home/launcher/model/ScreenTrimTask;->bindScreenTrim()V

    return-void
.end method
