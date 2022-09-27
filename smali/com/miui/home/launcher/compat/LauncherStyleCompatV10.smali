.class Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;
.super Lcom/miui/home/launcher/compat/LauncherStyleCompat;
.source "LauncherStyleCompatV10.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getLauncherDialogPaddingBottom()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLauncherDialogPaddingTop()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLauncherMenuItemMinHeight()I
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getLauncherMenuItemTitleSize()I
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
