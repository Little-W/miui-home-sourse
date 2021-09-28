.class Lcom/miui/home/launcher/LauncherMenu$8;
.super Ljava/lang/Object;
.source "LauncherMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherMenu;->initCellSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherMenu;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherMenu;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$8;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu$8;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenu;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$8;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$000(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return-void

    .line 164
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 165
    new-array v1, v0, [I

    .line 166
    invoke-static {p1, v1}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 169
    aget v2, v1, p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    aget v2, v1, v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v3

    if-ne v2, v3, :cond_3

    return-void

    .line 172
    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu$8;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherMenu;->access$000(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    aget v3, v1, p1

    aget v1, v1, v4

    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/DeviceConfig;->setScreenCells(Landroid/content/Context;II)Z

    .line 173
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu$8;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherMenu;->access$000(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->onScreenCellsChanged()V

    .line 174
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu$8;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    new-array v0, v0, [Landroid/view/View;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherMenu;->access$400(Lcom/miui/home/launcher/LauncherMenu;)Landroid/widget/Button;

    move-result-object v2

    aput-object v2, v0, p1

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$8;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$500(Lcom/miui/home/launcher/LauncherMenu;)Landroid/widget/Button;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherMenu;->access$600(Lcom/miui/home/launcher/LauncherMenu;[Landroid/view/View;)V

    return-void
.end method
