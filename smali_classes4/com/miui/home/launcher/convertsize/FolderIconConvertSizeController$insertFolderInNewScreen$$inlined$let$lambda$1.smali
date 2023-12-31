.class final Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "FolderIconConvertSizeController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->insertFolderInNewScreen(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $info$inlined:Lcom/miui/home/launcher/FolderInfo;

.field final synthetic $it:Lcom/miui/home/launcher/Workspace;

.field final synthetic $newPositionInfo$inlined:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;->$it:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;->$newPositionInfo$inlined:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;->$info$inlined:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;->$it:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->updateCurrentIndex(I)V

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;->$newPositionInfo$inlined:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->setCellX(I)V

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;->$newPositionInfo$inlined:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->setCellY(I)V

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;->$newPositionInfo$inlined:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;->$it:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->setScreenId(J)V

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Application.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getCallback()Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;->$info$inlined:Lcom/miui/home/launcher/FolderInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;->$newPositionInfo$inlined:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    invoke-interface {v0, v1, p0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindFolderResize(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;)V

    :cond_0
    return-void
.end method
