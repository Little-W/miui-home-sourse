.class public Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;
.super Lcom/miui/home/launcher/ScreenView;
.source "UninstallDialog.java"

# interfaces
.implements Lcom/miui/home/launcher/Launcher$IconContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/UninstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteIconContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer$_lancet;
    }
.end annotation


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field public mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 444
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 448
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 449
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setAlpha$___twin___(F)V

    return-void
.end method

.method static synthetic access$001(Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setVisibility$___twin___(I)V

    return-void
.end method

.method private setAlpha$___twin___(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setAlpha(F)V

    return-void
.end method

.method private setVisibility$___twin___(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 466
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    .line 467
    div-int/lit8 v0, p1, 0x4

    add-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 468
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onMeasure(II)V

    return-void
.end method

.method public removeShortcutIcon(Lcom/miui/home/launcher/ShortcutIcon;)I
    .locals 3

    .line 454
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 455
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->removeView(Landroid/view/View;)V

    .line 456
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 457
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialog;->access$1100(Lcom/miui/home/launcher/UninstallDialog;)V

    goto :goto_0

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZ)Z

    :goto_0
    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer$_lancet;->com_miui_home_launcher_aop_LogHooker_setScreenViewAlpha(Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;F)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer$_lancet;->com_miui_home_launcher_aop_LogHooker_setScreenViewVisibility(Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;I)V

    return-void
.end method
