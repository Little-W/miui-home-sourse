.class Lcom/miui/home/launcher/LauncherMenu$1;
.super Ljava/lang/Object;
.source "LauncherMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherMenu;
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

    .line 63
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenu;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$000(Lcom/miui/home/launcher/LauncherMenu;)[Ljava/lang/CharSequence;

    move-result-object p1

    long-to-int p2, p4

    aget-object p1, p1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 71
    invoke-static {p1, p2}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 74
    aget p3, p2, p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p4

    const/4 p5, 0x1

    if-ne p3, p4, :cond_2

    aget p3, p2, p5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p4

    if-ne p3, p4, :cond_2

    return-void

    .line 77
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p3}, Lcom/miui/home/launcher/LauncherMenu;->access$100(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;

    move-result-object p3

    aget p1, p2, p1

    aget p2, p2, p5

    invoke-static {p3, p1, p2}, Lcom/miui/home/launcher/DeviceConfig;->setScreenCells(Landroid/content/Context;II)Z

    .line 78
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherMenu;->access$100(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onScreenCellsChanged()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
