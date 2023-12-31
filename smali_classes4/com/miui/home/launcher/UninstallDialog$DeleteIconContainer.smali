.class public Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;
.super Lcom/miui/home/launcher/ScreenView;
.source "UninstallDialog.java"

# interfaces
.implements Lcom/miui/home/launcher/IconContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/UninstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteIconContainer"
.end annotation


# instance fields
.field public mFixedHeight:I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field public mSpanX:I

.field public mSpanY:I

.field public mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 485
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 489
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 480
    iput p2, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanX:I

    .line 481
    iput p2, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanY:I

    .line 490
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 492
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706f5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mFixedHeight:I

    return-void
.end method


# virtual methods
.method public getDisplayHeight()I
    .locals 3

    .line 520
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    .line 521
    iget v1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanY:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 522
    iget p0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mFixedHeight:I

    return p0

    :cond_0
    mul-int/2addr v0, v1

    return v0
.end method

.method public getDisplayWidth()I
    .locals 3

    .line 512
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    .line 513
    iget v1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanY:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 516
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanX:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 506
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getDisplayWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 507
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getDisplayHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 508
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onMeasure(II)V

    return-void
.end method

.method public removeItemIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 2

    .line 497
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->removeView(Landroid/view/View;)V

    .line 498
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 499
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {p0}, Lcom/miui/home/launcher/UninstallDialog;->access$1000(Lcom/miui/home/launcher/UninstallDialog;)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;)Z

    :goto_0
    return-void
.end method

.method public updateSpanXY(II)V
    .locals 1

    .line 528
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanY:I

    if-eq p2, v0, :cond_1

    .line 529
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanX:I

    .line 530
    iput p2, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanY:I

    :cond_1
    return-void
.end method
