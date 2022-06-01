.class Lcom/miui/home/launcher/Workspace$9;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->deleteLastCellLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 1974
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollAnimEnd()V
    .locals 1

    .line 1977
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    .line 1978
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->removeScrollToNextScreenAnimListener(Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;)V

    return-void
.end method
